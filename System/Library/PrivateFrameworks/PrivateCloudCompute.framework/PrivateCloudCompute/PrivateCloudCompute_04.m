unint64_t sub_1CEF88B0C()
{
  result = qword_1EC4AA630;
  if (!qword_1EC4AA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA630);
  }

  return result;
}

unint64_t sub_1CEF88B64()
{
  result = qword_1EC4AA638;
  if (!qword_1EC4AA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA638);
  }

  return result;
}

unint64_t sub_1CEF88BBC()
{
  result = qword_1EC4AA640;
  if (!qword_1EC4AA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA640);
  }

  return result;
}

uint64_t sub_1CEF88C10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB62E0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CEFB6300 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573756163 && a2 == 0xE500000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEA00000000007265 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746954727474 && a2 == 0xE800000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7263736544727474 && a2 == 0xEE006E6F69747069 || (sub_1CEFA8950() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F706D6F43727474 && a2 == 0xEE004449746E656ELL || (sub_1CEFA8950() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CEFB6320 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CEFB6340 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 7827310 && a2 == 0xE300000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1CEF88FF0()
{
  result = qword_1EC4AA648;
  if (!qword_1EC4AA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA648);
  }

  return result;
}

unint64_t sub_1CEF89044()
{
  result = qword_1EC4AA650;
  if (!qword_1EC4AA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA650);
  }

  return result;
}

unint64_t sub_1CEF89098()
{
  result = qword_1EC4AA658;
  if (!qword_1EC4AA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA658);
  }

  return result;
}

_BYTE *sub_1CEF890EC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t TrustedRequestEndpointMetadata.nodeState.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TrustedRequestEndpointMetadata.nodeIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TrustedRequestEndpointMetadata.cloudOSVersion.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t TrustedRequestEndpointMetadata.cloudOSReleaseType.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t TrustedRequestEndpointMetadata.maybeValidatedCellID.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t TrustedRequestEndpointMetadata.ensembleID.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t TrustedRequestEndpointMetadata.proxiedBy.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

__n128 TrustedRequestEndpointMetadata.init(nodeState:nodeIdentifier:ohttpContext:hasReceivedSummary:dataReceived:cloudOSVersion:cloudOSReleaseType:maybeValidatedCellID:ensembleID:isFromCache:servedRequest:proxiedBy:requestExecutionLogFinalized:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  *(a9 + 121) = a15;
  *(a9 + 128) = a16;
  *(a9 + 136) = a17;
  *(a9 + 144) = a18;
  return result;
}

unint64_t sub_1CEF89344(char a1)
{
  result = 0x7461745365646F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6E65644965646F6ELL;
      break;
    case 2:
      result = 0x6E6F43707474686FLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6563655261746164;
      break;
    case 5:
      result = 0x56534F64756F6C63;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x656C626D65736E65;
      break;
    case 9:
      result = 0x61436D6F72467369;
      break;
    case 10:
      result = 0x6552646576726573;
      break;
    case 11:
      result = 0x42646569786F7270;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CEF894FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF903D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF89530(uint64_t a1)
{
  v2 = sub_1CEF89944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF8956C(uint64_t a1)
{
  v2 = sub_1CEF89944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedRequestEndpointMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA660, &qword_1CEFB2AF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v36 = v1[3];
  v37 = v10;
  v35 = v1[4];
  v34 = *(v1 + 40);
  v11 = v1[6];
  v32 = v1[7];
  v33 = v11;
  v12 = v1[8];
  v30 = v1[9];
  v31 = v12;
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[13];
  v28 = v1[12];
  v29 = v13;
  v25 = v15;
  v26 = v1[14];
  v27 = v14;
  LODWORD(v13) = *(v1 + 120);
  v23 = *(v1 + 121);
  v24 = v13;
  v16 = v1[17];
  v21 = v1[16];
  v22 = v16;
  v20[3] = *(v1 + 144);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF89944();
  sub_1CEFA8A60();
  v51 = 0;
  v18 = v38;
  sub_1CEFA8880();
  if (!v18)
  {
    v50 = 1;
    sub_1CEFA8880();
    v49 = 2;
    sub_1CEFA88F0();
    v38 = v4;
    v48 = 3;
    sub_1CEFA8890();
    v47 = 4;
    sub_1CEFA88F0();
    v46 = 5;
    sub_1CEFA8830();
    v45 = 6;
    sub_1CEFA8830();
    v44 = 7;
    sub_1CEFA8830();
    v43 = 8;
    sub_1CEFA8830();
    v42 = 9;
    sub_1CEFA8890();
    v41 = 10;
    sub_1CEFA8890();
    v40 = 11;
    sub_1CEFA8830();
    v39 = 12;
    sub_1CEFA8840();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CEF89944()
{
  result = qword_1EC4AA668;
  if (!qword_1EC4AA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA668);
  }

  return result;
}

uint64_t TrustedRequestEndpointMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA670, &unk_1CEFB2AF8);
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v29 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF89944();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  LOBYTE(v58[0]) = 0;
  v43 = sub_1CEFA8780();
  v46 = v11;
  LOBYTE(v58[0]) = 1;
  v12 = sub_1CEFA8780();
  v44 = v13;
  v39 = v12;
  LOBYTE(v58[0]) = 2;
  v38 = sub_1CEFA87F0();
  LOBYTE(v58[0]) = 3;
  v74 = sub_1CEFA8790();
  LOBYTE(v58[0]) = 4;
  v37 = sub_1CEFA87F0();
  LOBYTE(v58[0]) = 5;
  v36 = sub_1CEFA8730();
  v42 = v14;
  LOBYTE(v58[0]) = 6;
  v15 = sub_1CEFA8730();
  v41 = v16;
  LOBYTE(v58[0]) = 7;
  v35 = sub_1CEFA8730();
  v40 = v17;
  LOBYTE(v58[0]) = 8;
  v34 = sub_1CEFA8730();
  v45 = 0;
  v33 = v18;
  LOBYTE(v58[0]) = 9;
  LODWORD(v45) = sub_1CEFA8790();
  LOBYTE(v58[0]) = 10;
  v32 = sub_1CEFA8790();
  LOBYTE(v58[0]) = 11;
  v31 = sub_1CEFA8730();
  v20 = v19;
  v75 = 12;
  v30 = sub_1CEFA8740();
  v21 = v74 & 1;
  LODWORD(v45) = v45 & 1;
  v74 = v32 & 1;
  (*(v10 + 8))(v8, v47);
  v22 = v44;
  *&v48 = v43;
  *(&v48 + 1) = v46;
  *&v49 = v39;
  *(&v49 + 1) = v44;
  *&v50 = v38;
  BYTE8(v50) = v21;
  *&v51 = v37;
  *(&v51 + 1) = v36;
  *&v52 = v42;
  *(&v52 + 1) = v15;
  v29 = v15;
  *&v53 = v41;
  *(&v53 + 1) = v35;
  *&v54 = v40;
  *(&v54 + 1) = v34;
  *&v55 = v33;
  BYTE8(v55) = v45;
  LOBYTE(v10) = v74;
  BYTE9(v55) = v74;
  *&v56 = v31;
  *(&v56 + 1) = v20;
  LOBYTE(v15) = v30;
  v57 = v30;
  *(a2 + 144) = v30;
  v23 = v53;
  *(a2 + 64) = v52;
  *(a2 + 80) = v23;
  v24 = v51;
  *(a2 + 32) = v50;
  *(a2 + 48) = v24;
  v25 = v56;
  v26 = v54;
  *(a2 + 112) = v55;
  *(a2 + 128) = v25;
  *(a2 + 96) = v26;
  v27 = v49;
  *a2 = v48;
  *(a2 + 16) = v27;
  sub_1CEF89FF4(&v48, v58);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v58[0] = v43;
  v58[1] = v46;
  v58[2] = v39;
  v58[3] = v22;
  v58[4] = v38;
  v59 = v21;
  v60 = v37;
  v61 = v36;
  v62 = v42;
  v63 = v29;
  v64 = v41;
  v65 = v35;
  v66 = v40;
  v67 = v34;
  v68 = v33;
  v69 = v45;
  v70 = v10;
  v71 = v31;
  v72 = v20;
  v73 = v15;
  return sub_1CEF8A02C(v58);
}

uint64_t TC2TrustedRequestMetadata.clientRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CEFA8070();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TC2TrustedRequestMetadata.environment.getter()
{
  v1 = (v0 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TC2TrustedRequestMetadata.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TC2TrustedRequestMetadata(0) + 28);
  v4 = sub_1CEFA8030();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TC2TrustedRequestMetadata.featureIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TC2TrustedRequestMetadata.sessionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 40);

  return sub_1CEF8A284(v3, a1);
}

uint64_t sub_1CEF8A284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TC2TrustedRequestMetadata.qos.getter()
{
  v1 = (v0 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TC2TrustedRequestMetadata.workloadParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 52));
}

uint64_t TC2TrustedRequestMetadata.state.getter()
{
  v1 = (v0 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TC2TrustedRequestMetadata.requestHeaders.getter()
{
  v1 = *(v0 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 64));
}

uint64_t TC2TrustedRequestMetadata.responseState.getter()
{
  v1 = (v0 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TC2TrustedRequestMetadata.responseCode.getter()
{
  v1 = (v0 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 72));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TC2TrustedRequestMetadata.ropesVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TC2TrustedRequestMetadata.endpoints.getter()
{
  v1 = *(v0 + *(type metadata accessor for TC2TrustedRequestMetadata(0) + 80));
}

uint64_t TC2TrustedRequestMetadata.init(clientRequestID:serverRequestID:environment:creationDate:bundleIdentifier:featureIdentifier:sessionIdentifier:qos:parameters:state:payloadTransportState:requestHeaders:responseState:responseCode:ropesVersion:endpoints:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v48 = a14[1];
  v49 = *a14;
  v50 = a14[2];
  v31 = sub_1CEFA8070();
  v32 = *(*(v31 - 8) + 32);
  v32(a9, a1, v31);
  v33 = type metadata accessor for TC2TrustedRequestMetadata(0);
  v32(a9 + v33[5], a2, v31);
  v34 = (a9 + v33[6]);
  *v34 = a3;
  v34[1] = a4;
  v35 = v33[7];
  v36 = sub_1CEFA8030();
  (*(*(v36 - 8) + 32))(a9 + v35, a5, v36);
  v37 = (a9 + v33[8]);
  *v37 = a6;
  v37[1] = a7;
  v38 = (a9 + v33[9]);
  *v38 = a8;
  v38[1] = a10;
  result = sub_1CEF8A758(a11, a9 + v33[10]);
  v40 = (a9 + v33[11]);
  *v40 = a12;
  v40[1] = a13;
  v41 = (a9 + v33[12]);
  *v41 = v49;
  v41[1] = v48;
  *(a9 + v33[13]) = v50;
  v42 = (a9 + v33[14]);
  *v42 = a15;
  v42[1] = a16;
  v43 = (a9 + v33[15]);
  *v43 = a17;
  v43[1] = a18;
  *(a9 + v33[16]) = a19;
  v44 = (a9 + v33[17]);
  *v44 = a20;
  v44[1] = a21;
  v45 = a9 + v33[18];
  *v45 = a22;
  *(v45 + 8) = a23 & 1;
  v46 = (a9 + v33[19]);
  *v46 = a24;
  v46[1] = a25;
  *(a9 + v33[20]) = a26;
  return result;
}

uint64_t sub_1CEF8A758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CEF8A7C8(char a1)
{
  result = 0x6552746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x6552726576726573;
      break;
    case 2:
      result = 0x6D6E6F7269766E65;
      break;
    case 3:
      result = 0x6E6F697461657263;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 7565169;
      break;
    case 8:
      result = 0x64616F6C6B726F77;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6574617473;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x4874736575716572;
      break;
    case 13:
    case 14:
      result = 0x65736E6F70736572;
      break;
    case 15:
      result = 0x7265567365706F72;
      break;
    case 16:
      result = 0x746E696F70646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CEF8A9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF90820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF8AA08(uint64_t a1)
{
  v2 = sub_1CEF8B028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF8AA44(uint64_t a1)
{
  v2 = sub_1CEF8B028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TC2TrustedRequestMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA678, &unk_1CEFB2B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8B028();
  sub_1CEFA8A60();
  LOBYTE(v47) = 0;
  sub_1CEFA8070();
  sub_1CEF8B07C(&qword_1EDE380D0, MEMORY[0x1E69695A8]);
  sub_1CEFA88D0();
  if (!v2)
  {
    v11 = type metadata accessor for TC2TrustedRequestMetadata(0);
    v12 = v11[5];
    LOBYTE(v47) = 1;
    sub_1CEFA88D0();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v47) = 2;
    sub_1CEFA8880();
    v45 = v11[7];
    LOBYTE(v47) = 3;
    sub_1CEFA8030();
    sub_1CEF8B07C(&qword_1EDE380D8, MEMORY[0x1E6969530]);
    sub_1CEFA88D0();
    v16 = (v3 + v11[8]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v47) = 4;
    sub_1CEFA8880();
    v19 = (v3 + v11[9]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v47) = 5;
    sub_1CEFA8830();
    v22 = v11[10];
    LOBYTE(v47) = 6;
    sub_1CEFA8870();
    v23 = (v3 + v11[11]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v47) = 7;
    sub_1CEFA8880();
    v26 = (v3 + v11[12]);
    v27 = *v26;
    v28 = v26[1];
    LOBYTE(v47) = 8;
    sub_1CEFA8880();
    v47 = *(v3 + v11[13]);
    v46 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
    sub_1CEF4A21C(&qword_1EDE38108);
    sub_1CEFA88D0();
    v29 = (v3 + v11[14]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v47) = 10;
    sub_1CEFA8880();
    v32 = (v3 + v11[15]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v47) = 11;
    sub_1CEFA8880();
    v47 = *(v3 + v11[16]);
    v46 = 12;
    sub_1CEFA88D0();
    v35 = (v3 + v11[17]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v47) = 13;
    sub_1CEFA8880();
    v38 = (v3 + v11[18]);
    v39 = *v38;
    v40 = *(v38 + 8);
    LOBYTE(v47) = 14;
    sub_1CEFA8860();
    v41 = (v3 + v11[19]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v47) = 15;
    sub_1CEFA8830();
    v47 = *(v3 + v11[20]);
    v46 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA688, &qword_1CEFB2B18);
    sub_1CEF8C02C(&qword_1EC4AA690, sub_1CEF8B0C4);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1CEF8B028()
{
  result = qword_1EC4AA680;
  if (!qword_1EC4AA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA680);
  }

  return result;
}

uint64_t sub_1CEF8B07C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CEF8B0C4()
{
  result = qword_1EC4AA698;
  if (!qword_1EC4AA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA698);
  }

  return result;
}

uint64_t TC2TrustedRequestMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v94 = &v88[-v5];
  v6 = sub_1CEFA8030();
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v88[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1CEFA8070();
  v98 = *(v9 - 8);
  v10 = *(v98 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v88[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v88[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6A0, &qword_1CEFB2B20);
  v100 = *(v15 - 8);
  v101 = v15;
  v16 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v88[-v17];
  v19 = type metadata accessor for TC2TrustedRequestMetadata(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v88[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8B028();
  v102 = v18;
  v24 = v103;
  sub_1CEFA8A50();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v91 = v19;
  v92 = a1;
  v103 = v22;
  LOBYTE(v105) = 0;
  sub_1CEF8B07C(&qword_1EC4A9030, MEMORY[0x1E69695A8]);
  v25 = v99;
  sub_1CEFA87D0();
  v27 = *(v98 + 32);
  v27(v103, v25, v9);
  LOBYTE(v105) = 1;
  sub_1CEFA87D0();
  v28 = v91;
  v27(&v103[v91[5]], v13, v9);
  LOBYTE(v105) = 2;
  v29 = sub_1CEFA8780();
  v30 = v28;
  v31 = &v103[v28[6]];
  *v31 = v29;
  v31[1] = v32;
  LOBYTE(v105) = 3;
  sub_1CEF8B07C(&qword_1EC4A8FE8, MEMORY[0x1E6969530]);
  v33 = v95;
  v34 = v97;
  sub_1CEFA87D0();
  (*(v96 + 32))(&v103[v30[7]], v33, v34);
  LOBYTE(v105) = 4;
  v35 = sub_1CEFA8780();
  v36 = &v103[v30[8]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v105) = 5;
  v38 = sub_1CEFA8730();
  v39 = &v103[v30[9]];
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v105) = 6;
  v41 = v94;
  sub_1CEFA8770();
  sub_1CEF8A758(v41, &v103[v30[10]]);
  LOBYTE(v105) = 7;
  v42 = sub_1CEFA8780();
  v43 = &v103[v30[11]];
  *v43 = v42;
  v43[1] = v44;
  LOBYTE(v105) = 8;
  v45 = sub_1CEFA8780();
  v99 = 0;
  v47 = &v103[v91[12]];
  *v47 = v45;
  v47[1] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
  v104 = 9;
  sub_1CEF4A21C(&qword_1EDE379D0);
  v48 = v99;
  sub_1CEFA87D0();
  v99 = v48;
  if (v48)
  {
    (*(v100 + 8))(v102, v101);
    LODWORD(v93) = 0;
    LODWORD(v94) = 0;
    LODWORD(v95) = 0;
    LODWORD(v100) = 0;
    LODWORD(v101) = 0;
    LODWORD(v102) = 0;
    v89 = 0x100000001;
    v90 = 1;
  }

  else
  {
    *&v103[v91[13]] = v105;
    LOBYTE(v105) = 10;
    v49 = v99;
    v50 = sub_1CEFA8780();
    v99 = v49;
    if (v49)
    {
      (*(v100 + 8))(v102, v101);
      LODWORD(v94) = 0;
      LODWORD(v95) = 0;
      LODWORD(v100) = 0;
      LODWORD(v101) = 0;
      LODWORD(v102) = 0;
      v89 = 0x100000001;
      v90 = 1;
      LODWORD(v93) = 1;
    }

    else
    {
      v52 = &v103[v91[14]];
      *v52 = v50;
      v52[1] = v51;
      LOBYTE(v105) = 11;
      v53 = v99;
      v54 = sub_1CEFA8780();
      v99 = v53;
      if (v53)
      {
        (*(v100 + 8))(v102, v101);
        LODWORD(v95) = 0;
        LODWORD(v100) = 0;
        LODWORD(v101) = 0;
        LODWORD(v102) = 0;
        v89 = 0x100000001;
        v90 = 1;
        LODWORD(v93) = 1;
        LODWORD(v94) = 1;
      }

      else
      {
        v56 = &v103[v91[15]];
        *v56 = v54;
        v56[1] = v55;
        v104 = 12;
        v57 = v99;
        sub_1CEFA87D0();
        v99 = v57;
        if (v57)
        {
          (*(v100 + 8))(v102, v101);
          LODWORD(v100) = 0;
          LODWORD(v101) = 0;
          LODWORD(v102) = 0;
          v89 = 0x100000001;
          v90 = 1;
          LODWORD(v93) = 1;
          LODWORD(v94) = 1;
          LODWORD(v95) = 1;
        }

        else
        {
          *&v103[v91[16]] = v105;
          LOBYTE(v105) = 13;
          v58 = v99;
          v59 = sub_1CEFA8780();
          v99 = v58;
          if (v58)
          {
            (*(v100 + 8))(v102, v101);
            LODWORD(v101) = 0;
            LODWORD(v102) = 0;
            v89 = 0x100000001;
            v90 = 1;
            LODWORD(v93) = 1;
            LODWORD(v94) = 1;
            LODWORD(v95) = 1;
            LODWORD(v100) = 1;
          }

          else
          {
            v61 = &v103[v91[17]];
            *v61 = v59;
            v61[1] = v60;
            LOBYTE(v105) = 14;
            v62 = v99;
            v63 = sub_1CEFA8760();
            v99 = v62;
            if (v62 || (v65 = &v103[v91[18]], *v65 = v63, v65[8] = v64 & 1, LOBYTE(v105) = 15, v66 = v99, v67 = sub_1CEFA8730(), (v99 = v66) != 0))
            {
              (*(v100 + 8))(v102, v101);
              LODWORD(v102) = 0;
              v89 = 0x100000001;
              v90 = 1;
              LODWORD(v93) = 1;
              LODWORD(v94) = 1;
              LODWORD(v95) = 1;
              LODWORD(v100) = 1;
              LODWORD(v101) = 1;
            }

            else
            {
              v85 = &v103[v91[19]];
              *v85 = v67;
              v85[1] = v68;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA688, &qword_1CEFB2B18);
              v104 = 16;
              sub_1CEF8C02C(&qword_1EC4AA6A8, sub_1CEF8C0A4);
              v86 = v99;
              sub_1CEFA87D0();
              v99 = v86;
              if (!v86)
              {
                (*(v100 + 8))(v102, v101);
                v87 = v103;
                *&v103[v91[20]] = v105;
                sub_1CEF8F53C(v87, v93, type metadata accessor for TC2TrustedRequestMetadata);
                __swift_destroy_boxed_opaque_existential_0(v92);
                return sub_1CEF8F5A4(v87, type metadata accessor for TC2TrustedRequestMetadata);
              }

              (*(v100 + 8))(v102, v101);
              v89 = 0x100000001;
              v90 = 1;
              LODWORD(v93) = 1;
              LODWORD(v94) = 1;
              LODWORD(v95) = 1;
              LODWORD(v100) = 1;
              LODWORD(v101) = 1;
              LODWORD(v102) = 1;
            }
          }
        }
      }
    }
  }

  v69 = v98;
  __swift_destroy_boxed_opaque_existential_0(v92);
  v70 = *(v69 + 8);
  v71 = v103;
  v70(v103, v9);
  v70(&v71[v91[5]], v9);
  v72 = v91;
  v73 = v103;
  v74 = *&v103[v91[6] + 8];

  (*(v96 + 8))(&v73[v72[7]], v97);
  v75 = *&v73[v72[8] + 8];

  v79 = *&v73[v72[9] + 8];

  if (v89)
  {
    result = sub_1CEF43944(&v73[v72[10]]);
    if ((v89 & 0x100000000) != 0)
    {
      goto LABEL_30;
    }

LABEL_20:
    if (!v90)
    {
      goto LABEL_31;
    }

LABEL_21:
    v76 = *&v73[v72[12] + 8];

    if (v93)
    {
      goto LABEL_32;
    }

LABEL_22:
    if (!v94)
    {
      goto LABEL_33;
    }

LABEL_23:
    v77 = *&v73[v72[14] + 8];

    if (v95)
    {
      goto LABEL_34;
    }

LABEL_24:
    if (!v100)
    {
      goto LABEL_35;
    }

LABEL_25:
    v78 = *&v73[v72[16]];

    if (v101)
    {
      goto LABEL_36;
    }

LABEL_26:
    if (v102)
    {
      goto LABEL_37;
    }

    return result;
  }

  if (!HIDWORD(v89))
  {
    goto LABEL_20;
  }

LABEL_30:
  v80 = *&v73[v72[11] + 8];

  if (v90)
  {
    goto LABEL_21;
  }

LABEL_31:
  if (!v93)
  {
    goto LABEL_22;
  }

LABEL_32:
  v81 = *&v73[v72[13]];

  if (v94)
  {
    goto LABEL_23;
  }

LABEL_33:
  if (!v95)
  {
    goto LABEL_24;
  }

LABEL_34:
  v82 = *&v73[v72[15] + 8];

  if (v100)
  {
    goto LABEL_25;
  }

LABEL_35:
  if (!v101)
  {
    goto LABEL_26;
  }

LABEL_36:
  v83 = *&v73[v72[17] + 8];

  if (v102)
  {
LABEL_37:
    v84 = *&v73[v72[19] + 8];
  }

  return result;
}

uint64_t sub_1CEF8C02C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA688, &qword_1CEFB2B18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEF8C0A4()
{
  result = qword_1EC4AA6B0;
  if (!qword_1EC4AA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA6B0);
  }

  return result;
}

uint64_t sub_1CEF8C150(uint64_t a1)
{
  v2 = sub_1CEF8C374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF8C18C(uint64_t a1)
{
  v2 = sub_1CEF8C374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TC2TrustedRequestFactoryMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6B8, &qword_1CEFB2B28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8C374();

  sub_1CEFA8A60();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6C8, &qword_1CEFB2B30);
  sub_1CEF8C580(&qword_1EC4AA6D0, &qword_1EC4AA6D8);
  sub_1CEFA88D0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CEF8C374()
{
  result = qword_1EC4AA6C0;
  if (!qword_1EC4AA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA6C0);
  }

  return result;
}

uint64_t TC2TrustedRequestFactoryMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6E0, &qword_1CEFB2B38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8C374();
  sub_1CEFA8A50();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6C8, &qword_1CEFB2B30);
    sub_1CEF8C580(&qword_1EC4AA6E8, &qword_1EC4AA6F0);
    sub_1CEFA87D0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1CEF8C580(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA6C8, &qword_1CEFB2B30);
    sub_1CEF8B07C(a2, type metadata accessor for TC2TrustedRequestMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEF8C64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7374736575716572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF8C6D4(uint64_t a1)
{
  v2 = sub_1CEF8C8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF8C710(uint64_t a1)
{
  v2 = sub_1CEF8C8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TC2TrustedRequestFactoriesMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6F8, &qword_1CEFB2B40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8C8F0();

  sub_1CEFA8A60();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA708, &qword_1CEFB2B48);
  sub_1CEF8C944(&qword_1EC4AA710, sub_1CEF8C9BC);
  sub_1CEFA88D0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CEF8C8F0()
{
  result = qword_1EC4AA700;
  if (!qword_1EC4AA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA700);
  }

  return result;
}

uint64_t sub_1CEF8C944(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA708, &qword_1CEFB2B48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEF8C9BC()
{
  result = qword_1EC4AA718;
  if (!qword_1EC4AA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA718);
  }

  return result;
}

uint64_t TC2TrustedRequestFactoriesMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA720, &qword_1CEFB2B50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8C8F0();
  sub_1CEFA8A50();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA708, &qword_1CEFB2B48);
    sub_1CEF8C944(&qword_1EC4AA728, sub_1CEF8CBC0);
    sub_1CEFA87D0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1CEF8CBC0()
{
  result = qword_1EC4AA730;
  if (!qword_1EC4AA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA730);
  }

  return result;
}

PrivateCloudCompute::RequestLogEntryType_optional __swiftcall RequestLogEntryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CEFA8700();

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

  *v2 = v5;
  return result;
}

uint64_t RequestLogEntryType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6863746566657270;
  }

  else
  {
    result = 0x5264657473757274;
  }

  *v0;
  return result;
}

uint64_t sub_1CEF8CCFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6863746566657270;
  }

  else
  {
    v4 = 0x5264657473757274;
  }

  if (v3)
  {
    v5 = 0xEE00747365757165;
  }

  else
  {
    v5 = 0xEF74736575716552;
  }

  if (*a2)
  {
    v6 = 0x6863746566657270;
  }

  else
  {
    v6 = 0x5264657473757274;
  }

  if (*a2)
  {
    v7 = 0xEF74736575716552;
  }

  else
  {
    v7 = 0xEE00747365757165;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();
  }

  return v9 & 1;
}

uint64_t sub_1CEF8CDBC()
{
  v1 = *v0;
  sub_1CEFA8A00();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEF8CE58()
{
  *v0;
  sub_1CEFA8340();
}

uint64_t sub_1CEF8CEE0()
{
  v1 = *v0;
  sub_1CEFA8A00();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEF8CF78@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CEFA8700();

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

  *a2 = v7;
  return result;
}

void sub_1CEF8CFD8(uint64_t *a1@<X8>)
{
  v2 = 0x5264657473757274;
  if (*v1)
  {
    v2 = 0x6863746566657270;
  }

  v3 = 0xEE00747365757165;
  if (*v1)
  {
    v3 = 0xEF74736575716552;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1CEF8D0E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D8, &unk_1CEFB3600);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v36 = &v29 - v2;
  v32 = sub_1CEFA80A0();
  v35 = *(v32 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CEFA7FD0();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CEFA7FB0();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CEFA7F90();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CEFA7FA0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CEFA7FE0();
  __swift_allocate_value_buffer(v22, qword_1EDE3A430);
  v23 = v32;
  __swift_project_value_buffer(v22, qword_1EDE3A430);
  v24 = v17;
  v25 = v30;
  (*(v18 + 104))(v21, *MEMORY[0x1E6969360], v24);
  (*(v13 + 104))(v16, *MEMORY[0x1E6969358], v12);
  v26 = v35;
  (*(v8 + 104))(v11, *MEMORY[0x1E6969370], v31);
  (*(v33 + 104))(v25, *MEMORY[0x1E6969380], v34);
  v27 = v36;
  sub_1CEFA8080();
  result = (*(v26 + 48))(v27, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v26 + 32))(v29, v27, v23);
    return sub_1CEFA7FC0();
  }

  return result;
}

uint64_t sub_1CEF8D53C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1CEFA8070();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TrustedRequestLogEntry.serverRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TrustedRequestLogEntry(0) + 24);
  v4 = sub_1CEFA8070();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrustedRequestLogEntry.environment.getter()
{
  v1 = (v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1CEF8D6B4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t TrustedRequestLogEntry.bundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TrustedRequestLogEntry.featureIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TrustedRequestLogEntry.sessionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TrustedRequestLogEntry(0) + 44);

  return sub_1CEF8A284(v3, a1);
}

uint64_t sub_1CEF8D7D8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t TrustedRequestLogEntry.workloadName.getter()
{
  v1 = (v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TrustedRequestLogEntry.workloadParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 56));
}

uint64_t sub_1CEF8D8AC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t TrustedRequestLogEntry.payloadTransportState.getter()
{
  v1 = (v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TrustedRequestLogEntry.requestHeaders.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 68));
}

uint64_t TrustedRequestLogEntry.responseState.getter()
{
  v1 = (v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TrustedRequestLogEntry.responseCode.getter()
{
  v1 = (v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 76));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TrustedRequestLogEntry.ropesVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TrustedRequestLogEntry.endpoints.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 84));
}

uint64_t TrustedRequestLogEntry.init(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v4 = type metadata accessor for TrustedRequestLogEntry(0);
  v5 = v4[5];
  v6 = sub_1CEFA8070();
  v7 = *(*(v6 - 8) + 16);
  v7(&a2[v5], a1, v6);
  v8 = type metadata accessor for TC2TrustedRequestMetadata(0);
  v7(&a2[v4[6]], a1 + v8[5], v6);
  v9 = (a1 + v8[6]);
  v11 = *v9;
  v10 = v9[1];
  v12 = &a2[v4[7]];
  *v12 = v11;
  v12[1] = v10;
  v13 = v8[7];
  v14 = qword_1EDE37E60;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_1CEFA7FE0();
  __swift_project_value_buffer(v15, qword_1EDE3A430);
  sub_1CEF8B07C(&qword_1EDE380E0, MEMORY[0x1E69693A0]);
  sub_1CEFA8020();
  v16 = &a2[v4[8]];
  *v16 = v54;
  v16[1] = v55;
  v17 = (a1 + v8[8]);
  v18 = *v17;
  v19 = v17[1];
  v20 = &a2[v4[9]];
  *v20 = v18;
  v20[1] = v19;
  v21 = (a1 + v8[9]);
  v22 = *v21;
  v23 = v21[1];
  v24 = &a2[v4[10]];
  *v24 = v22;
  v24[1] = v23;
  sub_1CEF8A284(a1 + v8[10], &a2[v4[11]]);
  v25 = (a1 + v8[11]);
  v26 = *v25;
  v27 = v25[1];
  v28 = &a2[v4[12]];
  *v28 = v26;
  v28[1] = v27;
  v29 = (a1 + v8[12]);
  v30 = *v29;
  v31 = v29[1];
  v32 = &a2[v4[13]];
  *v32 = v30;
  v32[1] = v31;
  *&a2[v4[14]] = *(a1 + v8[13]);
  v33 = (a1 + v8[14]);
  v34 = *v33;
  v35 = v33[1];
  v36 = &a2[v4[15]];
  *v36 = v34;
  v36[1] = v35;
  v37 = (a1 + v8[15]);
  v38 = *v37;
  v39 = v37[1];
  v40 = &a2[v4[16]];
  *v40 = v38;
  v40[1] = v39;
  *&a2[v4[17]] = *(a1 + v8[16]);
  v41 = (a1 + v8[17]);
  v42 = *v41;
  v43 = v41[1];
  v44 = &a2[v4[18]];
  *v44 = v42;
  v44[1] = v43;
  v45 = a1 + v8[18];
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  v47 = &a2[v4[19]];
  *v47 = v46;
  v47[8] = v45;
  v48 = (a1 + v8[19]);
  v50 = *v48;
  v49 = v48[1];
  v51 = &a2[v4[20]];
  *v51 = v50;
  v51[1] = v49;
  v52 = *(a1 + v8[20]);

  result = sub_1CEF8F5A4(a1, type metadata accessor for TC2TrustedRequestMetadata);
  *&a2[v4[21]] = v52;
  return result;
}

uint64_t sub_1CEF8DD7C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      v3 = 0x746E65696C63;
      goto LABEL_9;
    case 2:
      v3 = 0x726576726573;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
      break;
    case 3:
      result = 0x6D6E6F7269766E65;
      break;
    case 4:
      result = 0x6E6F697461657263;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 7565169;
      break;
    case 9:
      result = 0x64616F6C6B726F77;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6574617473;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0x4874736575716572;
      break;
    case 14:
    case 15:
      result = 0x65736E6F70736572;
      break;
    case 16:
      result = 0x7265567365706F72;
      break;
    case 17:
      result = 0x746E696F70646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CEF8DF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF90D8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF8DFC8(uint64_t a1)
{
  v2 = sub_1CEF8E5E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF8E004(uint64_t a1)
{
  v2 = sub_1CEF8E5E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedRequestLogEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA738, &qword_1CEFB2B58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v49 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8E5E0();
  sub_1CEFA8A60();
  LOBYTE(v50) = *v3;
  v51 = 0;
  sub_1CEF8E634();
  sub_1CEFA88D0();
  if (!v2)
  {
    v11 = type metadata accessor for TrustedRequestLogEntry(0);
    v12 = v11[5];
    LOBYTE(v50) = 1;
    sub_1CEFA8070();
    sub_1CEF8B07C(&qword_1EDE380D0, MEMORY[0x1E69695A8]);
    sub_1CEFA88D0();
    v13 = v11[6];
    LOBYTE(v50) = 2;
    sub_1CEFA88D0();
    v14 = &v3[v11[7]];
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v50) = 3;
    sub_1CEFA8880();
    v17 = &v3[v11[8]];
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v50) = 4;
    sub_1CEFA8880();
    v20 = &v3[v11[9]];
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v50) = 5;
    sub_1CEFA8880();
    v23 = &v3[v11[10]];
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v50) = 6;
    sub_1CEFA8830();
    v26 = v11[11];
    LOBYTE(v50) = 7;
    sub_1CEFA8870();
    v27 = &v3[v11[12]];
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v50) = 8;
    sub_1CEFA8880();
    v30 = &v3[v11[13]];
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v50) = 9;
    sub_1CEFA8880();
    v50 = *&v3[v11[14]];
    v51 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
    sub_1CEF4A21C(&qword_1EDE38108);
    sub_1CEFA88D0();
    v33 = &v3[v11[15]];
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v50) = 11;
    sub_1CEFA8880();
    v36 = &v3[v11[16]];
    v37 = *v36;
    v38 = v36[1];
    LOBYTE(v50) = 12;
    sub_1CEFA8880();
    v50 = *&v3[v11[17]];
    v51 = 13;
    sub_1CEFA88D0();
    v39 = &v3[v11[18]];
    v40 = *v39;
    v41 = v39[1];
    LOBYTE(v50) = 14;
    sub_1CEFA8880();
    v42 = &v3[v11[19]];
    v43 = *v42;
    v44 = v42[8];
    LOBYTE(v50) = 15;
    sub_1CEFA8860();
    v45 = &v3[v11[20]];
    v46 = *v45;
    v47 = v45[1];
    LOBYTE(v50) = 16;
    sub_1CEFA8830();
    v50 = *&v3[v11[21]];
    v51 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA688, &qword_1CEFB2B18);
    sub_1CEF8C02C(&qword_1EC4AA690, sub_1CEF8B0C4);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1CEF8E5E0()
{
  result = qword_1EC4AA740;
  if (!qword_1EC4AA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA740);
  }

  return result;
}

unint64_t sub_1CEF8E634()
{
  result = qword_1EDE37E70[0];
  if (!qword_1EDE37E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE37E70);
  }

  return result;
}

uint64_t TrustedRequestLogEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = v68 - v5;
  v6 = sub_1CEFA8070();
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v68 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA748, &qword_1CEFB2B60);
  v75 = *(v77 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v15 = v68 - v14;
  v16 = type metadata accessor for TrustedRequestLogEntry(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1CEF8E5E0();
  v76 = v15;
  v22 = v78;
  sub_1CEFA8A50();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(v79);
  }

  v23 = v12;
  v69 = v10;
  v70 = v16;
  v71 = v6;
  v78 = v19;
  v81 = 0;
  sub_1CEF8F4E8();
  sub_1CEFA87D0();
  v24 = v78;
  *v78 = v80;
  LOBYTE(v80) = 1;
  v25 = sub_1CEF8B07C(&qword_1EC4A9030, MEMORY[0x1E69695A8]);
  v26 = v71;
  sub_1CEFA87D0();
  v27 = v24;
  v28 = *(v74 + 32);
  v29 = v27;
  v28(&v27[v70[5]], v23, v26);
  LOBYTE(v80) = 2;
  v30 = v69;
  sub_1CEFA87D0();
  v68[3] = v25;
  v28(&v29[v70[6]], v30, v26);
  LOBYTE(v80) = 3;
  v68[0] = 0;
  v31 = sub_1CEFA8780();
  v32 = v70;
  v33 = &v29[v70[7]];
  *v33 = v31;
  v33[1] = v34;
  LOBYTE(v80) = 4;
  v35 = sub_1CEFA8780();
  v36 = &v29[v32[8]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v80) = 5;
  v38 = sub_1CEFA8780();
  v39 = &v29[v32[9]];
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v80) = 6;
  v41 = sub_1CEFA8730();
  v42 = &v29[v32[10]];
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v80) = 7;
  v44 = v73;
  sub_1CEFA8770();
  sub_1CEF8A758(v44, &v29[v32[11]]);
  LOBYTE(v80) = 8;
  v45 = sub_1CEFA8780();
  v46 = &v78[v32[12]];
  *v46 = v45;
  v46[1] = v47;
  LOBYTE(v80) = 9;
  v48 = sub_1CEFA8780();
  v49 = &v78[v70[13]];
  *v49 = v48;
  v49[1] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
  v81 = 10;
  sub_1CEF4A21C(&qword_1EDE379D0);
  sub_1CEFA87D0();
  *&v78[v70[14]] = v80;
  LOBYTE(v80) = 11;
  v51 = sub_1CEFA8780();
  v52 = &v78[v70[15]];
  *v52 = v51;
  v52[1] = v53;
  LOBYTE(v80) = 12;
  v54 = sub_1CEFA8780();
  v55 = &v78[v70[16]];
  *v55 = v54;
  v55[1] = v56;
  v81 = 13;
  sub_1CEFA87D0();
  *&v78[v70[17]] = v80;
  LOBYTE(v80) = 14;
  v57 = sub_1CEFA8780();
  v58 = &v78[v70[18]];
  *v58 = v57;
  v58[1] = v59;
  LOBYTE(v80) = 15;
  v60 = sub_1CEFA8760();
  v61 = &v78[v70[19]];
  *v61 = v60;
  v61[8] = v62 & 1;
  LOBYTE(v80) = 16;
  v63 = sub_1CEFA8730();
  v64 = &v78[v70[20]];
  *v64 = v63;
  v64[1] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA688, &qword_1CEFB2B18);
  v81 = 17;
  sub_1CEF8C02C(&qword_1EC4AA6A8, sub_1CEF8C0A4);
  sub_1CEFA87D0();
  (*(v75 + 8))(v76, v77);
  v66 = v78;
  *&v78[v70[21]] = v80;
  sub_1CEF8F53C(v66, v72, type metadata accessor for TrustedRequestLogEntry);
  __swift_destroy_boxed_opaque_existential_0(v79);
  return sub_1CEF8F5A4(v66, type metadata accessor for TrustedRequestLogEntry);
}

unint64_t sub_1CEF8F4E8()
{
  result = qword_1EC4AA750;
  if (!qword_1EC4AA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA750);
  }

  return result;
}

uint64_t sub_1CEF8F53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF8F5A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CEF8F608()
{
  result = qword_1EC4AA758;
  if (!qword_1EC4AA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA758);
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1CEF8F6C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_1CEF8F708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CEF8F7A8()
{
  sub_1CEFA8070();
  if (v0 <= 0x3F)
  {
    v1 = MEMORY[0x1E69E6158];
    sub_1CEFA8030();
    if (v2 <= 0x3F)
    {
      sub_1CEF82314(319, qword_1EDE385E8, v1, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1CEF8F940();
        if (v4 <= 0x3F)
        {
          sub_1CEF8F998();
          if (v5 <= 0x3F)
          {
            sub_1CEF82314(319, &qword_1EDE37998, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1CEF82314(319, &qword_1EC4AA760, &type metadata for TrustedRequestEndpointMetadata, MEMORY[0x1E69E62F8]);
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

void sub_1CEF8F940()
{
  if (!qword_1EDE384B8)
  {
    sub_1CEFA8070();
    v0 = sub_1CEFA85B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE384B8);
    }
  }
}

void sub_1CEF8F998()
{
  if (!qword_1EDE379D8)
  {
    v0 = sub_1CEFA82C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE379D8);
    }
  }
}

void sub_1CEF8FA4C()
{
  sub_1CEFA8070();
  if (v0 <= 0x3F)
  {
    sub_1CEF82314(319, qword_1EDE385E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1CEF8F940();
      if (v2 <= 0x3F)
      {
        sub_1CEF8F998();
        if (v3 <= 0x3F)
        {
          sub_1CEF82314(319, &qword_1EDE37998, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1CEF82314(319, &qword_1EC4AA760, &type metadata for TrustedRequestEndpointMetadata, MEMORY[0x1E69E62F8]);
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

uint64_t getEnumTagSinglePayload for TrustedRequestLogEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrustedRequestLogEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrustedRequestEndpointMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrustedRequestEndpointMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CEF8FEB4()
{
  result = qword_1EC4AA768;
  if (!qword_1EC4AA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA768);
  }

  return result;
}

unint64_t sub_1CEF8FF0C()
{
  result = qword_1EC4AA770;
  if (!qword_1EC4AA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA770);
  }

  return result;
}

unint64_t sub_1CEF8FF64()
{
  result = qword_1EC4AA778;
  if (!qword_1EC4AA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA778);
  }

  return result;
}

unint64_t sub_1CEF8FFBC()
{
  result = qword_1EC4AA780;
  if (!qword_1EC4AA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA780);
  }

  return result;
}

unint64_t sub_1CEF90014()
{
  result = qword_1EC4AA788;
  if (!qword_1EC4AA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA788);
  }

  return result;
}

unint64_t sub_1CEF9006C()
{
  result = qword_1EC4AA790;
  if (!qword_1EC4AA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA790);
  }

  return result;
}

unint64_t sub_1CEF900C4()
{
  result = qword_1EC4AA798;
  if (!qword_1EC4AA798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA798);
  }

  return result;
}

unint64_t sub_1CEF9011C()
{
  result = qword_1EC4AA7A0;
  if (!qword_1EC4AA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7A0);
  }

  return result;
}

unint64_t sub_1CEF90174()
{
  result = qword_1EC4AA7A8;
  if (!qword_1EC4AA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7A8);
  }

  return result;
}

unint64_t sub_1CEF901CC()
{
  result = qword_1EC4AA7B0;
  if (!qword_1EC4AA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7B0);
  }

  return result;
}

unint64_t sub_1CEF90224()
{
  result = qword_1EC4AA7B8;
  if (!qword_1EC4AA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7B8);
  }

  return result;
}

unint64_t sub_1CEF9027C()
{
  result = qword_1EC4AA7C0;
  if (!qword_1EC4AA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7C0);
  }

  return result;
}

unint64_t sub_1CEF902D4()
{
  result = qword_1EC4AA7C8;
  if (!qword_1EC4AA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7C8);
  }

  return result;
}

unint64_t sub_1CEF9032C()
{
  result = qword_1EC4AA7D0;
  if (!qword_1EC4AA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7D0);
  }

  return result;
}

unint64_t sub_1CEF90384()
{
  result = qword_1EC4AA7D8;
  if (!qword_1EC4AA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7D8);
  }

  return result;
}

uint64_t sub_1CEF903D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461745365646F6ELL && a2 == 0xE900000000000065;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F43707474686FLL && a2 == 0xEC00000074786574 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB6360 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563655261746164 && a2 == 0xEC00000064657669 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x56534F64756F6C63 && a2 == 0xEE006E6F69737265 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB50A0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CEFB6380 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C626D65736E65 && a2 == 0xEA00000000004449 || (sub_1CEFA8950() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x61436D6F72467369 && a2 == 0xEB00000000656863 || (sub_1CEFA8950() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6552646576726573 && a2 == 0xED00007473657571 || (sub_1CEFA8950() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x42646569786F7270 && a2 == 0xE900000000000079 || (sub_1CEFA8950() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001CEFB63A0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1CEF90820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6552746E65696C63 && a2 == 0xEF44497473657571;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552726576726573 && a2 == 0xEF44497473657571 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CEFB5F20 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB5F40 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB63C0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7565169 && a2 == 0xE300000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x64616F6C6B726F77 && a2 == 0xEC000000656D614ELL || (sub_1CEFA8950() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB5F60 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CEFB63E0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4874736575716572 && a2 == 0xEE00737265646165 || (sub_1CEFA8950() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xED00006574617453 || (sub_1CEFA8950() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F43 || (sub_1CEFA8950() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7265567365706F72 && a2 == 0xEC0000006E6F6973 || (sub_1CEFA8950() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE900000000000073)
  {

    return 16;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1CEF90D8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552746E65696C63 && a2 == 0xEF44497473657571 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6552726576726573 && a2 == 0xEF44497473657571 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CEFB5F20 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB5F40 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB63C0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7565169 && a2 == 0xE300000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64616F6C6B726F77 && a2 == 0xEC000000656D614ELL || (sub_1CEFA8950() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB5F60 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CEFB63E0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x4874736575716572 && a2 == 0xEE00737265646165 || (sub_1CEFA8950() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xED00006574617453 || (sub_1CEFA8950() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F43 || (sub_1CEFA8950() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7265567365706F72 && a2 == 0xEC0000006E6F6973 || (sub_1CEFA8950() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE900000000000073)
  {

    return 17;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_1CEF91344()
{
  result = qword_1EDE37E68;
  if (!qword_1EDE37E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37E68);
  }

  return result;
}

PrivateCloudCompute::Workload __swiftcall Workload.init(type:parameters:)(Swift::String type, Swift::OpaquePointer parameters)
{
  *v2 = type;
  *(v2 + 16) = parameters;
  result.type = type;
  result.parameters = parameters;
  return result;
}

uint64_t Workload.type.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Workload.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Workload.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t static Workload.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CEFA8950() & 1) == 0)
  {
    return 0;
  }

  return sub_1CEF91508(v2, v3);
}

uint64_t sub_1CEF91508(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1CEF76970(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1CEFA8950();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CEF916AC()
{
  if (*v0)
  {
    result = 0x6574656D61726170;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1CEF916E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1CEFA8950() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();

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

uint64_t sub_1CEF917C8(uint64_t a1)
{
  v2 = sub_1CEF91A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF91804(uint64_t a1)
{
  v2 = sub_1CEF91A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Workload.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7E0, &unk_1CEFB3610);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF91A0C();
  sub_1CEFA8A60();
  v17 = 0;
  sub_1CEFA8880();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
    sub_1CEF4A21C(&qword_1EDE38108);
    sub_1CEFA88D0();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_1CEF91A0C()
{
  result = qword_1EDE38120;
  if (!qword_1EDE38120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE38120);
  }

  return result;
}

uint64_t Workload.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1CEFA8340();

  return sub_1CEF91EFC(a1, v5);
}

uint64_t Workload.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CEFA8A00();
  sub_1CEFA8340();
  sub_1CEF91EFC(v5, v3);
  return sub_1CEFA8A40();
}

uint64_t Workload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7E8, &qword_1CEFB3620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF91A0C();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v11 = sub_1CEFA8780();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
  v18 = 1;
  sub_1CEF4A21C(&qword_1EDE379D0);
  sub_1CEFA87D0();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1CEF91D80(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CEFA8950() & 1) == 0)
  {
    return 0;
  }

  return sub_1CEF91508(v2, v3);
}

uint64_t sub_1CEF91DF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CEFA8A00();
  sub_1CEFA8340();
  sub_1CEF91EFC(v5, v3);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF91E58(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1CEFA8340();

  return sub_1CEF91EFC(a1, v5);
}

uint64_t sub_1CEF91E9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1CEFA8A00();
  sub_1CEFA8340();
  sub_1CEF91EFC(v5, v3);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF91EFC(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_1CEFA8340();

    sub_1CEFA8340();

    result = sub_1CEFA8A40();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1D3866C60](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CEF9206C()
{
  result = qword_1EDE379E0;
  if (!qword_1EDE379E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE379E0);
  }

  return result;
}

unint64_t sub_1CEF920E4()
{
  result = qword_1EC4AA7F0;
  if (!qword_1EC4AA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7F0);
  }

  return result;
}

unint64_t sub_1CEF9213C()
{
  result = qword_1EDE38110;
  if (!qword_1EDE38110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE38110);
  }

  return result;
}

unint64_t sub_1CEF92194()
{
  result = qword_1EDE38118;
  if (!qword_1EDE38118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE38118);
  }

  return result;
}

uint64_t sub_1CEF921F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for XPCWrapper();
  sub_1CEF92AB4(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v8 = sub_1CEFA8480();

  return MEMORY[0x1EEE6DFA0](sub_1CEF922B8, v8, v7);
}

uint64_t sub_1CEF922B8()
{
  if (*(v0[10] + 56) == v0[8])
  {
    v1 = v0[9];
    v0[6] = nullsub_1;
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CEF9F248;
    v0[5] = &block_descriptor;
    v2 = _Block_copy(v0 + 2);
    [v1 cancelWithCompletion_];
    _Block_release(v2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CEF923A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for XPCWrapper();
  sub_1CEF92AB4(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v8 = sub_1CEFA8480();

  return MEMORY[0x1EEE6DFA0](sub_1CEF92464, v8, v7);
}

uint64_t sub_1CEF92464()
{
  if (*(v0[10] + 56) == v0[8])
  {
    v1 = v0[9];
    v0[6] = nullsub_1;
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CEF9F248;
    v0[5] = &block_descriptor_9;
    v2 = _Block_copy(v0 + 2);
    [v1 closeWithCompletion_];
    _Block_release(v2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CEF92550(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 112) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for XPCWrapper();
  *(v6 + 64) = sub_1CEF92AB4(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v9 = sub_1CEFA8480();
  *(v6 + 72) = v9;
  *(v6 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CEF92654, v9, v8);
}

uint64_t sub_1CEF92654(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v25 = v8;
  v9 = *(v8 + 48);
  if (*(v9 + 56) == *(v8 + 32))
  {
    v10 = *(v9 + 16);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = *(v8 + 64);
      v12 = *(v8 + 40);
      v13 = *(v8 + 112);
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      *(v9 + 16) = v10 + 1;
      v16 = swift_task_alloc();
      *(v8 + 88) = v16;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v12;
      *(v16 + 40) = v15;
      *(v16 + 48) = v14;
      *(v16 + 56) = v13;
      v17 = *(MEMORY[0x1E69E8920] + 4);
      a1 = swift_task_alloc();
      *(v8 + 96) = a1;
      *a1 = v8;
      a1[1] = sub_1CEF928B0;
      a6 = sub_1CEF810A0;
      a5 = 0x80000001CEFB6160;
      a8 = MEMORY[0x1E69E7CA8] + 8;
      a2 = v9;
      a3 = v11;
      a4 = 0xD000000000000029;
      a7 = v16;
    }

    return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v18 = *(v8 + 56);
    v24[0] = 22;
    v19 = sub_1CEFA8030();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    type metadata accessor for PrivateCloudComputeError();
    sub_1CEF92AB4(&qword_1EDE38038, type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    PrivateCloudComputeError.init(code:retryAfterDate:underlying:)(v24, v18, MEMORY[0x1E69E7CC0], v20);
    swift_willThrow();
    v21 = *(v8 + 56);

    v22 = *(v8 + 8);

    return v22();
  }
}

uint64_t sub_1CEF928B0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1CEF92A30;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1CEF929CC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CEF929CC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CEF92A30()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CEF92AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CEF92B04(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = sub_1CEF9F084(qword_1EDE38748, v6, type metadata accessor for XPCWrapper);
  v8 = sub_1CEFA8480();
  v3[9] = v8;
  v3[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CEF92C18, v8, v7);
}

uint64_t sub_1CEF92C18(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), void *a7, uint64_t a8)
{
  v23 = v8;
  v9 = v8[6];
  if (*(v9 + 56) == v8[4])
  {
    v10 = *(v9 + 16);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = v8[8];
      v12 = v8[5];
      *(v9 + 16) = v10 + 1;
      v13 = swift_task_alloc();
      v8[11] = v13;
      v13[2] = v9;
      v13[3] = v10;
      v13[4] = v12;
      v14 = *(MEMORY[0x1E69E8920] + 4);
      v15 = swift_task_alloc();
      v8[12] = v15;
      a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA308, &unk_1CEFB3980);
      *v15 = v8;
      v15[1] = sub_1CEF92E70;
      a6 = sub_1CEF9EC30;
      a1 = v8 + 2;
      a5 = 0x80000001CEFB6540;
      a2 = v9;
      a3 = v11;
      a4 = 0xD000000000000019;
      a7 = v13;
    }

    return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v16 = v8[7];
    v22[0] = 22;
    v17 = sub_1CEFA8030();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    type metadata accessor for PrivateCloudComputeError();
    sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError);
    swift_allocError();
    PrivateCloudComputeError.init(code:retryAfterDate:underlying:)(v22, v16, MEMORY[0x1E69E7CC0], v18);
    swift_willThrow();
    v19 = v8[7];

    v20 = v8[1];

    return v20();
  }
}

uint64_t sub_1CEF92E70()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1CEF92A30;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1CEF92F8C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CEF92F8C()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_1CEF92FFC(uint64_t a1)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA820, &qword_1CEFB39F0);
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA830, &qword_1CEFB3A00);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA838, &qword_1CEFB3A08);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v37 - v25;
  v27 = type metadata accessor for XPCWrapper.Continuation();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF9EC68(v50, v30, type metadata accessor for XPCWrapper.Continuation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v18 + 32))(v21, v30, v17);
        v52 = v51;
        MEMORY[0x1D38670C0]();
        sub_1CEFA8490();
        return (*(v18 + 8))(v21, v17);
      }

      else
      {
        v36 = v49;
        (*(v49 + 32))(v16, v30, v13);
        v52 = v51;
        MEMORY[0x1D38670C0]();
        sub_1CEFA8490();
        return (*(v36 + 8))(v16, v13);
      }
    }

    else
    {
      (*(v23 + 32))(v26, v30, v22);
      v52 = v51;
      MEMORY[0x1D38670C0]();
      sub_1CEFA8490();
      return (*(v23 + 8))(v26, v22);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v32 = v43;
        v33 = v44;
        v34 = v45;
        (*(v44 + 32))(v43, v30, v45);
      }

      else
      {
        v32 = v46;
        v33 = v47;
        v34 = v48;
        (*(v47 + 32))(v46, v30, v48);
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v32 = v37;
      v33 = v38;
      v34 = v39;
      (*(v38 + 32))(v37, v30, v39);
    }

    else
    {
      v32 = v40;
      v33 = v41;
      v34 = v42;
      (*(v41 + 32))(v40, v30, v42);
    }

    v52 = v51;
    MEMORY[0x1D38670C0]();
    sub_1CEFA8490();
    return (*(v33 + 8))(v32, v34);
  }
}

uint64_t sub_1CEF9360C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CEFA8560();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CEFA8580();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1CEFA8280();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  *(v1 + 16) = xmmword_1CEFB38F0;
  v12 = sub_1CEFA7DF0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + 40) = sub_1CEFA7DE0();
  *(v1 + 56) = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v2 + 80) = sub_1CEF52C30(MEMORY[0x1E69E7CC0]);
  *(v2 + 48) = a1;
  *(v2 + 52) = BYTE4(a1) & 1;
  v26 = sub_1CEF9F038();
  sub_1CEFA8270();
  aBlock[0] = v15;
  sub_1CEF9F084(&qword_1EDE38598, 255, MEMORY[0x1E69E8120]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA858, &qword_1CEFB3A28);
  sub_1CEF9F0CC(&qword_1EDE385D8, &qword_1EC4AA858, &qword_1CEFB3A28);
  sub_1CEFA8610();
  (*(v27 + 104))(v7, *MEMORY[0x1E69E8098], v28);
  *(v2 + 32) = sub_1CEFA8590();
  v16 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v17 = sub_1CEFA82F0();
  v18 = [v16 initWithMachServiceName:v17 options:0];

  [v18 _setQueue_];
  v19 = objc_opt_self();
  v20 = [v19 interfaceWithProtocol_];
  v21 = [v19 interfaceWithProtocol_];
  [v20 setInterface:v21 forSelector:sel_trustedRequestWithParameters_requestID_bundleIdentifier_originatingBundleIdentifier_featureIdentifier_sessionIdentifier_completion_ argumentIndex:0 ofReply:1];

  [v18 setRemoteObjectInterface_];
  *(v2 + 64) = v18;
  v22 = v18;
  v23 = [v22 remoteObjectProxy];
  sub_1CEFA85E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA860, &qword_1CEFB3A30);
  swift_dynamicCast();
  *(v2 + 72) = aBlock[6];
  aBlock[4] = sub_1CEF9F120;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9F248;
  aBlock[3] = &block_descriptor_246;
  v24 = _Block_copy(aBlock);

  [v22 setInterruptionHandler_];
  _Block_release(v24);
  [v22 resume];

  return v2;
}

uint64_t sub_1CEF93AC4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[4];
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9E028;
    *(v4 + 24) = 0;
    v6[0] = a1;
    sub_1CEF9F230(v6);

    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();
    __break(1u);
  }

  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF93C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v59 = &v54 - v3;
  v4 = type metadata accessor for XPCWrapper.Continuation();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA868, &qword_1CEFB3A38);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v54 - v12;
  swift_beginAccess();
  v55 = v0;
  v13 = *(v0 + 80);
  v16 = *(v13 + 64);
  v15 = v13 + 64;
  v14 = v16;
  v17 = 1 << *(*(v0 + 80) + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v58 = *(v0 + 80);

  v21 = 0;
  v56 = v11;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(v58 + 48) + 8 * v26);
      v28 = v61;
      sub_1CEF9EC68(*(v58 + 56) + *(v57 + 72) * v26, v61, type metadata accessor for XPCWrapper.Continuation);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA870, &qword_1CEFB3A40);
      v30 = *(v29 + 48);
      v11 = v56;
      *v56 = v27;
      sub_1CEF9ED30(v28, &v11[v30], type metadata accessor for XPCWrapper.Continuation);
      (*(*(v29 - 8) + 56))(v11, 0, 1, v29);
      v24 = v22;
LABEL_13:
      v31 = v60;
      sub_1CEF9F128(v11, v60);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA870, &qword_1CEFB3A40);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
      {
        break;
      }

      v33 = v61;
      sub_1CEF9ED30(v31 + *(v32 + 48), v61, type metadata accessor for XPCWrapper.Continuation);
      LOBYTE(aBlock[0]) = 22;
      v34 = sub_1CEFA8030();
      v35 = v59;
      (*(*(v34 - 8) + 56))(v59, 1, 1, v34);
      type metadata accessor for PrivateCloudComputeError();
      sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError);
      v36 = swift_allocError();
      PrivateCloudComputeError.init(code:retryAfterDate:underlying:)(aBlock, v35, MEMORY[0x1E69E7CC0], v37);
      sub_1CEF92FFC(v36);
      sub_1CEF9ECD0(v33, type metadata accessor for XPCWrapper.Continuation);

      v21 = v24;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    v39 = v55;
    swift_beginAccess();
    if (*(*(v39 + 80) + 16))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v62 = *(v39 + 80);
      *(v39 + 80) = 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA878, &qword_1CEFB3A48);
      sub_1CEFA86B0();
      *(v39 + 80) = v62;
    }

    swift_endAccess();
    v40 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v41 = sub_1CEFA82F0();
    v42 = [v40 initWithMachServiceName:v41 options:0];

    [v42 _setQueue_];
    v43 = objc_opt_self();
    v44 = [v43 interfaceWithProtocol_];
    v45 = [v43 interfaceWithProtocol_];
    [v44 setInterface:v45 forSelector:sel_trustedRequestWithParameters_requestID_bundleIdentifier_originatingBundleIdentifier_featureIdentifier_sessionIdentifier_completion_ argumentIndex:0 ofReply:1];

    [v42 setRemoteObjectInterface_];
    aBlock[4] = sub_1CEF9F198;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEF9F248;
    aBlock[3] = &block_descriptor_253;
    v46 = _Block_copy(aBlock);

    [v42 setInterruptionHandler_];
    _Block_release(v46);
    [v42 resume];
    v47 = *(v39 + 64);
    *(v39 + 64) = v42;
    v48 = *(v39 + 24);
    if (!__OFADD__(v48, 1))
    {
      *(v39 + 24) = v48 + 1;
      *(v39 + 56) = v48;
      v49 = v42;
      v50 = [v49 remoteObjectProxy];
      sub_1CEFA85E0();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA860, &qword_1CEFB3A30);
      swift_dynamicCast();
      v51 = *(v39 + 72);
      *(v39 + 72) = v62;
      swift_unknownObjectRelease();
      [v47 setInterruptionHandler_];
      [v47 setInvalidationHandler_];
      [v47 invalidate];
      v52 = [*(v39 + 64) remoteObjectProxy];
      sub_1CEFA85E0();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v53 = *(v39 + 72);
      *(v39 + 72) = v62;
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
LABEL_5:
    if (v20 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA870, &qword_1CEFB3A40);
        (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v15 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CEF94458()
{
  v1 = sub_1CEFA8260();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CEFA8280();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 32);
  aBlock[4] = sub_1CEF9EC28;
  v16 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9F248;
  aBlock[3] = &block_descriptor_81;
  v10 = _Block_copy(aBlock);

  sub_1CEFA8270();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1CEF9F084(&qword_1EDE38800, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA810, &qword_1CEFB39E0);
  sub_1CEF9F0CC(&qword_1EDE385E0, &qword_1EC4AA810, &qword_1CEFB39E0);
  sub_1CEFA8610();
  MEMORY[0x1D38667C0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_1CEF946FC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[4];
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9E044;
    *(v4 + 24) = 0;
    v6[0] = a1;
    sub_1CEF9F230(v6);

    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();
    __break(1u);
  }

  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

id sub_1CEF948B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1CEF9F084(qword_1EDE38748, a2, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = swift_beginAccess();
  if (*(a1[10] + 16))
  {
    __break(1u);
  }

  else
  {
    [a1[8] invalidate];
    return [a1[8] setInterruptionHandler_];
  }

  return result;
}

uint64_t sub_1CEF949C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1CEF94A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v38[1] = a7;
  v40 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v38 - v22;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v24, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA820, &qword_1CEFB39F0);
  (*(*(v25 - 8) + 16))(v23, a1, v25);
  v26 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
  swift_beginAccess();
  sub_1CEF4C510(v23, v40);
  swift_endAccess();
  v27 = *(a2 + 72);
  swift_unknownObjectRetain();
  v39 = sub_1CEFA7F60();
  v28 = sub_1CEFA8040();
  if (a8)
  {
    a8 = sub_1CEFA82F0();
  }

  v29 = a12;
  if (a10)
  {
    v30 = sub_1CEFA82F0();
    if (!a12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v30 = 0;
  if (a12)
  {
LABEL_7:
    v29 = sub_1CEFA82F0();
  }

LABEL_8:
  sub_1CEF8A284(a13, v19);
  v31 = sub_1CEFA8070();
  v32 = *(v31 - 8);
  v33 = 0;
  if ((*(v32 + 48))(v19, 1, v31) != 1)
  {
    v33 = sub_1CEFA8040();
    (*(v32 + 8))(v19, v31);
  }

  v34 = swift_allocObject();
  v35 = v40;
  *(v34 + 16) = a2;
  *(v34 + 24) = v35;
  aBlock[4] = sub_1CEF9F010;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF961B8;
  aBlock[3] = &block_descriptor_235;
  v36 = _Block_copy(aBlock);

  v37 = v39;
  [v27 trustedRequestWithParameters:v39 requestID:v28 bundleIdentifier:a8 originatingBundleIdentifier:v30 featureIdentifier:v29 sessionIdentifier:v33 completion:v36];
  _Block_release(v36);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF94E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isEscapingClosureAtFileLocation = a4;
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a1;
  v6 = *(a4 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9F018;
    *(v7 + 24) = &v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1CEF9F29C;
    *(v8 + 24) = v7;

    v16[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v16);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v15 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF95020(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a2;
  v57 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA818, &unk_1CEFB3C40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v52 - v13;
  v15 = type metadata accessor for PrivateCloudComputeError();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - v21;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v23, type metadata accessor for XPCWrapper);
  v58 = a1;
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3 >> 60 == 15)
  {
    if (a5)
    {
      v24 = *(v58 + 56);
      swift_unknownObjectRetain();
      sub_1CEF95E84(v57, a5, v24);
      swift_unknownObjectRelease();
      return;
    }

    v41 = sub_1CEFA8030();
    v42 = *(*(v41 - 8) + 56);
    v43 = v55;
    v42(v55, 1, 1, v41);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1CEFA8650();

    v59 = 0xD000000000000021;
    v60 = 0x80000001CEFB6670;
    v44 = sub_1CEFA8660();
    MEMORY[0x1D38665A0](v44);

    MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
    v61 = 136;
    v45 = sub_1CEFA8910();
    MEMORY[0x1D38665A0](v45);

    v46 = v59;
    v47 = v60;
    v48 = v15[5];
    v42(&v20[v48], 1, 1, v41);
    v49 = &v20[v15[6]];
    v50 = &v20[v15[7]];
    *v20 = 21;
    sub_1CEF3D4EC(v43, &v20[v48]);
    *v49 = 0;
    v49[1] = 0;
    *v50 = v46;
    v50[1] = v47;
    sub_1CEF3D55C(v43, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    *&v20[v15[8]] = MEMORY[0x1E69E7CC0];
    sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError);
    v36 = swift_allocError();
    sub_1CEF9EC68(v20, v51, type metadata accessor for PrivateCloudComputeError);
    sub_1CEF95774(v57, v36);
    goto LABEL_10;
  }

  v25 = v56;
  sub_1CEF9EC14(v56, a3);
  sub_1CEF43738(v25, a3);
  sub_1CEF9FE3C(v25, a3, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1CEF3D55C(v14, &qword_1EC4AA818, &unk_1CEFB3C40);
    v26 = sub_1CEFA8030();
    v54 = *(*(v26 - 8) + 56);
    v27 = v55;
    v54(v55, 1, 1, v26);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1CEFA8650();

    v59 = 0xD000000000000032;
    v60 = 0x80000001CEFB66A0;
    v28 = sub_1CEFA8660();
    MEMORY[0x1D38665A0](v28);

    MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
    v61 = 128;
    v29 = sub_1CEFA8910();
    MEMORY[0x1D38665A0](v29);

    v30 = v59;
    v31 = v60;
    v53 = a3;
    v32 = v25;
    v33 = v15[5];
    v54(&v20[v33], 1, 1, v26);
    v34 = &v20[v15[6]];
    v35 = &v20[v15[7]];
    *v20 = 21;
    sub_1CEF3D4EC(v27, &v20[v33]);
    *v34 = 0;
    v34[1] = 0;
    *v35 = v30;
    v35[1] = v31;
    sub_1CEF3D55C(v27, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    *&v20[v15[8]] = MEMORY[0x1E69E7CC0];
    sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError);
    v36 = swift_allocError();
    sub_1CEF9EC68(v20, v37, type metadata accessor for PrivateCloudComputeError);
    sub_1CEF95774(v57, v36);
    sub_1CEF81204(v32, v53);
LABEL_10:
    sub_1CEF9ECD0(v20, type metadata accessor for PrivateCloudComputeError);
    v40 = v36;
    goto LABEL_11;
  }

  sub_1CEF9ED30(v14, v22, type metadata accessor for PrivateCloudComputeError);
  sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError);
  v38 = swift_allocError();
  sub_1CEF9EC68(v22, v39, type metadata accessor for PrivateCloudComputeError);
  sub_1CEF95774(v57, v38);
  sub_1CEF81204(v25, a3);
  sub_1CEF9ECD0(v22, type metadata accessor for PrivateCloudComputeError);
  v40 = v38;
LABEL_11:
}

uint64_t sub_1CEF95774(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA820, &qword_1CEFB39F0);
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA830, &qword_1CEFB3A00);
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA838, &qword_1CEFB3A08);
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  v50 = *(v21 - 8);
  v22 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v49 - v27;
  v29 = type metadata accessor for XPCWrapper.Continuation();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v49 - v35;
  swift_beginAccess();
  sub_1CEF9DB30(v68, v28);
  swift_endAccess();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    return sub_1CEF3D55C(v28, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v28, v36, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v36, v34, type metadata accessor for XPCWrapper.Continuation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v39 = v61;
        v40 = v62;
        v44 = v34;
        v42 = v63;
        (*(v62 + 32))(v61, v44, v63);
      }

      else
      {
        v39 = v64;
        v40 = v65;
        v48 = v34;
        v42 = v66;
        (*(v65 + 32))(v64, v48, v66);
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v39 = v58;
      v40 = v59;
      v41 = v34;
      v42 = v60;
      (*(v59 + 32))(v58, v41, v60);
    }

    else
    {
      v39 = v55;
      v40 = v56;
      v47 = v34;
      v42 = v57;
      (*(v56 + 32))(v55, v47, v57);
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v39 = v52;
      v40 = v53;
      v46 = v34;
      v42 = v54;
      (*(v53 + 32))(v52, v46, v54);
LABEL_16:
      v69 = v67;
      MEMORY[0x1D38670C0]();
      sub_1CEFA8490();
      (*(v40 + 8))(v39, v42);
      return sub_1CEF9ECD0(v36, type metadata accessor for XPCWrapper.Continuation);
    }

    v43 = v51;
    (*(v51 + 32))(v20, v34, v17);
    v69 = v67;
    MEMORY[0x1D38670C0]();
    sub_1CEFA8490();
    (*(v43 + 8))(v20, v17);
  }

  else
  {
    v45 = v50;
    (*(v50 + 32))(v24, v34, v21);
    v69 = v67;
    MEMORY[0x1D38670C0]();
    sub_1CEFA8490();
    (*(v45 + 8))(v24, v21);
  }

  return sub_1CEF9ECD0(v36, type metadata accessor for XPCWrapper.Continuation);
}

uint64_t sub_1CEF95E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA820, &qword_1CEFB39F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for XPCWrapper.Continuation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v12);
  swift_endAccess();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1CEF3D55C(v12, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v12, v20, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v20, v18, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() <= 5)
  {
    sub_1CEF9ECD0(v18, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v18, v4);
    v25 = v24;
    v26 = v23;
    swift_unknownObjectRetain();
    sub_1CEFA84A0();
    (*(v5 + 8))(v8, v4);
    return sub_1CEF9ECD0(v20, type metadata accessor for XPCWrapper.Continuation);
  }

  return result;
}

uint64_t sub_1CEF961B8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {

    swift_unknownObjectRetain();
    v7 = v3;
    v3 = sub_1CEFA7F70();
    v9 = v8;
  }

  else
  {

    swift_unknownObjectRetain();
    v9 = 0xF000000000000000;
  }

  v6(a2, v3, v9);
  swift_unknownObjectRelease();
  sub_1CEF81204(v3, v9);
}

uint64_t sub_1CEF96270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA830, &qword_1CEFB3A00);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1CEF4C510(v9, a3);
  swift_endAccess();
  v13 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1CEF9F1A0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF96A10;
  aBlock[3] = &block_descriptor_263;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v13 currentEnvironmentWithCompletion_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF96500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isEscapingClosureAtFileLocation = a3;
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v5 = *(a3 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F1A8;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9F29C;
    *(v7 + 24) = v6;

    v14[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v14);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v13 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF966DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA830, &qword_1CEFB3A00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for XPCWrapper.Continuation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v12);
  swift_endAccess();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1CEF3D55C(v12, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v12, v20, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v20, v18, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    (*(v5 + 32))(v8, v18, v4);
    v25 = v23;
    v26 = v24;

    sub_1CEFA84A0();
    (*(v5 + 8))(v8, v4);
    return sub_1CEF9ECD0(v20, type metadata accessor for XPCWrapper.Continuation);
  }

  else
  {
    sub_1CEF9ECD0(v18, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF96A10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1CEFA8300();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_1CEF96A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1CEF4C510(v9, a3);
  swift_endAccess();
  v13 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1CEF9EFD0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF97304;
  aBlock[3] = &block_descriptor_221;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v13 requestMetadataWithCompletion_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF96D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isEscapingClosureAtFileLocation = a3;
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v5 = *(a3 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9EFD8;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9F29C;
    *(v7 + 24) = v6;

    v14[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v14);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v13 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF96EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return a6(a2, a3, a4);
}

uint64_t sub_1CEF96FD0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for XPCWrapper.Continuation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v12);
  swift_endAccess();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1CEF3D55C(v12, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v12, v20, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v20, v18, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    (*(v5 + 32))(v8, v18, v4);
    v25 = v23;
    v26 = v24;
    sub_1CEF9EC14(v23, v24);
    sub_1CEFA84A0();
    (*(v5 + 8))(v8, v4);
    return sub_1CEF9ECD0(v20, type metadata accessor for XPCWrapper.Continuation);
  }

  else
  {
    sub_1CEF9ECD0(v18, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF97304(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = sub_1CEFA7F70();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v4(v2, v7);
  sub_1CEF81204(v2, v7);
}

uint64_t sub_1CEF9739C(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = v2;
  v4 = *v2;
  *(v3 + 48) = *a1;
  *(v3 + 64) = *(a1 + 16);
  *(v3 + 72) = sub_1CEF9F084(qword_1EDE38748, a2, type metadata accessor for XPCWrapper);
  v6 = sub_1CEFA8480();
  *(v3 + 80) = v6;
  *(v3 + 88) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CEF97484, v6, v5);
}

uint64_t sub_1CEF97484(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 40);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    v17 = *(v8 + 48);
    *(v9 + 16) = v10 + 1;
    v13 = swift_task_alloc();
    *(v8 + 96) = v13;
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v17;
    *(v13 + 48) = v12;
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    *(v8 + 104) = v15;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA308, &unk_1CEFB3980);
    *v15 = v8;
    v15[1] = sub_1CEF975C8;
    a6 = sub_1CEF9EEA0;
    a1 = v8 + 16;
    a5 = 0x80000001CEFB6600;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000013;
    a7 = v13;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF975C8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_1CEF97804;
  }

  else
  {
    v7 = v2[12];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_1CEF976E4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CEF976E4()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    v2 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v8 = v0[1];

    return v8(v2);
  }

  v3 = v0[2];
  v4 = v0[14];
  v5 = *(v0[5] + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA840, &unk_1CEFB3A18);
  sub_1CEF9EEB0();
  sub_1CEFA7DD0();
  sub_1CEF81204(v3, v1);
  if (!v4)
  {
    v2 = v0[4];
    goto LABEL_8;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1CEF97804()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

void sub_1CEF97868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = aBlock - v12;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v14, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  (*(*(v15 - 8) + 16))(v13, a1, v15);
  v16 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  swift_beginAccess();
  sub_1CEF4C510(v13, a3);
  swift_endAccess();
  v17 = *(a2 + 72);
  swift_unknownObjectRetain();
  v18 = sub_1CEFA82F0();
  if (!a6)
  {
    sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  }

  v19 = sub_1CEFA82A0();

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = sub_1CEF9EF68;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF97304;
  aBlock[3] = &block_descriptor_193;
  v21 = _Block_copy(aBlock);

  [v17 prefetchRequestWithWorkloadType:v18 workloadParameters:v19 completion:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF97B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isEscapingClosureAtFileLocation = a3;
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v5 = *(a3 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9EF70;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9F29C;
    *(v7 + 24) = v6;

    v14[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v14);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v13 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF97D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v28 = a7;
  v30 = a9;
  v31 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v28 - v17;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v19, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = a11;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  (*(*(v20 - 8) + 16))(v18, a1, v20);
  v21 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  swift_beginAccess();
  sub_1CEF4C510(v18, a3);
  swift_endAccess();
  v22 = *(a2 + 72);
  swift_unknownObjectRetain();
  v23 = sub_1CEFA82F0();
  v24 = sub_1CEFA82A0();
  if (a8)
  {
    a8 = sub_1CEFA82F0();
  }

  v25 = sub_1CEFA82F0();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  aBlock[4] = sub_1CEF9EFA8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9F248;
  aBlock[3] = &block_descriptor_207;
  v27 = _Block_copy(aBlock);

  [v22 prewarmRequestWithWorkloadType:v23 workloadParameters:v24 bundleIdentifier:a8 featureIdentifier:v25 runOnEventStream:v29 & 1 completion:{v27, v28}];
  _Block_release(v27);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF98098(uint64_t a1, uint64_t a2)
{
  isEscapingClosureAtFileLocation = a1;
  v8 = a2;
  v3 = *(a1 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9EFB0;
    *(v4 + 24) = &v7;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9F29C;
    *(v5 + 24) = v4;

    v10[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v10);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v9 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF98270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for XPCWrapper.Continuation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v10);
  swift_endAccess();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1CEF3D55C(v10, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v10, v18, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v18, v16, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1CEF9ECD0(v16, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v6, v16, v2);
    sub_1CEFA84A0();
    (*(v3 + 8))(v6, v2);
    return sub_1CEF9ECD0(v18, type metadata accessor for XPCWrapper.Continuation);
  }

  return result;
}

uint64_t sub_1CEF9858C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1CEF4C510(v9, a3);
  swift_endAccess();
  v13 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1CEF9EE00;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF98D28;
  aBlock[3] = &block_descriptor_135;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v13 prefetchCacheWithCompletion_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF9881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isEscapingClosureAtFileLocation = a2;
  v9 = a3;
  v10 = a1;
  v4 = *(a2 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EE08;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v12[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v12);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v11 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF989F4(uint64_t a1, uint64_t a2)
{
  v21[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v21 - v10;
  v12 = type metadata accessor for XPCWrapper.Continuation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v21 - v18;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v11);
  swift_endAccess();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1CEF3D55C(v11, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v11, v19, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v19, v17, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    (*(v4 + 32))(v7, v17, v3);
    v21[1] = v21[0];

    sub_1CEFA84A0();
    (*(v4 + 8))(v7, v3);
    return sub_1CEF9ECD0(v19, type metadata accessor for XPCWrapper.Continuation);
  }

  else
  {
    sub_1CEF9ECD0(v17, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF98D28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1CEFA8460();

  v2(v3);
}

uint64_t sub_1CEF98D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1CEF4C510(v9, a3);
  swift_endAccess();
  v13 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1CEF9EE78;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF98D28;
  aBlock[3] = &block_descriptor_177;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v13 prefetchParametersCacheWithCompletion_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF99028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isEscapingClosureAtFileLocation = a2;
  v9 = a3;
  v10 = a1;
  v4 = *(a2 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EE80;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v12[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v12);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v11 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF99200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v5, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_1CEF989F4(a2, a3);
}

uint64_t sub_1CEF992D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1CEF4C510(v9, a3);
  swift_endAccess();
  v13 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1CEF9EE50;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF98D28;
  aBlock[3] = &block_descriptor_163;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v13 prefetchParametersCacheSavedStateWithCompletion_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF99560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isEscapingClosureAtFileLocation = a2;
  v9 = a3;
  v10 = a1;
  v4 = *(a2 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EE58;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v12[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v12);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v11 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF99738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA838, &qword_1CEFB3A08);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1CEF4C510(v9, a3);
  swift_endAccess();
  v13 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1CEF9EE28;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF99F9C;
  aBlock[3] = &block_descriptor_149;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v13 prefetchCacheResetWithCompletion_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF999C8(char a1, uint64_t a2, uint64_t a3)
{
  isEscapingClosureAtFileLocation = a2;
  v9 = a3;
  v10 = a1;
  v4 = *(a2 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EE30;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v12[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v12);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v11 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF99BA4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v5, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_1CEF99C68(a2, a3 & 1);
}

uint64_t sub_1CEF99C68(uint64_t a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA838, &qword_1CEFB3A08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21[-v10];
  v12 = type metadata accessor for XPCWrapper.Continuation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v21[-v18];
  swift_beginAccess();
  sub_1CEF9DB30(a1, v11);
  swift_endAccess();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1CEF3D55C(v11, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v11, v19, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v19, v17, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v17, v3);
    v23 = v22 & 1;
    sub_1CEFA84A0();
    (*(v4 + 8))(v7, v3);
    return sub_1CEF9ECD0(v19, type metadata accessor for XPCWrapper.Continuation);
  }

  else
  {
    sub_1CEF9ECD0(v17, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF99F9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1CEF99FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  v24 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v17, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  (*(*(v18 - 8) + 16))(v16, a1, v18);
  v19 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  swift_beginAccess();
  sub_1CEF4C510(v16, a3);
  swift_endAccess();
  v20 = *(a2 + 72);
  if (!a5)
  {
    swift_unknownObjectRetain();
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  a5 = sub_1CEFA82F0();
  if (a7)
  {
LABEL_5:
    a7 = sub_1CEFA82F0();
  }

LABEL_6:
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  aBlock[4] = sub_1CEF9EDC0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF97304;
  aBlock[3] = &block_descriptor_121;
  v22 = _Block_copy(aBlock);

  [v20 knownRateLimitsWithBundleIdentifier:a5 featureIdentifier:a7 skipFetch:v24 & 1 completion:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF9A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isEscapingClosureAtFileLocation = a3;
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v5 = *(a3 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9EDC8;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9F29C;
    *(v7 + 24) = v6;

    v14[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v14);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v13 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF9A4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  v24 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v17, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  (*(*(v18 - 8) + 16))(v16, a1, v18);
  v19 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  swift_beginAccess();
  sub_1CEF4C510(v16, a3);
  swift_endAccess();
  v20 = *(a2 + 72);
  if (!a5)
  {
    swift_unknownObjectRetain();
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  a5 = sub_1CEFA82F0();
  if (a7)
  {
LABEL_5:
    a7 = sub_1CEFA82F0();
  }

LABEL_6:
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  aBlock[4] = sub_1CEF9EBD4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF97304;
  aBlock[3] = &block_descriptor_70;
  v22 = _Block_copy(aBlock);

  [v20 listRateLimitsWithBundleIdentifier:a5 featureIdentifier:a7 fetch:v24 & 1 completion:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF9A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isEscapingClosureAtFileLocation = a3;
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v5 = *(a3 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9EBDC;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9F29C;
    *(v7 + 24) = v6;

    v14[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v14);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v13 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF9A9A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13)
{
  v33[1] = a11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v33 - v23;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v25, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  (*(*(v26 - 8) + 16))(v24, a1, v26);
  v27 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
  swift_beginAccess();
  sub_1CEF4C510(v24, a3);
  swift_endAccess();
  v28 = *(a2 + 72);
  if (a8)
  {
    swift_unknownObjectRetain();
    a8 = sub_1CEFA82F0();
    v29 = a12;
    v30 = a13;
    if (!a10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  v29 = a12;
  v30 = a13;
  if (a10)
  {
LABEL_5:
    a10 = sub_1CEFA82F0();
  }

LABEL_6:
  if (v29)
  {
    v29 = sub_1CEFA82F0();
  }

  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = a3;
  aBlock[4] = sub_1CEF9EBAC;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9F248;
  aBlock[3] = &block_descriptor_56;
  v32 = _Block_copy(aBlock);

  [v28 addRateLimitWithBundleIdentifier:a8 featureIdentifier:a10 workloadType:v29 count:v30 duration:v32 ttl:a4 jitter:a5 completion:a6];
  _Block_release(v32);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF9ACF0(uint64_t a1, uint64_t a2)
{
  isEscapingClosureAtFileLocation = a1;
  v8 = a2;
  v3 = *(a1 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9EBB4;
    *(v4 + 24) = &v7;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9F29C;
    *(v5 + 24) = v4;

    v10[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v10);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v9 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF9AEC8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v3, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_1CEF98270(a2);
}

uint64_t sub_1CEF9AF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1CEF4C510(v9, a3);
  swift_endAccess();
  v13 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1CEF9EB84;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9F248;
  aBlock[3] = &block_descriptor_42;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v13 resetRateLimitsWithCompletion_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF9B218(uint64_t a1, uint64_t a2)
{
  isEscapingClosureAtFileLocation = a1;
  v8 = a2;
  v3 = *(a1 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9EB8C;
    *(v4 + 24) = &v7;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9F29C;
    *(v5 + 24) = v4;

    v10[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v10);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v9 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF9B3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1CEF4C510(v9, a3);
  swift_endAccess();
  v13 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1CEF9EB44;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9BB90;
  aBlock[3] = &block_descriptor_28;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v13 fetchServerDrivenConfigurationWithCompletion_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF9B680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isEscapingClosureAtFileLocation = a3;
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v5 = *(a3 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9EB4C;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9F29C;
    *(v7 + 24) = v6;

    v14[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v14);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v13 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF9B85C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for XPCWrapper.Continuation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v12);
  swift_endAccess();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1CEF3D55C(v12, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v12, v20, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v20, v18, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v5 + 32))(v8, v18, v4);
    v25 = v23;
    v26 = v24;
    sub_1CEF43738(v23, v24);
    sub_1CEFA84A0();
    (*(v5 + 8))(v8, v4);
    return sub_1CEF9ECD0(v20, type metadata accessor for XPCWrapper.Continuation);
  }

  else
  {
    sub_1CEF9ECD0(v18, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF9BB90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = sub_1CEFA7F70();
  v8 = v7;

  v4(v6, v8);
  sub_1CEF41BE0(v6, v8);
}

uint64_t sub_1CEF9BC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1CEF4C510(v9, a3);
  swift_endAccess();
  v13 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1CEF9EB04;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9BB90;
  aBlock[3] = &block_descriptor_14;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v13 listServerDrivenConfigurationWithCompletion_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF9BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isEscapingClosureAtFileLocation = a3;
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v5 = *(a3 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9EB0C;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9F29C;
    *(v7 + 24) = v6;

    v14[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v14);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v13 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF9C084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - v8;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();
  sub_1CEF4C510(v9, a3);
  swift_endAccess();
  v13 = *(a2 + 72);
  swift_unknownObjectRetain();
  v14 = sub_1CEFA7F60();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_1CEF9DFD0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9BB90;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  [v13 setServerDrivenConfigurationWithJson:v14 completion:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF9C33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isEscapingClosureAtFileLocation = a3;
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v5 = *(a3 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9DFF0;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9E150;
    *(v7 + 24) = v6;

    v14[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9EAD8(v14);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v13 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF9C518(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = aBlock - v14;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v16, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  (*(*(v17 - 8) + 16))(v15, a1, v17);
  v18 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  swift_beginAccess();
  sub_1CEF4C510(v15, a3);
  swift_endAccess();
  v19 = sub_1CEFA7F60();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = sub_1CEF9ED98;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF97304;
  aBlock[3] = &block_descriptor_107;
  v21 = _Block_copy(aBlock);

  [a4 sendWithData:v19 isComplete:a7 & 1 completion:v21];
  _Block_release(v21);
}

uint64_t sub_1CEF9C7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isEscapingClosureAtFileLocation = a3;
  v10 = a1;
  v11 = a2;
  v12 = a4;
  v5 = *(a3 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9EDA0;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9F29C;
    *(v7 + 24) = v6;

    v14[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v14);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v13 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF9C9AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA818, &unk_1CEFB3C40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for PrivateCloudComputeError();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v22, type metadata accessor for XPCWrapper);
  v41 = a1;
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3 >> 60 == 15)
  {
    sub_1CEF98270(v40);
  }

  else
  {
    sub_1CEF9EC14(a2, a3);
    sub_1CEF43738(a2, a3);
    sub_1CEF9FE3C(a2, a3, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1CEF3D55C(v13, &qword_1EC4AA818, &unk_1CEFB3C40);
      v23 = sub_1CEFA8030();
      v37 = *(*(v23 - 8) + 56);
      v38 = a2;
      v24 = v39;
      v37(v39, 1, 1, v23);
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1CEFA8650();

      v42 = 0xD000000000000025;
      v43 = 0x80000001CEFB65B0;
      v25 = sub_1CEFA8660();
      MEMORY[0x1D38665A0](v25);

      MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
      v44 = 431;
      v26 = sub_1CEFA8910();
      MEMORY[0x1D38665A0](v26);

      v27 = v42;
      v28 = v43;
      v29 = v14[5];
      v37(&v19[v29], 1, 1, v23);
      v30 = &v19[v14[6]];
      v31 = &v19[v14[7]];
      *v19 = 21;
      sub_1CEF3D4EC(v24, &v19[v29]);
      *v30 = 0;
      v30[1] = 0;
      *v31 = v27;
      v31[1] = v28;
      sub_1CEF3D55C(v24, &qword_1EC4A8F20, &unk_1CEFAB3E0);
      *&v19[v14[8]] = MEMORY[0x1E69E7CC0];
      sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError);
      v32 = swift_allocError();
      sub_1CEF9EC68(v19, v33, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF95774(v40, v32);
      sub_1CEF81204(v38, a3);
      sub_1CEF9ECD0(v19, type metadata accessor for PrivateCloudComputeError);
      v34 = v32;
    }

    else
    {
      sub_1CEF9ED30(v13, v21, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError);
      v35 = swift_allocError();
      sub_1CEF9EC68(v21, v36, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF95774(v40, v35);
      sub_1CEF81204(a2, a3);
      sub_1CEF9ECD0(v21, type metadata accessor for PrivateCloudComputeError);
      v34 = v35;
    }
  }
}

void sub_1CEF9CEE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = aBlock - v10;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v12, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  (*(*(v13 - 8) + 16))(v11, a1, v13);
  v14 = type metadata accessor for XPCWrapper.Continuation();
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  swift_beginAccess();
  sub_1CEF4C510(v11, a3);
  swift_endAccess();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_1CEF9EC3C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9D89C;
  aBlock[3] = &block_descriptor_93;
  v16 = _Block_copy(aBlock);

  [a4 nextWithCompletion_];
  _Block_release(v16);
}

uint64_t sub_1CEF9D170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isEscapingClosureAtFileLocation = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a1;
  v16 = a2;
  v7 = *(a5 + 32);
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1CEF9EC44;
    *(v8 + 24) = &v11;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1CEF9F29C;
    *(v9 + 24) = v8;

    v18[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v18);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v17 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF9D350(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v44 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA818, &unk_1CEFB3C40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v41 - v14;
  v16 = type metadata accessor for PrivateCloudComputeError();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - v22;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v24, type metadata accessor for XPCWrapper);
  v45 = a1;
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3 >> 60 == 15)
  {
    sub_1CEF96FD0(v44, v42, v43);
  }

  else
  {
    v25 = a2;
    sub_1CEF9EC14(a2, a3);
    sub_1CEF43738(a2, a3);
    sub_1CEF9FE3C(a2, a3, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_1CEF3D55C(v15, &qword_1EC4AA818, &unk_1CEFB3C40);
      v26 = sub_1CEFA8030();
      v27 = *(*(v26 - 8) + 56);
      v43 = a3;
      v28 = v41;
      v27(v41, 1, 1, v26);
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1CEFA8650();

      v46 = 0xD000000000000029;
      v47 = 0x80000001CEFB6580;
      v29 = sub_1CEFA8660();
      MEMORY[0x1D38665A0](v29);

      MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
      v48 = 457;
      v30 = sub_1CEFA8910();
      MEMORY[0x1D38665A0](v30);

      v31 = v46;
      v32 = v47;
      v42 = v25;
      v33 = v16[5];
      v27(&v21[v33], 1, 1, v26);
      v34 = &v21[v16[6]];
      v35 = &v21[v16[7]];
      *v21 = 21;
      sub_1CEF3D4EC(v28, &v21[v33]);
      *v34 = 0;
      v34[1] = 0;
      *v35 = v31;
      v35[1] = v32;
      sub_1CEF3D55C(v28, &qword_1EC4A8F20, &unk_1CEFAB3E0);
      *&v21[v16[8]] = MEMORY[0x1E69E7CC0];
      sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError);
      v36 = swift_allocError();
      sub_1CEF9EC68(v21, v37, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF95774(v44, v36);
      sub_1CEF81204(v42, v43);
      sub_1CEF9ECD0(v21, type metadata accessor for PrivateCloudComputeError);
      v38 = v36;
    }

    else
    {
      sub_1CEF9ED30(v15, v23, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError);
      v39 = swift_allocError();
      sub_1CEF9EC68(v23, v40, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF95774(v44, v39);
      sub_1CEF81204(a2, a3);
      sub_1CEF9ECD0(v23, type metadata accessor for PrivateCloudComputeError);
      v38 = v39;
    }
  }
}

uint64_t sub_1CEF9D89C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1CEFA7F70();
    v9 = v8;

    if (a3)
    {
LABEL_3:
      v10 = a3;
      a3 = sub_1CEFA7F70();
      v12 = v11;

      goto LABEL_6;
    }
  }

  else
  {

    v9 = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v12 = 0xF000000000000000;
LABEL_6:
  v6(v4, v9, a3, v12);
  sub_1CEF81204(a3, v12);
  sub_1CEF81204(v4, v9);
}

uint64_t sub_1CEF9D97C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[4];
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9E05C;
    *(v4 + 24) = 0;
    v6[0] = a1;
    sub_1CEF9F230(v6);

    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();
    __break(1u);
  }

  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF9DB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1CEF9E1E4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CEF9E8A0();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for XPCWrapper.Continuation();
    v20 = *(v13 - 8);
    sub_1CEF9ED30(v12 + *(v20 + 72) * v8, a2, type metadata accessor for XPCWrapper.Continuation);
    sub_1CEF9E3D8(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for XPCWrapper.Continuation();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1CEF9DC8C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);
  swift_unknownObjectRelease();
  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t type metadata accessor for XPCWrapper.Continuation()
{
  result = qword_1EDE387C0;
  if (!qword_1EDE387C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CEF9DD54()
{
  sub_1CEF9DEB8(319, &qword_1EDE385A0);
  if (v0 <= 0x3F)
  {
    sub_1CEF9DEB8(319, &qword_1EDE385A8);
    if (v1 <= 0x3F)
    {
      sub_1CEF9DEB8(319, &qword_1EDE385C8);
      if (v2 <= 0x3F)
      {
        sub_1CEF9DF2C(319, &qword_1EDE385D0, &qword_1EC4AA308, &unk_1CEFB3980);
        if (v3 <= 0x3F)
        {
          sub_1CEF9DEB8(319, &qword_1EDE385B8);
          if (v4 <= 0x3F)
          {
            sub_1CEF9DF2C(319, &qword_1EDE385B0, &qword_1EC4A9380, &qword_1CEFAC540);
            if (v5 <= 0x3F)
            {
              sub_1CEF9DF2C(319, &qword_1EDE385C0, &qword_1EC4A9498, &qword_1CEFAC038);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CEF9DEB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    v3 = sub_1CEFA84B0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1CEF9DF2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    v5 = sub_1CEFA84B0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1CEF9E078(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_1CEF9F084(qword_1EDE38748, a2, type metadata accessor for XPCWrapper);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CEF93C78();
}

uint64_t sub_1CEF9E150()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1CEF9E178(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CEF9E1E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1CEFA89F0();

  return sub_1CEF9E178(a1, v4);
}

uint64_t sub_1CEF9E228(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CEFA8620() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1CEFA8A00();

      sub_1CEFA8340();
      v13 = sub_1CEFA8A40();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1CEF9E3D8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CEFA8620() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1CEFA89F0();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for XPCWrapper.Continuation() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1CEF9E584()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9338, &unk_1CEFAB3C0);
  v2 = *v0;
  v3 = sub_1CEFA86D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1CEF37314(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1CEF49BC0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1CEF9E728()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9070, &unk_1CEFAA490);
  v2 = *v0;
  v3 = sub_1CEFA86D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1CEF9E8A0()
{
  v1 = v0;
  v2 = type metadata accessor for XPCWrapper.Continuation();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9300, &qword_1CEFAB9E0);
  v5 = *v0;
  v6 = sub_1CEFA86D0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_1CEF9EC68(*(v5 + 56) + v24, v27, type metadata accessor for XPCWrapper.Continuation);
        v25 = v29;
        *(*(v29 + 48) + 8 * v21) = v22;
        result = sub_1CEF9ED30(v23, *(v25 + 56) + v24, type metadata accessor for XPCWrapper.Continuation);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1CEF9EAD8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1CEF9EC14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CEF43738(a1, a2);
  }

  return a1;
}

uint64_t sub_1CEF9EC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF9ECD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEF9ED30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CEF9EEB0()
{
  result = qword_1EC4AA848;
  if (!qword_1EC4AA848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA840, &unk_1CEFB3A18);
    sub_1CEF9F084(&qword_1EC4AA850, 255, type metadata accessor for Prefetch.Response);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA848);
  }

  return result;
}

unint64_t sub_1CEF9F038()
{
  result = qword_1EDE38590;
  if (!qword_1EDE38590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE38590);
  }

  return result;
}

uint64_t sub_1CEF9F084(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1CEF9F0CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEF9F128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA868, &qword_1CEFB3A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t tc2Logger(forCategory:)(char *a1)
{
  v2 = *a1;
  TC2LogCategory.rawValue.getter();

  return sub_1CEFA8210();
}

PrivateCloudCompute::TC2LogCategory_optional __swiftcall TC2LogCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CEFA8980();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t TC2LogCategory.rawValue.getter()
{
  result = 0x6E6F6D656144;
  switch(*v0)
  {
    case 1:
      result = 0x5264657473757254;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x746E65696C43;
      break;
    case 4:
      result = 0x72756769666E6F43;
      break;
    case 5:
      result = 1819242324;
      break;
    case 6:
      result = 0x656C756465686353;
      break;
    case 7:
      result = 0x6B726F7774654ELL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0x7473655474696E55;
      break;
    case 0xB:
      result = 0x6863746566657250;
      break;
    case 0xC:
      result = 0x786F62646E6153;
      break;
    case 0xD:
      result = 0x655263697274654DLL;
      break;
    case 0xE:
      result = 0x696D694C65746152;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 0x11:
      result = 0x6F72506E656B6F54;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x13:
      result = 0x4C74736575716552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CEF9F6AC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = TC2LogCategory.rawValue.getter();
  v4 = v3;
  if (v2 == TC2LogCategory.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CEFA8950();
  }

  return v7 & 1;
}

unint64_t sub_1CEF9F74C()
{
  result = qword_1EC4AA880;
  if (!qword_1EC4AA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA880);
  }

  return result;
}

uint64_t sub_1CEF9F7A0()
{
  v1 = *v0;
  sub_1CEFA8A00();
  TC2LogCategory.rawValue.getter();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEF9F808()
{
  v2 = *v0;
  TC2LogCategory.rawValue.getter();
  sub_1CEFA8340();
}

uint64_t sub_1CEF9F86C()
{
  v1 = *v0;
  sub_1CEFA8A00();
  TC2LogCategory.rawValue.getter();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

unint64_t sub_1CEF9F8DC@<X0>(unint64_t *a1@<X8>)
{
  result = TC2LogCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TC2LogCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TC2LogCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TC2Client.__allocating_init(userID:)(unint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for XPCWrapper();
  swift_allocObject();
  *(v2 + 16) = sub_1CEF9360C(a1 | ((HIDWORD(a1) & 1) << 32));
  return v2;
}

uint64_t sub_1CEF9FAE8()
{
  v0[5] = *(v0[4] + 16);
  type metadata accessor for XPCWrapper();
  v0[6] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[7] = v2;
  v0[8] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEF9FBAC, v2, v1);
}

uint64_t sub_1CEF9FBAC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[5];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[6];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[9] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v8[10] = v14;
    *v14 = v8;
    v14[1] = sub_1CEF9FCC4;
    a8 = MEMORY[0x1E69E6158];
    a6 = sub_1CEFA4BE8;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB6970;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000014;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF9FCC4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;

  v6 = *(v2 + 72);
  if (v0)
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1CEF9FE20;
  }

  else
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1CEF9FE08;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CEF9FE3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA818, &unk_1CEFB3C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_1CEFA7DF0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1CEFA7DE0();
  v15 = type metadata accessor for PrivateCloudComputeError();
  sub_1CEFA4A30(&qword_1EC4AA8C0, type metadata accessor for PrivateCloudComputeError);
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  v16 = *(*(v15 - 8) + 56);
  v16(v11, 0, 1, v15);
  sub_1CEFA4A78(v11, a3, type metadata accessor for PrivateCloudComputeError);
  return (v16)(a3, 0, 1, v15);
}

uint64_t sub_1CEFA0254(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CEFA8220();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1CEFA7DF0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1CEFA7DE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA8C8, &qword_1CEFB3C80);
  sub_1CEFA4AE0();
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  return v10;
}

uint64_t sub_1CEFA04F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA8B0, &qword_1CEFB3C38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_1CEFA7DF0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1CEFA7DE0();
  v15 = type metadata accessor for TrustedCloudComputeError(0);
  sub_1CEFA4A30(&qword_1EC4AA8B8, type metadata accessor for TrustedCloudComputeError);
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  v16 = *(*(v15 - 8) + 56);
  v16(v11, 0, 1, v15);
  sub_1CEFA4A78(v11, a3, type metadata accessor for TrustedCloudComputeError);
  return (v16)(a3, 0, 1, v15);
}

uint64_t sub_1CEFA08EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA8A0, &qword_1CEFB3C30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_1CEFA7DF0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1CEFA7DE0();
  v15 = type metadata accessor for TrustedCloudComputeRateLimit();
  sub_1CEFA4A30(&qword_1EC4AA8A8, type metadata accessor for TrustedCloudComputeRateLimit);
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  v16 = *(*(v15 - 8) + 56);
  v16(v11, 0, 1, v15);
  sub_1CEFA4A78(v11, a3, type metadata accessor for TrustedCloudComputeRateLimit);
  return (v16)(a3, 0, 1, v15);
}

uint64_t sub_1CEFA0CE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1CEFA7DF0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1CEFA7DE0();
  sub_1CEF8C0A4();
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  nullsub_1(v16);
  v11 = v16[7];
  *(a3 + 96) = v16[6];
  *(a3 + 112) = v11;
  *(a3 + 128) = v16[8];
  *(a3 + 144) = v17;
  v12 = v16[3];
  *(a3 + 32) = v16[2];
  *(a3 + 48) = v12;
  v13 = v16[5];
  *(a3 + 64) = v16[4];
  *(a3 + 80) = v13;
  v14 = v16[1];
  *a3 = v16[0];
  *(a3 + 16) = v14;
  return nullsub_1(a3);
}

uint64_t sub_1CEFA109C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA890, &qword_1CEFB3C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_1CEFA7DF0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1CEFA7DE0();
  v15 = type metadata accessor for TC2TrustedRequestMetadata(0);
  sub_1CEFA4A30(&qword_1EC4AA6F0, type metadata accessor for TC2TrustedRequestMetadata);
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  v16 = *(*(v15 - 8) + 56);
  v16(v11, 0, 1, v15);
  sub_1CEFA4A78(v11, a3, type metadata accessor for TC2TrustedRequestMetadata);
  return (v16)(a3, 0, 1, v15);
}

uint64_t sub_1CEFA14B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = sub_1CEFA8220();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1CEFA7DF0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1CEFA7DE0();
  a3();
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  *a4 = v14;
  return result;
}

double sub_1CEFA1764@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1CEFA7DF0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1CEFA7DE0();
  sub_1CEFA4978();
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  *a3 = v12;
  result = *&v13;
  *(a3 + 8) = v13;
  return result;
}

uint64_t TC2Client.requestMetadata()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CEFA1A44, 0, 0);
}

uint64_t sub_1CEFA1A44()
{
  v0[6] = *(v0[5] + 16);
  type metadata accessor for XPCWrapper();
  v0[7] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[8] = v2;
  v0[9] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA1B08, v2, v1);
}

uint64_t sub_1CEFA1B08(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[6];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[7];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[10] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v8[11] = v14;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA308, &unk_1CEFB3980);
    *v14 = v8;
    v14[1] = sub_1CEFA1C30;
    a6 = sub_1CEFA33BC;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB6730;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000011;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA1C30()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;

  v6 = *(v2 + 80);
  if (v0)
  {

    v7 = *(v3 + 64);
    v8 = *(v3 + 72);
    v9 = sub_1CEFA1E34;
  }

  else
  {

    v7 = *(v3 + 64);
    v8 = *(v3 + 72);
    v9 = sub_1CEFA1D74;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CEFA1D98()
{
  v1 = *(v0 + 104);
  if (v1 >> 60 == 15)
  {
    **(v0 + 32) = 0;
  }

  else
  {
    sub_1CEFA14B4(*(v0 + 96), v1, sub_1CEFA4B94, *(v0 + 32));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TC2Client.prewarm(request:bundleIdentifier:featureIdentifier:runOnEventStream:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 136) = a6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *a1;
  v9 = a1[1];
  *(v7 + 48) = v6;
  *(v7 + 56) = v8;
  v10 = a1[2];
  *(v7 + 64) = v9;
  *(v7 + 72) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA1EF0, 0, 0);
}

uint64_t sub_1CEFA1EF0()
{
  v1 = v0[9];
  v0[10] = *(v0[6] + 16);
  if (!v1)
  {
    v1 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  }

  v0[11] = v1;
  type metadata accessor for XPCWrapper();
  v0[12] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v3 = sub_1CEFA8480();
  v0[13] = v3;
  v0[14] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA1FCC, v3, v2);
}

uint64_t sub_1CEFA1FCC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 80);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 88);
    v11 = *(v8 + 96);
    v13 = *(v8 + 136);
    v14 = *(v8 + 40);
    v19 = *(v8 + 24);
    v20 = *(v8 + 56);
    v15 = *(v8 + 16);
    *(v9 + 16) = v10 + 1;
    v16 = swift_task_alloc();
    *(v8 + 120) = v16;
    *(v16 + 16) = v9;
    *(v16 + 24) = v10;
    *(v16 + 32) = v20;
    *(v16 + 48) = v12;
    *(v16 + 56) = v15;
    *(v16 + 64) = v19;
    *(v16 + 80) = v14;
    *(v16 + 88) = v13;
    v17 = *(MEMORY[0x1E69E8920] + 4);
    a1 = swift_task_alloc();
    *(v8 + 128) = a1;
    *a1 = v8;
    a1[1] = sub_1CEFA2120;
    a6 = sub_1CEF5A0C0;
    a5 = 0x80000001CEFB5270;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000064;
    a7 = v16;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA2120()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = *(v2 + 120);
  v7 = *(v2 + 88);
  if (v0)
  {
  }

  v8 = *(v3 + 104);
  v9 = *(v3 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1CEFA4BF8, v8, v9);
}

uint64_t TC2Client.prefetch(request:)(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1CEFA22C0, 0, 0);
}

uint64_t sub_1CEFA22C0()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1CEF59794;

  return sub_1CEF9739C(v0 + 16, v4);
}

uint64_t sub_1CEFA238C()
{
  v0[4] = *(v0[3] + 16);
  type metadata accessor for XPCWrapper();
  v0[5] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[6] = v2;
  v0[7] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA2450, v2, v1);
}

uint64_t sub_1CEFA2450(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[4];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[5];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[8] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v8[9] = v14;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
    *v14 = v8;
    v14[1] = sub_1CEFA2578;
    a6 = sub_1CEFA4844;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB6750;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000019;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA2578()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 72);
  v5 = *v1;

  v6 = *(v2 + 64);
  if (v0)
  {

    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = sub_1CEFA4BFC;
  }

  else
  {

    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = sub_1CEFA4C04;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CEFA26DC()
{
  v0[4] = *(v0[3] + 16);
  type metadata accessor for XPCWrapper();
  v0[5] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[6] = v2;
  v0[7] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA27A0, v2, v1);
}

uint64_t sub_1CEFA27A0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[4];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[5];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[8] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v8[9] = v14;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
    *v14 = v8;
    v14[1] = sub_1CEFA2578;
    a6 = sub_1CEFA484C;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB6770;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000023;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA28E8()
{
  v0[3] = *(v0[2] + 16);
  type metadata accessor for XPCWrapper();
  v0[4] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[5] = v2;
  v0[6] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA29AC, v2, v1);
}

uint64_t sub_1CEFA29AC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[3];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[4];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[7] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v8[8] = v14;
    *v14 = v8;
    v14[1] = sub_1CEFA2AC4;
    a8 = MEMORY[0x1E69E6370];
    a6 = sub_1CEFA4854;
    a1 = v8 + 9;
    a5 = 0x80000001CEFB67A0;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000014;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA2AC4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 64);
  v5 = *v1;

  v6 = *(v2 + 56);
  if (v0)
  {

    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_1CEFA2C20;
  }

  else
  {

    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_1CEFA2C08;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CEFA2C58()
{
  v0[4] = *(v0[3] + 16);
  type metadata accessor for XPCWrapper();
  v0[5] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[6] = v2;
  v0[7] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA2D1C, v2, v1);
}

uint64_t sub_1CEFA2D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[4];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[5];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[8] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v8[9] = v14;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
    *v14 = v8;
    v14[1] = sub_1CEFA2E44;
    a6 = sub_1CEFA485C;
    a4 = 0x6863746566657270;
    a5 = 0xEF29286568636143;
    a1 = v8 + 2;
    a2 = v9;
    a3 = v11;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA2E44()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 72);
  v5 = *v1;

  v6 = *(v2 + 64);
  if (v0)
  {

    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = sub_1CEFA2FA0;
  }

  else
  {

    v7 = *(v3 + 48);
    v8 = *(v3 + 56);
    v9 = sub_1CEFA2F88;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t TC2Client.knownRateLimits(bundleIdentifier:featureIdentifier:skipFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 136) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEFA2FE8, 0, 0);
}

uint64_t sub_1CEFA2FE8()
{
  v0[9] = *(v0[8] + 16);
  type metadata accessor for XPCWrapper();
  v0[10] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[11] = v2;
  v0[12] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA30AC, v2, v1);
}

uint64_t sub_1CEFA30AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 72);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v8 + 80);
    v12 = *(v8 + 136);
    v17 = *(v8 + 32);
    v18 = *(v8 + 48);
    *(v9 + 16) = v10 + 1;
    v13 = swift_task_alloc();
    *(v8 + 104) = v13;
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v17;
    *(v13 + 48) = v18;
    *(v13 + 64) = v12;
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    *(v8 + 112) = v15;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA308, &unk_1CEFB3980);
    *v15 = v8;
    v15[1] = sub_1CEFA31F4;
    a6 = sub_1CEFA4864;
    a1 = v8 + 16;
    a5 = 0x80000001CEFB67C0;
    a2 = v9;
    a3 = v11;
    a4 = 0xD00000000000003ELL;
    a7 = v13;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA31F4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;

  v6 = *(v2 + 104);
  if (v0)
  {

    v7 = *(v3 + 88);
    v8 = *(v3 + 96);
    v9 = sub_1CEFA4BFC;
  }

  else
  {

    v7 = *(v3 + 88);
    v8 = *(v3 + 96);
    v9 = sub_1CEFA3338;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t TC2Client.init(userID:)(unint64_t a1)
{
  v2 = v1;
  type metadata accessor for XPCWrapper();
  swift_allocObject();
  *(v2 + 16) = sub_1CEF9360C(a1 | ((HIDWORD(a1) & 1) << 32));
  return v2;
}

uint64_t TC2Client.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1CEF94458();

  v3 = *(v1 + 16);

  return v1;
}

uint64_t TC2Client.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1CEF94458();

  v3 = *(v1 + 16);

  return MEMORY[0x1EEE6BDC0](v1, 24, 7);
}

uint64_t TC2Client.listRateLimits(bundleIdentifier:featureIdentifier:fetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 136) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEFA3490, 0, 0);
}

uint64_t sub_1CEFA3490()
{
  v0[9] = *(v0[8] + 16);
  type metadata accessor for XPCWrapper();
  v0[10] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[11] = v2;
  v0[12] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA3554, v2, v1);
}

uint64_t sub_1CEFA3554(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 72);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v8 + 80);
    v12 = *(v8 + 136);
    v17 = *(v8 + 32);
    v18 = *(v8 + 48);
    *(v9 + 16) = v10 + 1;
    v13 = swift_task_alloc();
    *(v8 + 104) = v13;
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v17;
    *(v13 + 48) = v18;
    *(v13 + 64) = v12;
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    *(v8 + 112) = v15;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA308, &unk_1CEFB3980);
    *v15 = v8;
    v15[1] = sub_1CEFA369C;
    a6 = sub_1CEFA487C;
    a1 = v8 + 16;
    a5 = 0x80000001CEFB6800;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000039;
    a7 = v13;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA369C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;

  v6 = *(v2 + 104);
  if (v0)
  {

    v7 = *(v3 + 88);
    v8 = *(v3 + 96);
    v9 = sub_1CEFA2FA0;
  }

  else
  {

    v7 = *(v3 + 88);
    v8 = *(v3 + 96);
    v9 = sub_1CEFA37E0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CEFA3804()
{
  v1 = v0[16];
  v2 = MEMORY[0x1E69E7CC0];
  if (v1 >> 60 != 15)
  {
    v3 = v0[15];
    sub_1CEF43738(v3, v0[16]);
    v4 = sub_1CEFA0254(v3, v1);
    sub_1CEF81204(v3, v1);
    if (v4)
    {
      v2 = v4;
    }
  }

  v5 = v0[1];

  return v5(v2);
}

uint64_t TC2Client.addRateLimit(bundleIdentifier:featureIdentifier:workloadType:count:duration:ttl:jitter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  *(v11 + 96) = v10;
  *(v11 + 80) = a9;
  *(v11 + 88) = a10;
  *(v11 + 72) = a8;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEFA38EC, 0, 0);
}

uint64_t sub_1CEFA38EC()
{
  v0[13] = *(v0[12] + 16);
  type metadata accessor for XPCWrapper();
  v0[14] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[15] = v2;
  v0[16] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA39B0, v2, v1);
}

uint64_t sub_1CEFA39B0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 104);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v8 + 112);
    v12 = *(v8 + 88);
    v13 = *(v8 + 64);
    v19 = *(v8 + 48);
    v20 = *(v8 + 72);
    v14 = swift_task_alloc();
    v15 = *(v8 + 16);
    v16 = *(v8 + 32);
    *(v9 + 16) = v10 + 1;
    *(v8 + 136) = v14;
    *(v14 + 16) = v9;
    *(v14 + 24) = v10;
    *(v14 + 32) = v15;
    *(v14 + 48) = v16;
    *(v14 + 64) = v19;
    *(v14 + 80) = v13;
    *(v14 + 88) = v20;
    *(v14 + 104) = v12;
    v17 = *(MEMORY[0x1E69E8920] + 4);
    a1 = swift_task_alloc();
    *(v8 + 144) = a1;
    *a1 = v8;
    a1[1] = sub_1CEFA3B04;
    a6 = sub_1CEFA48B0;
    a5 = 0x80000001CEFB6840;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000058;
    a7 = v14;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA3B04()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 144);
  v5 = *v1;

  v6 = *(v2 + 136);
  if (v0)
  {

    v7 = *(v3 + 120);
    v8 = *(v3 + 128);
    v9 = sub_1CEFA4BF8;
  }

  else
  {

    v7 = *(v3 + 120);
    v8 = *(v3 + 128);
    v9 = sub_1CEFA3C48;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CEFA3C7C()
{
  v0[3] = *(v0[2] + 16);
  type metadata accessor for XPCWrapper();
  v0[4] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[5] = v2;
  v0[6] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA3D40, v2, v1);
}

uint64_t sub_1CEFA3D40(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[3];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[4];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[7] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(MEMORY[0x1E69E8920] + 4);
    a1 = swift_task_alloc();
    v8[8] = a1;
    *a1 = v8;
    a1[1] = sub_1CEFA3E54;
    a6 = sub_1CEFA48F0;
    a5 = 0x80000001CEFB68A0;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000011;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA3E54()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 64);
  v5 = *v1;

  v6 = *(v2 + 56);
  if (v0)
  {
  }

  v7 = *(v3 + 40);
  v8 = *(v3 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1CEFA4BF8, v7, v8);
}

uint64_t sub_1CEFA3FB8()
{
  v0[5] = *(v0[4] + 16);
  type metadata accessor for XPCWrapper();
  v0[6] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[7] = v2;
  v0[8] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA407C, v2, v1);
}

uint64_t sub_1CEFA407C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[5];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[6];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[9] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v8[10] = v14;
    *v14 = v8;
    v14[1] = sub_1CEFA4194;
    a8 = MEMORY[0x1E6969080];
    a6 = sub_1CEFA48F8;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB68C0;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000020;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA4194()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;

  v6 = *(v2 + 72);
  if (v0)
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1CEFA4C00;
  }

  else
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1CEFA4BF4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CEFA42F8()
{
  v0[5] = *(v0[4] + 16);
  type metadata accessor for XPCWrapper();
  v0[6] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[7] = v2;
  v0[8] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA43BC, v2, v1);
}

uint64_t sub_1CEFA43BC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[5];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[6];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[9] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v8[10] = v14;
    *v14 = v8;
    v14[1] = sub_1CEFA4194;
    a8 = MEMORY[0x1E6969080];
    a6 = sub_1CEFA4900;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB68F0;
    a2 = v9;
    a3 = v11;
    a4 = 0xD00000000000001FLL;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t TC2Client.setServerDrivenConfiguration(json:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEFA44F8, 0, 0);
}

uint64_t sub_1CEFA44F8()
{
  v0[7] = *(v0[6] + 16);
  type metadata accessor for XPCWrapper();
  v0[8] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper);
  v2 = sub_1CEFA8480();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA45BC, v2, v1);
}

uint64_t sub_1CEFA45BC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), void *a7, uint64_t a8)
{
  v9 = v8[7];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[8];
    v13 = v8[4];
    v12 = v8[5];
    *(v9 + 16) = v10 + 1;
    v14 = swift_task_alloc();
    v8[11] = v14;
    v14[2] = v9;
    v14[3] = v10;
    v14[4] = v13;
    v14[5] = v12;
    v15 = *(MEMORY[0x1E69E8920] + 4);
    v16 = swift_task_alloc();
    v8[12] = v16;
    *v16 = v8;
    v16[1] = sub_1CEFA46E4;
    a8 = MEMORY[0x1E6969080];
    a6 = sub_1CEFA4908;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB6910;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000023;
    a7 = v14;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA46E4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 96);
  v5 = *v1;

  v6 = *(v2 + 88);
  if (v0)
  {

    v7 = *(v3 + 72);
    v8 = *(v3 + 80);
    v9 = sub_1CEFA4828;
  }

  else
  {

    v7 = *(v3 + 72);
    v8 = *(v3 + 80);
    v9 = sub_1CEFA4BF4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

void sub_1CEFA4908(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  sub_1CEF9C084(a1, v1[2], v1[3]);
}

unint64_t sub_1CEFA4978()
{
  result = qword_1EC4AA888;
  if (!qword_1EC4AA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA888);
  }

  return result;
}

uint64_t sub_1CEFA49CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_1CEFA4A10(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1CEFA4A30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CEFA4A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CEFA4AE0()
{
  result = qword_1EC4AA8D0;
  if (!qword_1EC4AA8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA8C8, &qword_1CEFB3C80);
    sub_1CEFA4A30(&qword_1EC4AA8A8, type metadata accessor for TrustedCloudComputeRateLimit);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA8D0);
  }

  return result;
}

unint64_t sub_1CEFA4B94()
{
  result = qword_1EC4AA8D8;
  if (!qword_1EC4AA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA8D8);
  }

  return result;
}

NSXPCInterface __swiftcall interfaceForTC2DaemonProtocol()()
{
  v0 = objc_opt_self();
  v1 = [v0 interfaceWithProtocol_];
  v2 = [v0 interfaceWithProtocol_];
  [v1 setInterface:v2 forSelector:sel_trustedRequestWithParameters_requestID_bundleIdentifier_originatingBundleIdentifier_featureIdentifier_sessionIdentifier_completion_ argumentIndex:0 ofReply:1];

  return v1;
}

uint64_t sub_1CEFA4CB0()
{
  v0 = sub_1CEFA7E20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1CEFA7E10();
  type metadata accessor for PrivateCloudComputeError();
  sub_1CEFA6288(&qword_1EC4AA900, type metadata accessor for PrivateCloudComputeError);
  v3 = sub_1CEFA7E00();

  return v3;
}

uint64_t sub_1CEFA4E38()
{
  v0 = sub_1CEFA7E20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1CEFA7E10();
  sub_1CEFA612C();
  v3 = sub_1CEFA7E00();

  return v3;
}

uint64_t sub_1CEFA4F88()
{
  v0 = sub_1CEFA7E20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1CEFA7E10();
  type metadata accessor for TrustedCloudComputeError(0);
  sub_1CEFA6288(&qword_1EC4AA8F8, type metadata accessor for TrustedCloudComputeError);
  v3 = sub_1CEFA7E00();

  return v3;
}

uint64_t sub_1CEFA5110()
{
  v0 = sub_1CEFA7E20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1CEFA7E10();
  type metadata accessor for TrustedCloudComputeRateLimit();
  sub_1CEFA6288(&qword_1EC4AA8F0, type metadata accessor for TrustedCloudComputeRateLimit);
  v3 = sub_1CEFA7E00();

  return v3;
}

uint64_t sub_1CEFA5294()
{
  v0 = sub_1CEFA7E20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1CEFA7E10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA8C8, &qword_1CEFB3C80);
  sub_1CEFA61D4();
  v3 = sub_1CEFA7E00();

  return v3;
}

uint64_t sub_1CEFA53F4()
{
  v13 = v0[7];
  v14 = v0[8];
  v15 = *(v0 + 144);
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v6 = *v0;
  v7 = v0[1];
  v1 = sub_1CEFA7E20();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1CEFA7E10();
  sub_1CEF8B0C4();
  v4 = sub_1CEFA7E00();

  return v4;
}

uint64_t sub_1CEFA5578()
{
  v0 = sub_1CEFA7E20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1CEFA7E10();
  type metadata accessor for TC2TrustedRequestMetadata(0);
  sub_1CEFA6288(&qword_1EC4AA6D8, type metadata accessor for TC2TrustedRequestMetadata);
  v3 = sub_1CEFA7E00();

  return v3;
}

uint64_t sub_1CEFA56FC()
{
  v0 = sub_1CEFA7E20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1CEFA7E10();
  sub_1CEF8C9BC();
  v3 = sub_1CEFA7E00();

  return v3;
}

uint64_t sub_1CEFA5848()
{
  v0 = sub_1CEFA7E20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1CEFA7E10();
  sub_1CEFA6180();
  v3 = sub_1CEFA7E00();

  return v3;
}

uint64_t TC2JSON<>.json.getter()
{
  v0 = sub_1CEFA7E20();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1CEFA7E10();
  v3 = sub_1CEFA7E00();

  return v3;
}

uint64_t TC2JSON<>.init(json:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1CEFA8220();
  v21 = *(v8 - 8);
  v22 = v8;
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1CEFA85B0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = sub_1CEFA7DF0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1CEFA7DE0();
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  v17 = *(a3 - 8);
  v18 = *(v17 + 56);
  v18(v13, 0, 1, a3);
  (*(v17 + 32))(a4, v13, a3);
  return (v18)(a4, 0, 1, a3);
}

uint64_t sub_1CEFA5F7C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1CEFA0254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEFA5FAC()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v11 = *(v0 + 144);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1CEFA53F4();
}

uint64_t sub_1CEFA60BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1CEFA4E38();
}

unint64_t sub_1CEFA612C()
{
  result = qword_1EDE379E8[0];
  if (!qword_1EDE379E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE379E8);
  }

  return result;
}

unint64_t sub_1CEFA6180()
{
  result = qword_1EC4AA8E0;
  if (!qword_1EC4AA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA8E0);
  }

  return result;
}

unint64_t sub_1CEFA61D4()
{
  result = qword_1EC4AA8E8;
  if (!qword_1EC4AA8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA8C8, &qword_1CEFB3C80);
    sub_1CEFA6288(&qword_1EC4AA8F0, type metadata accessor for TrustedCloudComputeRateLimit);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA8E8);
  }

  return result;
}

uint64_t sub_1CEFA6288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t trustedRequestEventInfo(with:step:errors:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *a2;
  sub_1CEF8A284(a1, v21 - v11);
  v12 = *(a3 + 16);
  if (v12)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1CEF4B2B8(0, v12, 0);
    v13 = v22;
    v14 = (a3 + 32);
    do
    {
      v15 = *v14;
      MEMORY[0x1D38670C0](*v14);
      sub_1CEFA80F0();

      v22 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1CEF4B2B8((v16 > 1), v17 + 1, 1);
        v13 = v22;
      }

      *(v13 + 16) = v17 + 1;
      sub_1CEF53104(v21, v13 + 40 * v17 + 32);
      ++v14;
      --v12;
    }

    while (v12);
  }

  sub_1CEFA81F0();
  v18 = *MEMORY[0x1E698C388];
  v19 = sub_1CEFA8180();
  return (*(*(v19 - 8) + 104))(a4, v18, v19);
}

uint64_t sub_1CEFA6578()
{
  v0 = sub_1CEFA8220();
  __swift_allocate_value_buffer(v0, qword_1EC4AA908);
  __swift_project_value_buffer(v0, qword_1EC4AA908);
  return sub_1CEFA8210();
}

PrivateCloudCompute::StepIdentifier_optional __swiftcall StepIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CEFA8700();

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

  *v2 = v5;
  return result;
}

unint64_t StepIdentifier.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000022;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

uint64_t sub_1CEFA6688(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000022;
  }

  else
  {
    v4 = 0xD000000000000023;
  }

  if (v3)
  {
    v5 = "a";
  }

  else
  {
    v5 = "uteRequestInProcess";
  }

  if (*a2)
  {
    v6 = 0xD000000000000022;
  }

  else
  {
    v6 = 0xD000000000000023;
  }

  if (*a2)
  {
    v7 = "uteRequestInProcess";
  }

  else
  {
    v7 = "a";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();
  }

  return v9 & 1;
}

uint64_t sub_1CEFA6730()
{
  v1 = *v0;
  sub_1CEFA8A00();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEFA67AC()
{
  *v0;
  sub_1CEFA8340();
}

uint64_t sub_1CEFA6814()
{
  v1 = *v0;
  sub_1CEFA8A00();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEFA688C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CEFA8700();

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

  *a2 = v7;
  return result;
}

void sub_1CEFA68EC(unint64_t *a1@<X8>)
{
  v2 = "uteRequestInProcess";
  v3 = 0xD000000000000022;
  if (!*v1)
  {
    v3 = 0xD000000000000023;
    v2 = "a";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t withAppleIntelligenceEvent<A>(isolation:id:step:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a4;
  *(v8 + 72) = a6;
  *(v8 + 56) = a1;
  v12 = sub_1CEFA8070();
  *(v8 + 96) = v12;
  v13 = *(v12 - 8);
  *(v8 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9490, &unk_1CEFB1850) - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  v16 = *(a8 - 8);
  *(v8 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v18 = sub_1CEFA8190();
  *(v8 + 152) = v18;
  v19 = *(v18 - 8);
  *(v8 + 160) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020) - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v22 = sub_1CEFA8180();
  *(v8 + 200) = v22;
  v23 = *(v22 - 8);
  *(v8 + 208) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v25 = sub_1CEFA81E0();
  *(v8 + 240) = v25;
  v26 = *(v25 - 8);
  *(v8 + 248) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 384) = *a5;
  if (a2)
  {
    swift_getObjectType();
    v28 = sub_1CEFA8480();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  *(v8 + 272) = v28;
  *(v8 + 280) = v30;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA6C5C, v28, v30);
}

uint64_t sub_1CEFA6C5C()
{
  v27 = v0;
  *(v0 + 288) = sub_1CEFA81D0();
  sub_1CEFA81C0();
  v1 = *(v0 + 384);
  v2 = *(v0 + 256);
  v3 = *(v0 + 232);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 64);
  v9 = *(v7 + 16);
  *(v0 + 296) = v9;
  *(v0 + 304) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v8, v6);
  v10 = *(v7 + 56);
  *(v0 + 312) = v10;
  *(v0 + 320) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v4, 0, 1, v6);
  v26[0] = v1;
  trustedRequestEventInfo(with:step:errors:)(v4, v26, MEMORY[0x1E69E7CC0], v3);
  sub_1CEF3D55C(v4, &qword_1EC4A9068, qword_1CEFAC020);
  sub_1CEFA81B0();
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  v14 = *(v0 + 240);
  v15 = *(v0 + 248);
  v16 = *(v0 + 232);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v19 = *(v0 + 72);
  v20 = *(v18 + 8);
  *(v0 + 328) = v20;
  *(v0 + 336) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);

  (*(v15 + 32))(v12, v13, v14);
  v25 = (v19 + *v19);
  v21 = v19[1];
  v22 = swift_task_alloc();
  *(v0 + 344) = v22;
  *v22 = v0;
  v22[1] = sub_1CEFA71F4;
  v23 = *(v0 + 144);
  v24 = *(v0 + 80);

  return v25(v23);
}

uint64_t sub_1CEFA71F4()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 280);
  v6 = *(v2 + 272);
  if (v0)
  {
    v7 = sub_1CEFA79BC;
  }

  else
  {
    v7 = sub_1CEFA7330;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CEFA7330()
{
  v34 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  sub_1CEFA81C0();
  if (v1)
  {
    (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
  }

  else
  {
    v29 = *(v0 + 328);
    v31 = *(v0 + 336);
    v3 = *(v0 + 312);
    v4 = *(v0 + 304);
    v5 = *(v0 + 384);
    v26 = *(v0 + 264);
    v6 = *(v0 + 248);
    v24 = *(v0 + 320);
    v25 = *(v0 + 240);
    v7 = *(v0 + 224);
    v8 = *(v0 + 192);
    v9 = *(v0 + 176);
    v27 = *(v0 + 200);
    v10 = *(v0 + 128);
    v11 = *(v0 + 96);
    (*(v0 + 296))(v8, *(v0 + 64), v11);
    v3(v8, 0, 1, v11);
    v33[0] = v5;
    trustedRequestEventInfo(with:step:errors:)(v8, v33, MEMORY[0x1E69E7CC0], v7);
    sub_1CEF3D55C(v8, &qword_1EC4A9068, qword_1CEFAC020);
    (*(v6 + 16))(v10, v26, v25);
    (*(v6 + 56))(v10, 0, 1, v25);
    sub_1CEFA81A0();

    sub_1CEF3D55C(v10, &qword_1EC4A9490, &unk_1CEFB1850);
    v29(v7, v27);
    (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
  }

  (*(*(v0 + 136) + 32))(*(v0 + 56), *(v0 + 144), *(v0 + 88));
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  v15 = *(v0 + 224);
  v14 = *(v0 + 232);
  v16 = *(v0 + 216);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  v21 = *(v0 + 144);
  v28 = *(v0 + 128);
  v30 = *(v0 + 120);
  v32 = *(v0 + 112);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1CEFA765C()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 280);
  v6 = *(v2 + 272);
  if (v0)
  {
    v7 = sub_1CEFA78A8;
  }

  else
  {
    v7 = sub_1CEFA7798;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CEFA7798()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = *(v0 + 120);
  v15 = *(v0 + 112);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1CEFA78A8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = *(v0 + 120);
  v15 = *(v0 + 112);
  v16 = *(v0 + 376);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1CEFA79BC()
{
  v41 = v0;
  v1 = *(v0 + 288);
  sub_1CEFA81C0();
  v2 = *(v0 + 352);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  LOBYTE(v1) = *(v0 + 384);
  v6 = *(v0 + 248);
  v33 = *(v0 + 240);
  v35 = *(v0 + 264);
  v32 = *(v0 + 216);
  v7 = *(v0 + 192);
  v37 = *(v0 + 168);
  v8 = *(v0 + 120);
  v9 = *(v0 + 96);
  (*(v0 + 296))(v7, *(v0 + 64), v9);
  v4(v7, 0, 1, v9);
  v40[0] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9340, &qword_1CEFB19C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CEFAA480;
  *(inited + 32) = v2;
  MEMORY[0x1D38670C0](v2);
  trustedRequestEventInfo(with:step:errors:)(v7, v40, inited, v32);
  swift_setDeallocating();

  sub_1CEF3D55C(v7, &qword_1EC4A9068, qword_1CEFAC020);
  (*(v6 + 16))(v8, v35, v33);
  (*(v6 + 56))(v8, 0, 1, v33);
  sub_1CEFA81A0();
  v12 = *(v0 + 328);
  v11 = *(v0 + 336);
  v13 = *(v0 + 216);
  v14 = *(v0 + 200);
  v15 = *(v0 + 120);

  sub_1CEF3D55C(v15, &qword_1EC4A9490, &unk_1CEFB1850);
  v12(v13, v14);
  v16 = *(v0 + 352);
  v17 = *(v0 + 264);
  v18 = *(v0 + 240);
  v19 = *(v0 + 248);
  swift_willThrow();
  (*(v19 + 8))(v17, v18);
  v21 = *(v0 + 256);
  v20 = *(v0 + 264);
  v23 = *(v0 + 224);
  v22 = *(v0 + 232);
  v24 = *(v0 + 216);
  v26 = *(v0 + 184);
  v25 = *(v0 + 192);
  v28 = *(v0 + 168);
  v27 = *(v0 + 176);
  v29 = *(v0 + 144);
  v34 = *(v0 + 128);
  v36 = *(v0 + 120);
  v38 = *(v0 + 112);
  v39 = *(v0 + 352);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1CEFA7D20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CEFA7D6C()
{
  result = qword_1EC4AA920;
  if (!qword_1EC4AA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA920);
  }

  return result;
}