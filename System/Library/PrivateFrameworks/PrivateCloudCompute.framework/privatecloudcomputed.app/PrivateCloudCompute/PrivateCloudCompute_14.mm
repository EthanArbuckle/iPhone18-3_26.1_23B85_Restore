uint64_t sub_10014B0D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10014B10C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014B13C(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_100011DF4(&qword_100227A58, &qword_1001D3600);
  sub_1001D1AB0();
  sub_1001D1F00();
  result = sub_1001CFF60();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10014B20C()
{
  v1 = v0;
  v2 = v0 + *(*v0 + 88);
  v3 = *(*v0 + 80);
  sub_100011DF4(&qword_100227A58, &qword_1001D3600);
  sub_1001D1AB0();
  sub_1001D1F00();
  v4 = *(sub_1001CFF60() + 28);
  v5 = sub_1001CFF70();
  sub_10015607C(v5);
  return v1;
}

uint64_t sub_10014B2C8()
{
  sub_10014B20C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_10014B338(uint64_t *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  v1 = *a1;
  sub_100011DF4(&qword_100227A58, &qword_1001D3600);
  sub_1001D1AB0();
  sub_1001D1F00();
  return sub_1001CFF60();
}

uint64_t Error.telemetryString.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = Error._telemetryString.getter(a1, a2);
  a3[1] = v4;
  v5 = enum case for EventValue.string(_:);
  v6 = sub_1001CFEE0();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

unint64_t Error._telemetryString.getter(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  v89 = sub_1001D1310();
  v85 = *(v89 - 8);
  v3 = *(v85 + 64);
  v5 = __chkstk_darwin(v89, v4);
  v84 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v88 = &v81 - v8;
  v93 = sub_1001D0950();
  v87 = *(v93 - 8);
  v9 = *(v87 + 64);
  v11 = __chkstk_darwin(v93, v10);
  v86 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v92 = &v81 - v14;
  v97 = sub_1001D0960();
  v91 = *(v97 - 8);
  v15 = *(v91 + 64);
  v17 = __chkstk_darwin(v97, v16);
  v90 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v96 = &v81 - v20;
  v101 = sub_1001D0050();
  v95 = *(v101 - 8);
  v21 = *(v95 + 64);
  v23 = __chkstk_darwin(v101, v22);
  v94 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v100 = &v81 - v26;
  v104 = sub_1001D0060();
  v99 = *(v104 - 8);
  v27 = *(v99 + 64);
  v29 = __chkstk_darwin(v104, v28);
  v98 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v31);
  v103 = &v81 - v32;
  v33 = sub_1001CFFC0();
  v102 = *(v33 - 8);
  v34 = *(v102 + 64);
  v36 = __chkstk_darwin(v33, v35);
  v38 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v39);
  v41 = &v81 - v40;
  v42 = sub_1001D0200();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v46 = __chkstk_darwin(v42, v45);
  v48 = &v81 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v46, v49);
  v52 = &v81 - v51;
  v53 = *(a1 - 8);
  v54 = *(v53 + 64);
  v56 = __chkstk_darwin(v50, v55);
  v83 = &v81 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56, v58);
  v60 = &v81 - v59;
  v106 = v53;
  v82 = *(v53 + 16);
  v82(&v81 - v59, v107, a1);
  if (swift_dynamicCast())
  {
    (*(v43 + 32))(v48, v52, v42);
    v61 = sub_1001D0190();
    (*(v43 + 8))(v48, v42);
    v62 = v106;
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    v61 = sub_1001281A0(v108, v109);

    v62 = v106;
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    v63 = v102;
    (*(v102 + 32))(v38, v41, v33);
    v61 = sub_10014BDF4(v38);
    (*(v63 + 8))(v38, v33);
LABEL_9:
    v62 = v106;
    goto LABEL_19;
  }

  v65 = v103;
  v64 = v104;
  if (swift_dynamicCast())
  {
    v67 = v98;
    v66 = v99;
    (*(v99 + 32))(v98, v65, v64);
    v61 = sub_10014C25C(v67);
    (*(v66 + 8))(v67, v64);
    goto LABEL_9;
  }

  v69 = v100;
  v68 = v101;
  v70 = swift_dynamicCast();
  v62 = v106;
  if (v70)
  {
    v72 = v94;
    v71 = v95;
    (*(v95 + 32))(v94, v69, v68);
    v73 = sub_10014C758(v72);
LABEL_18:
    v61 = v73;
    (*(v71 + 8))(v72, v68);
    goto LABEL_19;
  }

  v74 = v96;
  v68 = v97;
  if (swift_dynamicCast())
  {
    v72 = v90;
    v71 = v91;
    (*(v91 + 32))(v90, v74, v68);
    v73 = sub_10014CA0C(v72);
    goto LABEL_18;
  }

  v75 = v92;
  v68 = v93;
  if (swift_dynamicCast())
  {
    v71 = v87;
    v72 = v86;
    (*(v87 + 32))(v86, v75, v68);
    v73 = sub_10014CB78(v72);
    goto LABEL_18;
  }

  v76 = v88;
  v68 = v89;
  if (swift_dynamicCast())
  {
    v71 = v85;
    v72 = v84;
    (*(v85 + 32))(v84, v76, v68);
    v73 = sub_10014CDA8(v72);
    goto LABEL_18;
  }

  v78 = v83;
  v82(v83, v107, a1);
  if (sub_1001D2430())
  {
    (*(v62 + 8))(v78, a1);
  }

  else
  {
    swift_allocError();
    (*(v62 + 32))(v79, v78, a1);
  }

  v80 = sub_1001CFA10();

  v61 = sub_100127B28(v80);

LABEL_19:
  (*(v62 + 8))(v60, a1);
  return v61;
}

unint64_t sub_10014BDF4(uint64_t a1)
{
  v2 = sub_1001CFFC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == enum case for CloudAttestationError.unexpected(_:))
  {
    (*(v3 + 96))(v7, v2);
    v10 = *v7;
    v9 = v7[1];
    v11 = v10 == 0xD000000000000017 && 0x80000001001E5DD0 == v9;
    if (v11 || (sub_1001D2470() & 1) != 0)
    {

      return 0xD000000000000035;
    }

    else if (v10 == 0x6C706D6920746F4ELL && v9 == 0xEF6465746E656D65)
    {

      return 0xD00000000000002FLL;
    }

    else
    {
      v14 = sub_1001D2470();

      if (v14)
      {
        return 0xD00000000000002FLL;
      }

      else
      {
        return 0xD000000000000020;
      }
    }
  }

  else if (v8 == enum case for CloudAttestationError.attestError(_:))
  {
    (*(v3 + 8))(v7, v2);
    return 0xD000000000000021;
  }

  else if (v8 == enum case for CloudAttestationError.validateError(_:))
  {
    (*(v3 + 8))(v7, v2);
    return 0xD000000000000023;
  }

  else if (v8 == enum case for CloudAttestationError.expired(_:))
  {
    (*(v3 + 96))(v7, v2);
    v15 = sub_1001CFD60();
    (*(*(v15 - 8) + 8))(v7, v15);
    return 0xD00000000000001DLL;
  }

  else if (v8 == enum case for CloudAttestationError.missingSealedHash(_:))
  {
    (*(v3 + 96))(v7, v2);
    v16 = sub_1001CFDA0();
    (*(*(v16 - 8) + 8))(v7, v16);
    return 0xD000000000000027;
  }

  else if (v8 == enum case for CloudAttestationError.invalidNonce(_:))
  {
    return 0xD000000000000022;
  }

  else
  {
    v17 = v8;
    result = 0xD00000000000002BLL;
    if (v17 != enum case for CloudAttestationError.emptyCertificateChain(_:) && v17 != enum case for CloudAttestationError.malformedSecureConfig(_:))
    {
      if (v17 == enum case for CloudAttestationError.missingAttestingKey(_:))
      {
        return 0xD000000000000029;
      }

      else
      {
        result = 0xD000000000000026;
        if (v17 != enum case for CloudAttestationError.untrustedAppData(_:))
        {
          (*(v3 + 8))(v7, v2);
          return 0xD000000000000026;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10014C25C(uint64_t a1)
{
  v2 = 0xD000000000000022;
  v3 = sub_1001D0060();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v8, a1, v3);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == enum case for TransparencyLogError.httpError(_:))
  {
    v10 = *(v4 + 96);
    v4 += 96;
    v9 = v10(v8, v3);
    v11 = *v8;
    v24 = 0xD00000000000001FLL;
    v25 = 0x80000001001E60D0;
    if ((v11 & 0x8000000000000000) == 0)
    {
      v22 = v11;
LABEL_7:
      v14._countAndFlagsBits = sub_1001D23A0();
      object = v14._object;
LABEL_18:
      v14._object = object;
      sub_1001D18B0(v14);

      return v24;
    }

    v22 = 78;
    v23 = 0xE100000000000000;
    v16 = __OFSUB__(0, v11);
    v17 = -v11;
    if (!v16)
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v9 != enum case for TransparencyLogError.unrecognized(_:))
  {
    if (v9 == enum case for TransparencyLogError.unknown(_:))
    {
      (*(v4 + 8))(v8, v3);
      return 0xD00000000000001CLL;
    }

LABEL_14:
    if (v9 == enum case for TransparencyLogError.clientError(_:))
    {
      (*(v4 + 8))(v8, v3);
      return 0xD000000000000020;
    }

    if (v9 == enum case for TransparencyLogError.pendingExpiration(_:))
    {
      (*(v4 + 96))(v8, v3);
      v18 = *(sub_100011AC0(&qword_10022E320, &qword_1001DEF58) + 48);
      v19 = sub_1001CFD60();
      v20 = *(*(v19 - 8) + 8);
      v20(v8 + v18, v19);
      v20(v8, v19);
      return 0xD000000000000026;
    }

    if (v9 == enum case for TransparencyLogError.internalError(_:))
    {
      return v2;
    }

    if (v9 == enum case for TransparencyLogError.mutationPending(_:))
    {
      return 0xD000000000000024;
    }

    if (v9 == enum case for TransparencyLogError.invalidRequest(_:))
    {
      return 0xD000000000000023;
    }

    if (v9 == enum case for TransparencyLogError.notFound(_:))
    {
      return 0xD00000000000001DLL;
    }

    if (v9 == enum case for TransparencyLogError.invalidProof(_:))
    {
      return 0xD000000000000021;
    }

    if (v9 == enum case for TransparencyLogError.unknownStatus(_:))
    {
      return v2;
    }

    if (v9 == enum case for TransparencyLogError.insertFailed(_:))
    {
      return 0xD000000000000021;
    }

    if (v9 != enum case for TransparencyLogError.expired(_:))
    {
      (*(v4 + 8))(v8, v3);
      return 0xD000000000000025;
    }

    return 0xD00000000000001CLL;
  }

  (*(v4 + 96))(v8, v3);
  v12 = *v8;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1001D2030(18);

  v24 = 0xD000000000000022;
  v25 = 0x80000001001E5F90;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v22 = v12;
    goto LABEL_7;
  }

  v22 = 78;
  v23 = 0xE100000000000000;
  v17 = -v12;
  if (!__OFSUB__(0, v12))
  {
LABEL_17:
    v21[1] = v17;
    v26._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v26);

    v14._countAndFlagsBits = v22;
    object = v23;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t sub_10014C758(uint64_t a1)
{
  v2 = 0xD00000000000001FLL;
  v3 = sub_1001D0050();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v8, a1, v3);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == enum case for TransparencyPolicy.Error.malformedRelease(_:))
  {
    (*(v4 + 96))(v8, v3);
    v10 = *v8;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1001D2030(22);

    v11 = 0x80000001001E61B0;
    v12 = 0xD000000000000029;
LABEL_5:
    v19 = v12;
    v20 = v11;
    v14 = sub_1001CFA10();
    v15 = sub_100127B28(v14);
    v17 = v16;

    v21._countAndFlagsBits = v15;
    v21._object = v17;
    sub_1001D18B0(v21);

    return v19;
  }

  if (v9 == enum case for TransparencyPolicy.Error.unknown(_:))
  {
    (*(v4 + 96))(v8, v3);
    v13 = *v8;
    v11 = 0x80000001001E6120;
    v12 = 0xD000000000000020;
    goto LABEL_5;
  }

  if (v9 == enum case for TransparencyPolicy.Error.missingProofs(_:))
  {
    return 0xD000000000000025;
  }

  if (v9 == enum case for TransparencyPolicy.Error.notIncluded(_:))
  {
    return 0xD000000000000023;
  }

  if (v9 != enum case for TransparencyPolicy.Error.expired(_:))
  {
    (*(v4 + 8))(v8, v3);
    return 0xD000000000000028;
  }

  return v2;
}

unint64_t sub_10014CA0C(uint64_t a1)
{
  v2 = 0xD000000000000024;
  v3 = sub_1001D0960();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == enum case for BinaryEncodingError.anyTranscodeFailure(_:))
  {
    return 0xD000000000000027;
  }

  if (v9 == enum case for BinaryEncodingError.missingRequiredFields(_:))
  {
    return 0xD000000000000029;
  }

  (*(v4 + 8))(v8, v3);
  return v2;
}

unint64_t sub_10014CB78(uint64_t a1)
{
  v2 = 0xD000000000000025;
  v3 = sub_1001D0950();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == enum case for BinaryDecodingError.trailingGarbage(_:))
  {
    return 0xD000000000000023;
  }

  if (v9 == enum case for BinaryDecodingError.truncated(_:))
  {
    return 0xD00000000000001DLL;
  }

  if (v9 == enum case for BinaryDecodingError.invalidUTF8(_:))
  {
    return 0xD00000000000001FLL;
  }

  if (v9 != enum case for BinaryDecodingError.malformedProtobuf(_:))
  {
    if (v9 == enum case for BinaryDecodingError.missingRequiredFields(_:))
    {
      return 0xD000000000000029;
    }

    else if (v9 == enum case for BinaryDecodingError.internalExtensionError(_:))
    {
      return 0xD00000000000002ALL;
    }

    else if (v9 != enum case for BinaryDecodingError.messageDepthLimit(_:))
    {
      (*(v4 + 8))(v8, v3);
      return 0xD000000000000024;
    }
  }

  return v2;
}

uint64_t sub_10014CDA8(uint64_t a1)
{
  v2 = sub_1001D1310();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == enum case for NWError.posix(_:))
  {
    (*(v3 + 96))(v7, v2);
    v9 = *v7;
    strcpy(v20, "NWError_posix_");
    HIBYTE(v20[1]) = -18;
    result = sub_1001D0EA0();
    if ((result & 0x80000000) == 0)
    {
      LODWORD(v18) = result;
LABEL_19:
      v15._countAndFlagsBits = sub_1001D23A0();
      object = v15._object;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v8 == enum case for NWError.dns(_:))
  {
    v11 = *(v3 + 96);
    v3 += 96;
    v8 = v11(v7, v2);
    v12 = *v7;
    strcpy(v20, "NWError_dns_");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v18 = 78;
    v19 = 0xE100000000000000;
    v13 = __OFSUB__(0, v12);
    v14 = -v12;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v8 != enum case for NWError.tls(_:))
  {
    if (v8 != enum case for NWError.wifiAware(_:))
    {
      (*(v3 + 8))(v7, v2);
      return 0xD000000000000018;
    }

    result = (*(v3 + 96))(v7, v2);
    v12 = *v7;
    v20[0] = 0xD000000000000012;
    v20[1] = 0x80000001001E6380;
    if ((v12 & 0x80000000) != 0)
    {
      v18 = 78;
      v19 = 0xE100000000000000;
      v13 = __OFSUB__(0, v12);
      v14 = -v12;
      if (!v13)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_18:
    LODWORD(v18) = v12;
    goto LABEL_19;
  }

  result = (*(v3 + 96))(v7, v2);
  v12 = *v7;
  strcpy(v20, "NWError_tls_");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  v18 = 78;
  v19 = 0xE100000000000000;
  v13 = __OFSUB__(0, v12);
  v14 = -v12;
  if (!v13)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_14:
  v18 = 78;
  v19 = 0xE100000000000000;
  v14 = -result;
  if (__OFSUB__(0, result))
  {
    goto LABEL_26;
  }

LABEL_15:
  v17[3] = v14;
  v21._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v21);

  v15._countAndFlagsBits = v18;
  object = v19;
LABEL_20:
  v15._object = object;
  sub_1001D18B0(v15);

  return v20[0];
}

uint64_t FeatureFlagChecker.isEnabled(_:)(uint64_t a1)
{
  v2 = sub_1001D0180();
  v5[3] = v2;
  v5[4] = sub_10014D188();
  v3 = sub_10003B47C(v5);
  (*(*(v2 - 8) + 16))(v3, a1, v2);
  LOBYTE(a1) = sub_1001CFEC0();
  sub_100011CF0(v5);
  return a1 & 1;
}

unint64_t sub_10014D188()
{
  result = qword_100229588;
  if (!qword_100229588)
  {
    sub_1001D0180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229588);
  }

  return result;
}

uint64_t *blockingIOQueue.unsafeMutableAddressor()
{
  if (qword_100227960 != -1)
  {
    swift_once();
  }

  return &blockingIOQueue;
}

void sub_10014D240(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFB10();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v58 - v12;
  v14 = sub_1001D02F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001D0E60();
  v65 = *(v20 - 8);
  v66 = v20;
  v21 = *(v65 + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v19, enum case for TC2LogCategory.daemon(_:), v14);
  sub_1001D08B0();
  (*(v15 + 8))(v19, v14);
  v25 = [objc_opt_self() defaultManager];
  v26 = v5[2];
  v62 = a1;
  v26(v13, a1, v4);
  v61 = v10;
  v63 = a2;
  v26(v10, a2, v4);
  v64 = v24;
  v27 = sub_1001D0E50();
  v28 = sub_1001D1DD0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v67 = v59;
    *v29 = 136315394;
    sub_1001507A0(&qword_1002302F0, &type metadata accessor for URL);
    v30 = sub_1001D23A0();
    v60 = v25;
    v32 = v31;
    v33 = v5[1];
    v33(v13, v4);
    v34 = sub_1000954E0(v30, v32, &v67);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = v61;
    v36 = sub_1001D23A0();
    v38 = v37;
    v33(v35, v4);
    v39 = sub_1000954E0(v36, v38, &v67);
    v25 = v60;

    *(v29 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v27, v28, "migrating file source=%s destination=%s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = v5[1];
    v41(v61, v4);
    v41(v13, v4);
  }

  sub_1001CFA80(v40);
  v43 = v42;
  sub_1001CFA80(v44);
  v46 = v45;
  v67 = 0;
  v47 = [v25 moveItemAtURL:v43 toURL:v45 error:&v67];

  v48 = v64;
  if (v47)
  {
    v49 = *(v65 + 8);
    v50 = v67;
    v49(v48, v66);
  }

  else
  {
    v51 = v67;
    sub_1001CFA20();

    swift_willThrow();
    swift_errorRetain();
    v52 = sub_1001D0E50();
    v53 = sub_1001D1DE0();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v25;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v52, v53, "migration failed error=%@", v55, 0xCu);
      sub_100011F00(v56, &unk_1002301D0, &qword_1001D4F50);
    }

    else
    {
    }

    (*(v65 + 8))(v48, v66);
  }
}

void sub_10014D874(uint64_t a1)
{
  v2 = sub_1001CFB10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001D02F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001D0E60();
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  __chkstk_darwin(v14, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = [objc_opt_self() defaultManager];
  sub_1001CFA30();
  v19 = sub_1001D17A0();

  v20 = [v47 fileExistsAtPath:v19];

  if (v20)
  {
    (*(v9 + 104))(v13, enum case for TC2LogCategory.daemon(_:), v8);
    sub_1001D08B0();
    (*(v9 + 8))(v13, v8);
    (*(v3 + 16))(v7, a1, v2);
    v44 = v18;
    v21 = sub_1001D0E50();
    v22 = sub_1001D1DD0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v48 = v24;
      *v23 = 136315138;
      v25 = sub_1001CFA50();
      v27 = v26;
      (*(v3 + 8))(v7, v2);
      v28 = sub_1000954E0(v25, v27, &v48);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "deleting file url=%s", v23, 0xCu);
      sub_100011CF0(v24);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    sub_1001CFA80(v29);
    v32 = v31;
    v48 = 0;
    v33 = [v47 removeItemAtURL:v31 error:&v48];

    v34 = v44;
    if (v33)
    {
      v35 = *(v45 + 8);
      v36 = v48;
      v35(v34, v46);
    }

    else
    {
      v37 = v48;
      sub_1001CFA20();

      swift_willThrow();
      swift_errorRetain();
      v38 = sub_1001D0E50();
      v39 = sub_1001D1DE0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        swift_errorRetain();
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v42;
        *v41 = v42;
        _os_log_impl(&_mh_execute_header, v38, v39, "deletion failed error=%@", v40, 0xCu);
        sub_100011F00(v41, &unk_1002301D0, &qword_1001D4F50);
      }

      else
      {
      }

      (*(v45 + 8))(v34, v46);
    }
  }

  else
  {
    v30 = v47;
  }
}

uint64_t sub_10014DE14()
{
  v0 = sub_1001D1E30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001D1410();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v9 = sub_1001D1E20();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  sub_10005A1A4();
  sub_1001D1E10();
  sub_1001D1400();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_1001D1E60();
  blockingIOQueue = result;
  return result;
}

uint64_t sub_10014DFC4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v124 = a4;
  v127 = a3;
  v132 = a2;
  v125 = a1;
  v4 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = (&v113 - v7);
  v116 = sub_1001CFA40();
  v115 = *(v116 - 8);
  v9 = *(v115 + 64);
  __chkstk_darwin(v116, v10);
  v114 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v119 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v128 = &v113 - v19;
  v21 = __chkstk_darwin(v18, v20);
  v120 = &v113 - v22;
  v24 = __chkstk_darwin(v21, v23);
  v117 = &v113 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v29 = &v113 - v28;
  __chkstk_darwin(v27, v30);
  v130 = &v113 - v31;
  v32 = sub_1001CFB10();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v36 = __chkstk_darwin(v32, v35);
  v121 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36, v38);
  v118 = &v113 - v40;
  v42 = __chkstk_darwin(v39, v41);
  v133 = &v113 - v43;
  v45 = __chkstk_darwin(v42, v44);
  v47 = &v113 - v46;
  __chkstk_darwin(v45, v48);
  v50 = &v113 - v49;
  v51 = sub_1001D02F0();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  __chkstk_darwin(v51, v54);
  v56 = &v113 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1001D0E60();
  v122 = *(v123 - 8);
  v57 = *(v122 + 64);
  __chkstk_darwin(v123, v58);
  v60 = &v113 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 104))(v56, enum case for TC2LogCategory.daemon(_:), v51);
  v129 = v60;
  sub_1001D08B0();
  (*(v52 + 8))(v56, v51);
  v61 = v33;
  v62 = [objc_opt_self() defaultManager];
  sub_10001208C(v127, v29, &unk_100230170, &unk_1001E0D90);
  v126 = *(v33 + 48);
  v127 = v33 + 48;
  v63 = v126(v29, 1, v32);
  v131 = v62;
  if (v63 != 1)
  {
    (*(v33 + 32))(v47, v29, v32);
    v134 = 0x7972617262694CLL;
    v135 = 0xE700000000000000;
    v71 = v115;
    v72 = v114;
    v73 = v116;
    (*(v115 + 104))(v114, enum case for URL.DirectoryHint.isDirectory(_:), v116);
    sub_100011EAC();
    sub_1001CFB00();
    (*(v71 + 8))(v72, v73);
    v134 = 0;
    v74 = [v62 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v134];
    v75 = v134;
    if (v74)
    {
      v76 = v61;
      v77 = v74;
      v67 = v50;
      v78 = v117;
      sub_1001CFAB0();
      v79 = v75;

      (*(v76 + 8))(v47, v32);
      v69 = *(v76 + 56);
      v69(v78, 0, 1, v32);
      v70 = v130;
      sub_100150730(v78, v130);
      v61 = v76;
      goto LABEL_6;
    }

LABEL_18:
    v112 = v134;
    sub_1001CFA20();

    swift_willThrow();
    v134 = 0;
    v135 = 0xE000000000000000;
    sub_1001D2030(44);
    v136._object = 0x80000001001E70C0;
    v136._countAndFlagsBits = 0xD00000000000002ALL;
    sub_1001D18B0(v136);
    swift_getErrorValue();
    sub_1001D2440();
    result = sub_1001D2180();
    __break(1u);
    return result;
  }

  sub_100011F00(v29, &unk_100230170, &unk_1001E0D90);
  v134 = 0;
  v64 = [v62 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v134];
  v65 = v134;
  if (!v64)
  {
    goto LABEL_18;
  }

  v66 = v64;
  v67 = v50;
  sub_1001CFAB0();
  v68 = v65;

  v69 = *(v33 + 56);
  v70 = v130;
  v69(v130, 1, 1, v32);
LABEL_6:
  v80 = sub_1001D02E0();
  v81 = *(v80 - 8);
  (*(v81 + 16))(v8, v124, v80);
  v82 = *(v81 + 56);
  v83 = 1;
  v82(v8, 0, 1, v80);
  sub_10014EDCC(v8, v131, v133);
  sub_100011F00(v8, &unk_100230300, &qword_1001D7138);
  v84 = v70;
  v85 = v120;
  sub_10001208C(v84, v120, &unk_100230170, &unk_1001E0D90);
  if (v126(v85, 1, v32) != 1)
  {
    v86 = v118;
    (*(v61 + 32))(v118, v85, v32);
    v82(v8, 1, 1, v80);
    sub_10014EDCC(v8, v131, v132);
    sub_100011F00(v8, &unk_100230300, &qword_1001D7138);
    (*(v61 + 8))(v86, v32);
    v83 = 0;
  }

  v124 = v67;
  v69(v132, v83, 1, v32);
  v87 = v121;
  (*(v61 + 16))(v121, v133, v32);
  v88 = v129;
  v89 = sub_1001D0E50();
  v90 = sub_1001D1DD0();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = v61;
    v93 = swift_slowAlloc();
    v134 = v93;
    *v91 = 136315138;
    sub_1001507A0(&qword_1002302F0, &type metadata accessor for URL);
    v94 = sub_1001D23A0();
    v95 = v87;
    v96 = v94;
    v98 = v97;
    v99 = *(v92 + 8);
    v99(v95, v32);
    v100 = sub_1000954E0(v96, v98, &v134);

    *(v91 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v89, v90, "daemonDir=%s", v91, 0xCu);
    sub_100011CF0(v93);
    v61 = v92;

    v88 = v129;
  }

  else
  {

    v99 = *(v61 + 8);
    v99(v87, v32);
  }

  v101 = v128;
  sub_10001208C(v132, v128, &unk_100230170, &unk_1001E0D90);
  v102 = sub_1001D0E50();
  v103 = sub_1001D1DD0();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v134 = v105;
    *v104 = 136315138;
    v106 = v119;
    sub_10001208C(v101, v119, &unk_100230170, &unk_1001E0D90);
    if (v126(v106, 1, v32) == 1)
    {
      sub_100011F00(v106, &unk_100230170, &unk_1001E0D90);
      v107 = 0;
      v108 = 0xE000000000000000;
    }

    else
    {
      v107 = sub_1001CFA50();
      v108 = v109;
      v99(v106, v32);
    }

    sub_100011F00(v128, &unk_100230170, &unk_1001E0D90);
    v110 = sub_1000954E0(v107, v108, &v134);

    *(v104 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v102, v103, "migrateFrom=%s", v104, 0xCu);
    sub_100011CF0(v105);

    sub_100011F00(v130, &unk_100230170, &unk_1001E0D90);
    v99(v124, v32);
    (*(v122 + 8))(v129, v123);
  }

  else
  {

    sub_100011F00(v101, &unk_100230170, &unk_1001E0D90);
    sub_100011F00(v130, &unk_100230170, &unk_1001E0D90);
    v99(v124, v32);
    (*(v122 + 8))(v88, v123);
  }

  return (*(v61 + 32))(v125, v133, v32);
}

char *sub_10014EDCC@<X0>(void (*a1)(char *, uint64_t)@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v52 = a2;
  v53 = a3;
  v50 = a1;
  v3 = sub_1001CFA40();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3, v5);
  v47 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = v46 - v10;
  v12 = sub_1001D02E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v54 = v46 - v20;
  v21 = sub_1001CFB10();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = __chkstk_darwin(v21, v24);
  v27 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v28);
  v30 = v46 - v29;
  sub_1001CFAD0();
  sub_1001CFA60();

  sub_1001CFA90();
  v31 = *(v22 + 8);
  v51 = v21;
  v31(v27, v21);
  sub_10001208C(v50, v11, &unk_100230300, &qword_1001D7138);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100011F00(v11, &unk_100230300, &qword_1001D7138);
LABEL_5:
    v35 = v51;
    goto LABEL_7;
  }

  v50 = v31;
  (*(v13 + 32))(v54, v11, v12);
  (*(v13 + 104))(v18, enum case for TC2Environment.production(_:), v12);
  sub_1001507A0(&qword_10022F788, &type metadata accessor for TC2Environment);
  v33 = sub_1001D1790();
  v34 = *(v13 + 8);
  v34(v18, v12);
  if (v33)
  {
    v34(v54, v12);
    goto LABEL_5;
  }

  v36 = sub_1001D02B0();
  v46[1] = v37;
  v55 = v36;
  v56 = v37;
  v39 = v47;
  v38 = v48;
  (*(v48 + 104))(v47, enum case for URL.DirectoryHint.isDirectory(_:), v49);
  sub_100011EAC();
  sub_1001CFB00();
  (*(v38 + 8))(v39, v49);

  v34(v54, v12);
  v35 = v51;
  v50(v30, v51);
  (*(v22 + 32))(v30, v27, v35);
LABEL_7:
  sub_1001CFA80(v32);
  v41 = v40;
  v55 = 0;
  v42 = [v52 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:&v55];

  v54 = v55;
  if (v42)
  {
    (*(v22 + 32))(v53, v30, v35);
    v43 = v54;

    return v43;
  }

  else
  {
    v45 = v54;
    sub_1001CFA20();

    swift_willThrow();
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1001D2030(43);
    v58._countAndFlagsBits = 0xD00000000000001FLL;
    v58._object = 0x80000001001E7110;
    sub_1001D18B0(v58);
    sub_1001507A0(&qword_1002302F0, &type metadata accessor for URL);
    v59._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v59);

    v60._countAndFlagsBits = 0x3D726F72726520;
    v60._object = 0xE700000000000000;
    sub_1001D18B0(v60);
    swift_getErrorValue();
    sub_1001D2440();
    v61._countAndFlagsBits = 32;
    v61._object = 0xE100000000000000;
    sub_1001D18B0(v61);
    result = sub_1001D2180();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014F450(uint64_t a1, uint64_t a2)
{
  v132 = a1;
  v3 = sub_1001D1810();
  v127 = *(v3 - 8);
  v4 = *(v127 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001CFB10();
  v129 = *(v8 - 8);
  v9 = *(v129 + 64);
  v11 = __chkstk_darwin(v8, v10);
  v126 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v128 = &v123 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v19 = &v123 - v18;
  __chkstk_darwin(v17, v20);
  v131 = &v123 - v21;
  v22 = sub_1001D02F0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1001D0E60();
  v29 = *(v28 - 8);
  v134 = v28;
  v135 = v29;
  v30 = *(v29 + 64);
  __chkstk_darwin(v28, v31);
  v33 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v27, enum case for TC2LogCategory.daemon(_:), v22);
  sub_1001D08B0();
  (*(v23 + 8))(v27, v22);
  v34 = [objc_opt_self() defaultManager];
  v130 = a2;
  sub_1001CFA80(v35);
  v37 = v36;
  v136 = 0;
  v38 = [v34 contentsOfDirectoryAtURL:v36 includingPropertiesForKeys:0 options:0 error:&v136];

  v39 = v136;
  if (!v38)
  {
    v52 = v136;
    sub_1001CFA20();

    swift_willThrow();
    swift_errorRetain();
    v53 = sub_1001D0E50();
    v54 = sub_1001D1DE0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "failed destination migration check error=%@", v55, 0xCu);
      sub_100011F00(v56, &unk_1002301D0, &qword_1001D4F50);
    }

    else
    {
    }

    return (*(v135 + 8))(v33, v134);
  }

  v133 = v34;
  v40 = sub_1001D19D0();
  v41 = v39;

  if (*(v40 + 16))
  {

    v42 = v33;
    v43 = sub_1001D0E50();
    v44 = sub_1001D1DD0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v136 = v46;
      *v45 = 136315138;
      v47 = sub_1001D19E0();
      v49 = v48;

      v50 = sub_1000954E0(v47, v49, &v136);

      *(v45 + 4) = v50;
      v51 = "skipping migration due to destinationContents=%s";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v43, v44, v51, v45, 0xCu);
      sub_100011CF0(v46);

      return (*(v135 + 8))(v42, v134);
    }

    goto LABEL_20;
  }

  v125 = v8;
  sub_1001CFA80(0);
  v59 = v58;
  v136 = 0;
  v60 = [v133 contentsOfDirectoryAtURL:v58 includingPropertiesForKeys:0 options:0 error:&v136];

  v61 = v136;
  if (!v60)
  {
    v71 = v136;
    sub_1001CFA20();

    swift_willThrow();
    swift_errorRetain();
    v42 = v33;
    v72 = sub_1001D0E50();
    v73 = sub_1001D1DE0();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      swift_errorRetain();
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 4) = v76;
      *v75 = v76;
      _os_log_impl(&_mh_execute_header, v72, v73, "failed source migration check error=%@", v74, 0xCu);
      sub_100011F00(v75, &unk_1002301D0, &qword_1001D4F50);
    }

LABEL_17:

    v43 = sub_1001D0E50();
    v44 = sub_1001D1DD0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v136 = v46;
      *v45 = 136315138;
      v77 = sub_1001D19E0();
      v79 = v78;

      v80 = sub_1000954E0(v77, v79, &v136);

      *(v45 + 4) = v80;
      v51 = "skipping migration due to sourceContents=%s";
      goto LABEL_19;
    }

LABEL_20:

    return (*(v135 + 8))(v42, v134);
  }

  v62 = sub_1001D19D0();
  v63 = v61;

  v42 = v33;
  if (!*(v62 + 16))
  {
    goto LABEL_17;
  }

  v64 = v131;
  sub_1001CFAA0();
  sub_1001D1800();
  v65 = sub_1001D17E0();
  v67 = v66;
  result = (*(v127 + 8))(v7, v3);
  if (v67 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1001CFC20();
    v69 = v65;
    v70 = v125;
    v123 = v69;
    v126 = v67;
    v81 = v129;
    v124 = *(v129 + 16);
    v124(v19, v64, v125);
    v82 = sub_1001D0E50();
    v83 = sub_1001D1DD0();
    if (os_log_type_enabled(v82, v83))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v136 = v86;
      *v85 = 136315138;
      sub_1001507A0(&qword_1002302F0, &type metadata accessor for URL);
      v87 = sub_1001D23A0();
      v89 = v88;
      v127 = *(v81 + 8);
      (v127)(v19, v125);
      v90 = sub_1000954E0(v87, v89, &v136);
      v70 = v125;

      *(v85 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v82, v83, "wrote migrationSemaphoreFile=%s", v85, 0xCu);
      sub_100011CF0(v86);

      sub_10002683C(v123, v126);
    }

    else
    {
      sub_10002683C(v123, v126);

      v127 = *(v81 + 8);
      (v127)(v19, v70);
    }

    v91 = v132;
    v92 = v133;
    v93 = v128;
    v94 = v124;
    v95 = v130;
    sub_1000268C8(v132, v130);
    sub_1000F4588(v91, v95);
    sub_100108538(v91, v95);
    sub_1001504A4(v91, v95);
    sub_10003D6F0(v91, v95);
    sub_1001CFA80(v96);
    v97 = v91;
    v99 = v98;
    v136 = 0;
    LODWORD(v95) = [v92 removeItemAtURL:v98 error:&v136];

    v100 = v136;
    if (!v95)
    {
      v113 = v136;
      sub_1001CFA20();

      swift_willThrow();
      swift_errorRetain();
      v114 = sub_1001D0E50();
      v115 = sub_1001D1DE0();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = v70;
        v118 = swift_slowAlloc();
        *v116 = 138412290;
        swift_errorRetain();
        v119 = _swift_stdlib_bridgeErrorToNSError();
        *(v116 + 4) = v119;
        *v118 = v119;
        _os_log_impl(&_mh_execute_header, v114, v115, "unable to delete migration source error=%@", v116, 0xCu);
        sub_100011F00(v118, &unk_1002301D0, &qword_1001D4F50);

        v120 = v131;
        v121 = v117;
      }

      else
      {

        v120 = v131;
        v121 = v70;
      }

      (v127)(v120, v121);
      return (*(v135 + 8))(v42, v134);
    }

    v94(v93, v97, v70);
    v101 = v100;
    v102 = sub_1001D0E50();
    v103 = sub_1001D1DD0();
    if (!os_log_type_enabled(v102, v103))
    {

      v122 = v127;
      (v127)(v93, v70);
      v122(v131, v70);
      return (*(v135 + 8))(v42, v134);
    }

    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v136 = v105;
    *v104 = 136315138;
    sub_1001507A0(&qword_1002302F0, &type metadata accessor for URL);
    v106 = sub_1001D23A0();
    v107 = v70;
    v109 = v108;
    v110 = v93;
    v111 = v127;
    (v127)(v110, v107);
    v112 = sub_1000954E0(v106, v109, &v136);

    *(v104 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v102, v103, "deleted migration source=%s", v104, 0xCu);
    sub_100011CF0(v105);

    v111(v131, v107);
    return (*(v135 + 8))(v42, v134);
  }

  return result;
}

uint64_t sub_1001504A4(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = sub_1001CFA40();
  v27 = v2;
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001CFB10();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  v11 = __chkstk_darwin(v8, v10);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v26 - v14;
  v32 = 0xD000000000000016;
  v33 = 0x80000001001E7070;
  v16 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v17 = v3[13];
  v17(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_100011EAC();
  sub_1001CFB00();
  v18 = v3[1];
  v19 = v27;
  v18(v7, v27);
  v32 = 0xD000000000000016;
  v33 = 0x80000001001E7070;
  v17(v7, v16, v19);
  v20 = v28;
  sub_1001CFB00();
  v18(v7, v19);
  v21 = v20;
  sub_10014D240(v15, v20);
  v22 = *(v29 + 8);
  v23 = v21;
  v24 = v30;
  v22(v23, v30);
  return (v22)(v15, v24);
}

uint64_t sub_100150730(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001507A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HTTPFields.loggingDescription.getter()
{
  v1 = v0;
  v2 = sub_1001D1380();
  v50 = *(v2 - 8);
  v3 = *(v50 + 64);
  v5 = __chkstk_darwin(v2, v4);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v9 = &v41 - v8;
  v10 = sub_1001D13D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001D0ED0();
  v17 = sub_100151518(&qword_100229338, &type metadata accessor for HTTPFields);
  v18 = sub_1001D1D00();
  v19 = &_swiftEmptyArrayStorage;
  if (v18)
  {
    v20 = v18;
    v54 = &_swiftEmptyArrayStorage;
    sub_1001514F8(0, v18 & ~(v18 >> 63), 0);
    v51 = v54;
    sub_1001D1CF0();
    if ((v20 & 0x8000000000000000) == 0)
    {
      v44 = v20;
      v45 = v17;
      v21 = 0;
      v22 = v11;
      v23 = (v11 + 16);
      v24 = (v50 + 8);
      v41 = (v22 + 8);
      v47 = v2;
      v48 = v1;
      v42 = (v50 + 8);
      v43 = v23;
      v46 = v16;
      while (!__OFADD__(v21, 1))
      {
        v50 = v21 + 1;
        v25 = sub_1001D1D40();
        (*v43)(v15);
        (v25)(&v52, 0);
        sub_1001D13B0();
        v26 = v49;
        sub_1001D1340();
        LOBYTE(v25) = sub_1001D1350();
        v27 = *v24;
        (*v24)(v26, v2);
        v27(v9, v2);
        sub_1001D13B0();
        sub_100151518(&qword_100229340, &type metadata accessor for HTTPField.Name);
        v52 = sub_1001D23A0();
        v53 = v28;
        v27(v9, v2);
        if (v25)
        {
          v29._countAndFlagsBits = 0x544341444552203ALL;
          v29._object = 0xEB000000000A4445;
        }

        else
        {
          v55._countAndFlagsBits = 8250;
          v55._object = 0xE200000000000000;
          sub_1001D18B0(v55);
          v56._countAndFlagsBits = sub_1001D13C0();
          sub_1001D18B0(v56);

          v29._countAndFlagsBits = 10;
          v29._object = 0xE100000000000000;
        }

        sub_1001D18B0(v29);
        v31 = v52;
        v30 = v53;
        v32 = v15;
        v33 = v15;
        v34 = v10;
        (*v41)(v33, v10);
        v35 = v51;
        v54 = v51;
        v37 = v51[2];
        v36 = v51[3];
        if (v37 >= v36 >> 1)
        {
          sub_1001514F8((v36 > 1), v37 + 1, 1);
          v35 = v54;
        }

        v35[2] = v37 + 1;
        v51 = v35;
        v38 = &v35[2 * v37];
        v38[4] = v31;
        v38[5] = v30;
        sub_1001D1D20();
        ++v21;
        v2 = v47;
        v10 = v34;
        v15 = v32;
        v24 = v42;
        if (v50 == v44)
        {
          v19 = v51;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_12:
    v52 = v19;

    sub_100152064(&v52);

    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_100021D90();
    v39 = sub_1001D1750();

    return v39;
  }

  return result;
}

uint64_t sub_100150D38()
{
  v1 = sub_1001D1380();
  v99 = *(v1 - 8);
  v2 = *(v99 + 64);
  v4 = __chkstk_darwin(v1, v3);
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4, v6);
  v90 = &v89 - v8;
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v89 - v11;
  __chkstk_darwin(v10, v13);
  v105 = &v89 - v14;
  v15 = sub_1001D13D0();
  v97 = *(v15 - 8);
  v16 = *(v97 + 64);
  v18 = __chkstk_darwin(v15, v17);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v104 = &v89 - v22;
  v23 = sub_100011AC0(&qword_10022E648, &qword_1001DF4F8);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v26);
  v28 = &v89 - v27;
  v29 = sub_1000D65D4(&_swiftEmptyArrayStorage);
  v30 = sub_1001D0ED0();
  (*(*(v30 - 8) + 16))(v28, v0, v30);
  v31 = *(v24 + 44);
  v32 = sub_100151518(&qword_100229338, &type metadata accessor for HTTPFields);
  sub_1001D1CF0();
  sub_1001D1D10();
  if (*&v28[v31] == v106)
  {
LABEL_2:
    sub_100152B3C(v28);
    return v29;
  }

  v102 = v15;
  v103 = v12;
  v100 = (v97 + 32);
  v101 = (v97 + 16);
  v98 = v32;
  v99 += 8;
  v96 = v20;
  v97 += 8;
  v94 = v30;
  v95 = v28;
  v93 = v31;
  while (1)
  {
    v38 = sub_1001D1D40();
    v39 = v102;
    v40 = v1;
    v41 = v104;
    (*v101)(v104);
    (v38)(&v106, 0);
    sub_1001D1D20();
    v42 = v41;
    v1 = v40;
    (*v100)(v20, v42, v39);
    v43 = v105;
    sub_1001D13B0();
    v44 = v103;
    sub_1001D1340();
    LOBYTE(v38) = sub_1001D1350();
    v45 = *v99;
    (*v99)(v44, v40);
    v45(v43, v40);
    if (v38)
    {
      break;
    }

    v59 = v39;
    v60 = v91;
    sub_1001D13B0();
    v61 = sub_1001D1320();
    v63 = v62;
    v64 = v1;
    v45(v60, v1);
    v65 = sub_1001D13C0();
    v92 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v29;
    v69 = sub_100006028(v61, v63);
    v70 = v29[2];
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
      goto LABEL_28;
    }

    v73 = v68;
    if (v29[3] >= v72)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100010C9C();
      }
    }

    else
    {
      sub_10000E1D8(v72, isUniquelyReferenced_nonNull_native);
      v74 = sub_100006028(v61, v63);
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_31;
      }

      v69 = v74;
    }

    v1 = v64;
    if (v73)
    {

      v29 = v106;
      v34 = (v106[7] + 16 * v69);
      v35 = v34[1];
      v36 = v92;
      *v34 = v65;
      v34[1] = v36;

      v20 = v96;
      (*v97)(v96, v59);
LABEL_5:
      v28 = v95;
      goto LABEL_6;
    }

    v29 = v106;
    v106[(v69 >> 6) + 8] |= 1 << v69;
    v79 = (v29[6] + 16 * v69);
    *v79 = v61;
    v79[1] = v63;
    v80 = (v29[7] + 16 * v69);
    v81 = v92;
    *v80 = v65;
    v80[1] = v81;
    v20 = v96;
    (*v97)(v96, v59);
    v82 = v29[2];
    v55 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    v28 = v95;
    if (v55)
    {
      goto LABEL_30;
    }

    v29[2] = v83;
LABEL_6:
    v37 = v93;
    sub_1001D1D10();
    if (*&v28[v37] == v106)
    {
      goto LABEL_2;
    }
  }

  v46 = v90;
  sub_1001D13B0();
  v47 = sub_1001D1320();
  v49 = v48;
  v45(v46, v40);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v106 = v29;
  v51 = sub_100006028(v47, v49);
  v53 = v29[2];
  v54 = (v52 & 1) == 0;
  v55 = __OFADD__(v53, v54);
  v56 = v53 + v54;
  if (!v55)
  {
    v57 = v52;
    if (v29[3] >= v56)
    {
      if ((v50 & 1) == 0)
      {
        v84 = v51;
        sub_100010C9C();
        v51 = v84;
        v20 = v96;
        if (v57)
        {
          goto LABEL_18;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_10000E1D8(v56, v50);
      v51 = sub_100006028(v47, v49);
      if ((v57 & 1) != (v58 & 1))
      {
        goto LABEL_31;
      }
    }

    v20 = v96;
    if (v57)
    {
LABEL_18:
      v76 = v51;

      v29 = v106;
      v77 = (v106[7] + 16 * v76);
      v78 = v77[1];
      *v77 = 0x4445544341444552;
      v77[1] = 0xE800000000000000;

      (*v97)(v20, v39);
      goto LABEL_5;
    }

LABEL_25:
    v29 = v106;
    v106[(v51 >> 6) + 8] |= 1 << v51;
    v85 = (v29[6] + 16 * v51);
    *v85 = v47;
    v85[1] = v49;
    v86 = (v29[7] + 16 * v51);
    *v86 = 0x4445544341444552;
    v86[1] = 0xE800000000000000;
    (*v97)(v20, v39);
    v87 = v29[2];
    v55 = __OFADD__(v87, 1);
    v88 = v87 + 1;
    if (v55)
    {
      goto LABEL_29;
    }

    v29[2] = v88;
    goto LABEL_5;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

char *sub_1001514D8(char *a1, int64_t a2, char a3)
{
  result = sub_100151840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001514F8(char *a1, int64_t a2, char a3)
{
  result = sub_100151960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100151518(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100151560(char *a1, int64_t a2, char a3)
{
  result = sub_100151A6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100151580(size_t a1, int64_t a2, char a3)
{
  result = sub_100151CA0(a1, a2, a3, *v3, &qword_100227AB8, &qword_1001D3658, &unk_100230260, &qword_1001D3660);
  *v3 = result;
  return result;
}

size_t sub_1001515C0(size_t a1, int64_t a2, char a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F798, &qword_1001E0D28, &type metadata accessor for Workload);
  *v3 = result;
  return result;
}

char *sub_100151604(char *a1, int64_t a2, char a3)
{
  result = sub_100151B94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100151624(size_t a1, int64_t a2, char a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F7C8, &qword_1001E0D58, &type metadata accessor for RateLimitInfo.WorkloadTag);
  *v3 = result;
  return result;
}

size_t sub_100151668(size_t a1, int64_t a2, char a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F7A8, &qword_1001E0D38, &type metadata accessor for TrustedCloudComputeRateLimit);
  *v3 = result;
  return result;
}

size_t sub_1001516AC(size_t a1, int64_t a2, char a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F7B0, &qword_1001E0D40, &type metadata accessor for TrustedCloudComputeRateLimit.WorkloadParameter);
  *v3 = result;
  return result;
}

size_t sub_1001516F0(size_t a1, int64_t a2, char a3)
{
  result = sub_100151CA0(a1, a2, a3, *v3, &qword_10022D8E0, &qword_1001DE698, &qword_100227B38, &qword_1001D36D0);
  *v3 = result;
  return result;
}

size_t sub_100151730(size_t a1, int64_t a2, char a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F7C0, &qword_1001E0D50, type metadata accessor for ValidatedAttestationOrAttestation);
  *v3 = result;
  return result;
}

size_t sub_100151774(size_t a1, int64_t a2, char a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F7B8, &qword_1001E0D48, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
  *v3 = result;
  return result;
}

size_t sub_1001517B8(size_t a1, int64_t a2, char a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_100227B08, &qword_1001D36A0, &type metadata accessor for TrustedRequestEndpointMetadata);
  *v3 = result;
  return result;
}

size_t sub_1001517FC(size_t a1, int64_t a2, char a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_100227B10, &qword_1001D36A8, &type metadata accessor for TC2TrustedRequestMetadata);
  *v3 = result;
  return result;
}

char *sub_100151840(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_10022F790, &qword_1001E0D20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100151960(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&unk_100230270, &unk_1001D3610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100151A6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_10022F7A0, &qword_1001E0D30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
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

char *sub_100151B94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_100227AA8, &qword_1001D3648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_100151CA0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100011AC0(a5, a6);
  v16 = *(sub_100011AC0(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100011AC0(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_100151E88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100011AC0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

Swift::Int sub_100152064(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10003BBD0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001520D0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001520D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001D2370(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1001D1A10();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100152298(v7, v8, a1, v4);
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
    return sub_1001521C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001521C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1001D2470(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100152298(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100152B28(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100152874((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1001D2470();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1001D2470();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100009048(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100009048((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100152874((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100152B28(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100152A9C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1001D2470(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_100152874(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1001D2470() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1001D2470() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_100152A9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100152B28(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100152B3C(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022E648, &qword_1001DF4F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100152BE0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = __chkstk_darwin(AssociatedTypeWitness, v7);
  v10 = &v18 - v9;
  v11 = *(v3 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v10, v2, v16);
  sub_1001CFF50();
  (*(v11 + 8))(v15, v3);
  return sub_1001D1EE0();
}

uint64_t sub_100152D38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100152D58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

char *sub_100152D90()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022F7D0, qword_1001E0D60);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t LRUCache.__allocating_init(maxCount:maxAge:storeURL:)(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, double a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  LRUCache.init(maxCount:maxAge:storeURL:)(a1, a2, a3);
  return v9;
}

uint64_t LRUCache.loadState(now:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v40 - v8;
  v10 = sub_1001CFB10();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100154A04(v2 + qword_10022F7D8, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011F00(v9, &unk_100230170, &unk_1001E0D90);
  }

  (*(v11 + 32))(v15, v9, v10);
  v17 = [objc_opt_self() defaultManager];
  sub_1001CFAD0();
  v18 = sub_1001D17A0();

  v19 = [v17 fileExistsAtPath:v18];

  if (!v19)
  {
    return (*(v11 + 8))(v15, v10);
  }

  v20 = sub_1001CFB30();
  v21 = *(v2 + qword_10022F7E0);
  v22 = v4[11];
  v23 = v4[12];
  v24 = v4[13];
  v46 = v4[10];
  v52 = v46;
  v53 = v22;
  v47 = v22;
  v48 = a1;
  v49 = v23;
  v50 = v24;
  v54 = v23;
  v55 = v24;
  v26 = v25;
  v27 = v20;
  type metadata accessor for LRUCache.DatedValue();
  v28 = sub_1001D1A60();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1001CF900();
  v43 = v28;
  v44 = v27;
  v45 = v26;
  v29 = v56;

  v30 = sub_1001D1A30();

  v31 = v2[2];
  if (v31 < v30)
  {

    v32 = sub_1001D0E50();
    v42 = sub_1001D1E00();
    if (os_log_type_enabled(v32, v42))
    {
      v33 = swift_slowAlloc();
      v41 = v32;
      v34 = v33;
      *v33 = 134218240;

      v35 = sub_1001D1A30();

      *(v34 + 1) = v35;
      *(v34 + 6) = 2048;
      *(v34 + 14) = v31;

      v36 = v41;
      _os_log_impl(&_mh_execute_header, v41, v42, "trimming archive, count=%ld, maxCount=%ld", v34, 0x16u);
    }

    else
    {
    }

    v52 = v29;

    swift_getWitnessTable();
    v37 = sub_1001D1940();

    v29 = v37;
  }

  v38 = (v2 + qword_10022F7E8);

  os_unfair_lock_lock(v38);
  v39 = *&v38[2]._os_unfair_lock_opaque;

  *&v38[2]._os_unfair_lock_opaque = v29;
  sub_100154A74();
  v52 = v46;
  v53 = v47;
  v54 = v49;
  v55 = v50;
  type metadata accessor for LRUCache.State();
  os_unfair_lock_unlock(v38);
  sub_100011E48(v44, v45);

  (*(v11 + 8))(v15, v10);
}

uint64_t LRUCache.getCachedEntries(now:)()
{
  v1 = *v0;
  v2 = (v0 + qword_10022F7E8);
  os_unfair_lock_lock((v0 + qword_10022F7E8));
  sub_100155320(v2 + 1, v0, &v8);
  v3 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  type metadata accessor for LRUCache.State();
  sub_1001D1A60();
  os_unfair_lock_unlock(v2);
  return v8;
}

uint64_t LRUCache.addToCache(now:value:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[2];
  v7 = (v2 + qword_10022F7E8);
  os_unfair_lock_lock((v2 + qword_10022F7E8));
  sub_100154C5C(v7 + 1, v2, a1, a2, v6, &v14);
  v10 = v5[10];
  v11 = v5[11];
  v12 = v5[12];
  v13 = v5[13];
  type metadata accessor for LRUCache.State();
  os_unfair_lock_unlock(v7);
  v8 = v14;
  LRUCache.saveState(now:)();
  return v8;
}

uint64_t sub_100153670(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1001D2470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1001D2470();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100153738(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_100153764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1001CFD30())
  {
    v7 = *(type metadata accessor for LRUCache.DatedValue() + 52);
    v8 = *(a6 + 8);
    v9 = sub_1001D1790();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1001537F0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v15[0] = *(a2 + 32);
  v15[1] = v4;
  v16 = v4;
  v17 = v15[0];
  type metadata accessor for LRUCache.DatedValue.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1001D2350();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v15 - v9;
  v11 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1001D25F0();
  LOBYTE(v16) = 0;
  sub_1001CFD60();
  sub_100156888(&qword_100228918);
  v12 = v18;
  sub_1001D2340();
  if (!v12)
  {
    v13 = *(a2 + 52);
    LOBYTE(v16) = 1;
    sub_1001D2340();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1001539D4(uint64_t a1, uint64_t a2)
{
  sub_1001CFD60();
  sub_100156888(&qword_100229788);
  sub_1001D1740();
  v4 = *(a2 + 16);
  v5 = *(a2 + 40);
  v6 = v2 + *(a2 + 52);
  return sub_1001D1740();
}

Swift::Int sub_100153A54(uint64_t a1)
{
  sub_1001D2580();
  sub_1001539D4(v3, a1);
  return sub_1001D25C0();
}

uint64_t sub_100153A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1001CFD60();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for LRUCache.DatedValue();
  return (*(*(a3 - 8) + 32))(a4 + *(v9 + 52), a2, a3);
}

uint64_t sub_100153B7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v39 = *(a2 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(a1, a2);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1001CFD60();
  v43 = *(v49 - 8);
  v13 = *(v43 + 64);
  __chkstk_darwin(v49, v14);
  v48 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  type metadata accessor for LRUCache.DatedValue.CodingKeys();
  swift_getWitnessTable();
  v50 = sub_1001D22A0();
  v42 = *(v50 - 8);
  v16 = *(v42 + 64);
  __chkstk_darwin(v50, v17);
  v19 = &v37 - v18;
  v45 = a2;
  v51 = a2;
  v52 = a3;
  v47 = a3;
  v53 = a4;
  v54 = a5;
  v20 = type metadata accessor for LRUCache.DatedValue();
  v41 = *(v20 - 8);
  v21 = *(v41 + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v37 - v23;
  v25 = a1[4];
  sub_100024DC8(a1, a1[3]);
  v46 = v19;
  v26 = v55;
  sub_1001D25E0();
  if (v26)
  {
    return sub_100011CF0(a1);
  }

  v28 = v41;
  v27 = v42;
  v55 = a1;
  v38 = v20;
  v29 = v43;
  v31 = v44;
  v30 = v45;
  LOBYTE(v51) = 0;
  sub_100156888(&qword_100228910);
  v32 = v46;
  sub_1001D2290();
  v33 = *(v29 + 32);
  v37 = v24;
  v33(v24, v48, v49);
  LOBYTE(v51) = 1;
  sub_1001D2290();
  (*(v27 + 8))(v32, v50);
  v34 = v38;
  v35 = v37;
  (*(v39 + 32))(&v37[*(v38 + 52)], v31, v30);
  (*(v28 + 16))(v40, v35, v34);
  sub_100011CF0(v55);
  return (*(v28 + 8))(v35, v34);
}

BOOL sub_100153FE4(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static TC2NetworkActivityResult.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_100153FFC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return TC2NetworkActivityResult.hashValue.getter(*v1);
}

void sub_100154010(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  TC2NetworkActivityResult.hash(into:)(a1, *v2);
}

Swift::Int sub_100154024(uint64_t a1, void *a2)
{
  sub_1001D2580();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  TC2NetworkActivityResult.hash(into:)(v9, *v2);
  return sub_1001D25C0();
}

uint64_t sub_100154070(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_100153738(*v1);
}

uint64_t sub_100154084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_100153670(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1001540B8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_100156A60();
  *a2 = result;
  return result;
}

uint64_t sub_1001540EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100154140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_10015419C(uint64_t a1, uint64_t a2)
{
  sub_1001D2580();
  sub_1001539D4(v4, a2);
  return sub_1001D25C0();
}

uint64_t LRUCache.init(maxCount:maxAge:storeURL:)(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, double a3)
{
  v4 = v3;
  v82 = a2;
  v6 = *v3;
  v79 = a1;
  v80 = v6;
  v7 = sub_1001CFA40();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  __chkstk_darwin(v7, v9);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v78 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v73 = &v69 - v18;
  __chkstk_darwin(v17, v19);
  v21 = &v69 - v20;
  v22 = sub_1001CFB10();
  v81 = *(v22 - 8);
  v23 = *(v81 + 64);
  v25 = __chkstk_darwin(v22, v24);
  v75 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v29 = &v69 - v28;
  v30 = sub_1001D02F0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30, v33);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = qword_10022F7F0;
  v37 = sub_1001CF960();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  *(v3 + v36) = sub_1001CF950();
  v40 = qword_10022F7E0;
  v41 = sub_1001CF920();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  *(v3 + v40) = sub_1001CF910();
  (*(v31 + 104))(v35, enum case for TC2LogCategory.daemon(_:), v30);
  sub_1001D08B0();
  (*(v31 + 8))(v35, v30);
  *(v3 + 16) = v79;
  *(v3 + 24) = a3;
  v44 = *(v3 + v36);

  sub_1001CF930();
  v45 = v81;

  sub_100154A04(v82, v21);
  v79 = *(v45 + 48);
  if (v79(v21, 1, v22) == 1)
  {
    sub_100011F00(v21, &unk_100230170, &unk_1001E0D90);
    (*(v45 + 56))(v4 + qword_10022F7D8, 1, 1, v22);
  }

  else
  {
    v46 = v29;
    (*(v45 + 32))(v29, v21, v22);
    v85 = 0xD000000000000016;
    v86 = 0x80000001001E7070;
    v71 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v47 = v76;
    v70 = *(v76 + 104);
    v48 = v74;
    v49 = v77;
    v70(v74);
    v69 = sub_100011EAC();
    v50 = v73;
    v72 = v45 + 48;
    sub_1001CFB00();
    v76 = *(v47 + 8);
    (v76)(v48, v49);
    (*(v45 + 56))(v50, 0, 1, v22);
    sub_100150730(v50, v4 + qword_10022F7D8);
    v85 = 0x656863616375726CLL;
    v86 = 0xEF7473696C702E33;
    (v70)(v48, v71, v49);
    v51 = v75;
    sub_1001CFB00();
    (v76)(v48, v49);
    sub_10014D874(v51);
    v52 = *(v45 + 8);
    v52(v51, v22);
    v52(v46, v22);
  }

  v54 = v80[11];
  v55 = v80[12];
  v56 = v80[13];
  v85 = v80[10];
  v53 = v85;
  v86 = v54;
  v87 = v55;
  v88 = v56;
  type metadata accessor for LRUCache.DatedValue();
  v83 = sub_1001D1A00();
  LODWORD(v84) = 0;
  *(&v84 + 1) = 0;
  v85 = v53;
  v86 = v54;
  v87 = v55;
  v88 = v56;
  v57 = type metadata accessor for LRUCache.State();
  (*(*(v57 - 8) + 32))(&v84 + 8, &v83, v57);
  *(v4 + qword_10022F7E8) = v84;

  v58 = sub_1001D0E50();
  v59 = sub_1001D1DD0();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v85 = v61;
    *v60 = 136315138;
    v62 = v78;
    sub_100154A04(v4 + qword_10022F7D8, v78);
    if (v79(v62, 1, v22) == 1)
    {
      sub_100011F00(v62, &unk_100230170, &unk_1001E0D90);
      v63 = 0;
      v64 = 0xE000000000000000;
    }

    else
    {
      v65 = sub_1001CFA50();
      v64 = v66;
      (*(v81 + 8))(v62, v22);
      v63 = v65;
    }

    v67 = sub_1000954E0(v63, v64, &v85);

    *(v60 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v58, v59, "initialized workloadcache, file=%s", v60, 0xCu);
    sub_100011CF0(v61);
  }

  sub_100011F00(v82, &unk_100230170, &unk_1001E0D90);
  return v4;
}

uint64_t sub_100154A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100154A74()
{
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 96);
  type metadata accessor for LRUCache.DatedValue();
  sub_1001D1A60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1001D1D70();
}

uint64_t sub_100154B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 24);
  sub_1001CFCF0();
  LOBYTE(a3) = sub_1001CFCD0();
  (*(v5 + 8))(v9, v4);
  return a3 & 1;
}

uint64_t sub_100154C5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v32 = a5;
  v41 = a6;
  v9 = *a2;
  v10 = *a2;
  v11 = *(*a2 + 80);
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(a1, a2);
  v37 = &v31 - v13;
  v36 = sub_1001CFD60();
  v33 = *(v36 - 8);
  v14 = *(v33 + 64);
  __chkstk_darwin(v36, v15);
  v34 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 104);
  v42 = *(v10 + 88);
  *&v18 = vdupq_laneq_s64(v42, 1).u64[0];
  v19.i64[0] = v11;
  *(&v18 + 1) = v17;
  v47 = vzip1q_s64(v19, v42);
  v48 = v18;
  v20 = type metadata accessor for LRUCache.DatedValue();
  v31 = *(v20 - 8);
  v21 = *(v31 + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v31 - v23;
  v39 = a3;
  sub_100154A74();
  v49 = *a1;
  v43 = v11;
  v44 = v42;
  v35 = v17;
  v45 = v17;
  v46 = a4;
  v40 = a4;
  sub_1001D1A60();

  swift_getWitnessTable();
  sub_1001D1D30();

  if (v47.u8[8] != 1)
  {
    sub_1001D1A50();
    (*(v31 + 8))(v24, v20);
    v28 = 1;
    goto LABEL_8;
  }

  result = sub_1001D1A30();
  v26 = result - v32;
  if (result < v32)
  {
LABEL_6:
    v28 = 0;
LABEL_8:
    v29 = v34;
    (*(v33 + 16))(v34, v39, v36);
    v30 = v37;
    (*(v38 + 16))(v37, v40, v11);
    sub_100153A9C(v29, v30, v11, v24);
    result = sub_1001D1A40();
    *v41 = v28;
    return result;
  }

  if (__OFSUB__(result, v32))
  {
    __break(1u);
  }

  else
  {
    v27 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      swift_getWitnessTable();
      sub_1001D1D60(v27);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void LRUCache.saveState(now:)()
{
  v1 = *v0;
  v2 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = v20 - v5;
  v7 = sub_1001CFB10();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100154A04(v0 + qword_10022F7D8, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &unk_100230170, &unk_1001E0D90);
    v13 = sub_1001D0E50();
    v14 = sub_1001D1DC0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "declining to persist lrucache without location", v15, 2u);
    }
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v16 = (v0 + qword_10022F7E8);
    os_unfair_lock_lock((v0 + qword_10022F7E8));
    sub_100155480(v16 + 1, v0);
    v17 = v1[11];
    v19 = v1[12];
    v18 = v1[13];
    v20[1] = v1[10];
    v20[2] = v17;
    v20[3] = v19;
    v20[4] = v18;
    type metadata accessor for LRUCache.State();
    os_unfair_lock_unlock(v16);
    (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_100155320@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_100154A74();
  v20 = *a1;
  v12 = v5[10];
  v13 = v5[11];
  v14 = v5[12];
  v15 = v5[13];

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  type metadata accessor for LRUCache.DatedValue();
  v6 = sub_1001D1A60();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_100020070(sub_10015697C, &v11, v6, v12, &type metadata for Never, WitnessTable, &protocol witness table for Never, v8);

  *a3 = v9;
  return result;
}

void sub_100155480(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  sub_100154A74();
  v6 = *(a2 + qword_10022F7F0);
  v18 = *a1;

  v16 = *(v5 + 80);
  v17 = *(v5 + 96);
  type metadata accessor for LRUCache.DatedValue();
  sub_1001D1A60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v7 = sub_1001CF940();
  if (v2)
  {

    swift_errorRetain();
    v11 = sub_1001D0E50();
    v12 = sub_1001D1DE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "failed to archive LRUCache: %@", v13, 0xCu);
      sub_100011F00(v14, &unk_1002301D0, &qword_1001D4F50);
    }

    else
    {
    }
  }

  else
  {
    v9 = v7;
    v10 = v8;

    sub_1001CFC20();
    sub_100011E48(v9, v10);
  }
}

Swift::Void __swiftcall LRUCache.deleteSavedState()()
{
  v1 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v27[-v4];
  v6 = sub_1001CFB10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100154A04(v0 + qword_10022F7D8, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100011F00(v5, &unk_100230170, &unk_1001E0D90);
    return;
  }

  (*(v7 + 32))(v11, v5, v6);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  sub_1001CFAD0();
  v14 = sub_1001D17A0();

  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    v16 = [v12 defaultManager];
    sub_1001CFA80(v17);
    v19 = v18;
    v28 = 0;
    v20 = [v16 removeItemAtURL:v18 error:&v28];

    if (v20)
    {
      v21 = *(v7 + 8);
      v22 = v28;
      v21(v11, v6);
      return;
    }

    v23 = v28;
    sub_1001CFA20();

    swift_willThrow();
    v24 = sub_1001D0E50();
    v25 = sub_1001D1E00();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "failed to delete archive", v26, 2u);
    }
  }

  (*(v7 + 8))(v11, v6);
}

uint64_t LRUCache.statistics(now:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2 + qword_10022F7E8;
  os_unfair_lock_lock((v2 + qword_10022F7E8));
  sub_100155B04((v5 + 8), v2, a1, &v9);
  v7 = *(v4 + 80);
  v8 = *(v4 + 96);
  type metadata accessor for LRUCache.State();
  os_unfair_lock_unlock(v5);
  return v9;
}

uint64_t sub_100155B04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a4;
  v7 = *(*a2 + 88);
  v8 = *(*a2 + 96);
  v9 = *(*a2 + 104);
  v49 = *(*a2 + 80);
  v6 = v49;
  v50 = v7;
  v51 = v8;
  v52 = v9;
  v10 = type metadata accessor for LRUCache.DatedValue();
  v11 = sub_1001D1F00();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v36 - v14;
  v16 = sub_1001CFD60();
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  v19 = __chkstk_darwin(v16, v18);
  v37 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v38 = &v36 - v22;
  v43 = a3;
  sub_100154A74();
  v23 = *a1;
  v24 = sub_1001D1A30();
  v48 = v9;
  v49 = v23;
  v45 = v6;
  v46 = v7;
  v47 = v8;
  sub_1001D1A60();

  swift_getWitnessTable();
  sub_1001D1930();

  v25 = *(v10 - 8);
  if ((*(v25 + 48))(v15, 1, v10) == 1)
  {
    result = (*(v39 + 8))(v15, v40);
    v27 = 0;
LABEL_7:
    v35 = v44;
    *v44 = v24;
    v35[1] = v27;
    return result;
  }

  v29 = v41;
  v28 = v42;
  v30 = v37;
  (*(v41 + 16))(v37, v15, v42);
  (*(v25 + 8))(v15, v10);
  v31 = v38;
  (*(v29 + 32))(v38, v30, v28);
  sub_1001CFC90();
  v33 = v32;
  result = (*(v29 + 8))(v31, v28);
  v34 = v33 / 86400.0;
  if (COERCE__INT64(fabs(v33 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v34 < 9.22337204e18)
  {
    v27 = v34;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

char *LRUCache.deinit()
{
  v1 = *v0;
  sub_100011F00(&v0[qword_10022F7D8], &unk_100230170, &unk_1001E0D90);
  v2 = *&v0[qword_10022F7F0];

  v3 = *&v0[qword_10022F7E0];

  v4 = qword_100243568;
  v5 = sub_1001D0E60();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v8 = *(v1 + 80);
  v9 = *(v1 + 96);
  type metadata accessor for LRUCache.State();
  v6 = *(sub_1001CFF70() + 16);
  sub_1001D1EE0();
  return v0;
}

uint64_t LRUCache.__deallocating_deinit()
{
  LRUCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1001560A4()
{
  sub_1001561B0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1001D0E60();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_1001561B0()
{
  if (!qword_10022F8D0[0])
  {
    sub_1001CFB10();
    v0 = sub_1001D1F00();
    if (!v1)
    {
      atomic_store(v0, qword_10022F8D0);
    }
  }
}

char *sub_100156208(__int128 *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for LRUCache.State();
  return sub_1001CFF60();
}

uint64_t sub_100156264()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001562A0(uint64_t a1)
{
  result = sub_1001CFD60();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100156328(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1001CFD60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100156568(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1001CFD60() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_100156888(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001CFD60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001568F8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v3 = *(type metadata accessor for LRUCache.DatedValue() + 52);
  v4 = *(v1 + 8);
  return sub_1001D1790() & 1;
}

uint64_t sub_10015697C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(v2 + 16);
  v8 = *(v2 + 32);
  v5 = type metadata accessor for LRUCache.DatedValue();
  return (*(*(v7 - 8) + 16))(a2, a1 + *(v5 + 52));
}

uint64_t Message.loggingDescription.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v4 = sub_1001D1830();
  v5._countAndFlagsBits = 2618;
  v5._object = 0xE200000000000000;
  sub_1001D18B0(v5);
  v0 = sub_1001D0B30();
  v2 = v1;

  v6._countAndFlagsBits = v0;
  v6._object = v2;
  sub_1001D18B0(v6);

  return v4;
}

uint64_t sub_100156B30(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v10 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    swift_getAssociatedTypeWitness();
    v7 = sub_1001D1F00();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v11 = *(v7 - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return v4;
}

uint64_t *sub_100156C40()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(*v0 + 80));
  v2 = *(*v0 + 112);
  v3 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v4 = sub_1001D1F00();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100156D4C()
{
  sub_100156C40();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100156D90()
{

  return swift_deallocClassInstance();
}

char *sub_100156DEC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022FB78, &qword_1001E1128);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

unint64_t sub_100156E1C@<X0>(void **a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1001D17A0();
  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    sub_1001D1F90();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_100096954(v10);
    goto LABEL_8;
  }

  sub_100011AC0(&qword_10022FB80, &qword_1001E1148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    result = sub_1000DB37C(_swiftEmptyArrayStorage);
    goto LABEL_9;
  }

  result = v7;
LABEL_9:
  *a2 = result;
  return result;
}

void (*sub_100156F28(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 16));
  sub_100156E1C((v1 + 24), &v4);
  os_unfair_lock_unlock((v1 + 16));
  *a1 = v4;
  return sub_100156FA0;
}

void sub_100156FA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;

    os_unfair_lock_lock((v3 + 16));
    v6 = *(v3 + 24);
    sub_1001CFD60();
    isa = sub_1001D16F0().super.isa;

    v8 = sub_1001D17A0();
    [v6 setValue:isa forKey:v8];

    os_unfair_lock_unlock((v3 + 16));
    v9 = *a1;
  }

  else
  {
    os_unfair_lock_lock((v3 + 16));
    v10 = *(v3 + 24);
    sub_1001CFD60();
    v11 = sub_1001D16F0().super.isa;

    v12 = sub_1001D17A0();
    [v10 setValue:v11 forKey:v12];

    os_unfair_lock_unlock((v3 + 16));
  }
}

uint64_t static PrivateCloudComputeError.wrapAny(error:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v44 = &v40 - v7;
  v8 = sub_1001D01B0();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  __chkstk_darwin(v8, v10);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001D1310();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v40 - v20;
  v22 = sub_1001D0200();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    (*(v23 + 32))(a2, v27, v22);
  }

  v47 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    sub_100157688(v45);
  }

  else
  {

    v45 = a1;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      (*(v13 + 32))(v18, v21, v12);
      sub_100157914(v18, a2);
      (*(v13 + 8))(v18, v12);
    }

    v29 = sub_1001CFA10();
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1001D2030(38);

    v45 = 0x20726F727245534ELL;
    v46 = 0xEF3D6E69616D6F64;
    v30 = [v29 domain];
    v31 = sub_1001D17D0();
    v33 = v32;

    v48._countAndFlagsBits = v31;
    v48._object = v33;
    sub_1001D18B0(v48);

    v49._countAndFlagsBits = 0x3D65646F63202CLL;
    v49._object = 0xE700000000000000;
    sub_1001D18B0(v49);
    v47 = [v29 code];
    v50._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v50);

    v51._countAndFlagsBits = 0x67617373656D202CLL;
    v51._object = 0xEA00000000003D65;
    sub_1001D18B0(v51);
    v34 = [v29 localizedDescription];
    v35 = sub_1001D17D0();
    v37 = v36;

    v52._countAndFlagsBits = v35;
    v52._object = v37;
    sub_1001D18B0(v52);

    (*(v41 + 104))(v43, enum case for PrivateCloudComputeError.Code.internalError(_:), v42);
    v38 = sub_1001CFD60();
    (*(*(v38 - 8) + 56))(v44, 1, 1, v38);
    sub_100011AC0(&qword_100227B70, &qword_1001D3718);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1001D39F0;
    *(v39 + 32) = v29;
    return sub_1001D01D0();
  }
}

uint64_t sub_100157688(__int16 a1)
{
  v2 = HIBYTE(a1);
  v3 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v24[-v6];
  v8 = sub_1001D01B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v24[-v17];
  __chkstk_darwin(v16, v19);
  v21 = &v24[-v20];
  (*(v9 + 104))(v18, **(&off_1002222E0 + a1), v8);
  (*(v9 + 32))(v21, v18, v8);
  if (v2 != 23)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    v24[15] = HIBYTE(a1);
    sub_1001D2120();
  }

  (*(v9 + 16))(v14, v21, v8);
  v22 = sub_1001CFD60();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  sub_1001D01E0();
  sub_1001D01D0();
  return (*(v9 + 8))(v21, v8);
}

uint64_t sub_100157914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v28 - v6;
  v28 = sub_1001D01B0();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v28, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001D1310();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v14 + 16);
  v29(v18, a1, v13);
  v19 = (*(v14 + 88))(v18, v13);
  if (v19 != enum case for NWError.posix(_:))
  {
    if (v19 == enum case for NWError.dns(_:))
    {
      (*(v14 + 96))(v18, v13);
      v21 = *v18;
      v22 = 1601400420;
    }

    else
    {
      if (v19 != enum case for NWError.tls(_:))
      {
        if (v19 != enum case for NWError.wifiAware(_:))
        {
          (*(v14 + 8))(v18, v13);
          goto LABEL_10;
        }

        (*(v14 + 96))(v18, v13);
        v21 = *v18;
        v22 = 0x7261774169666977;
        v23 = 0xEA00000000005F65;
        goto LABEL_8;
      }

      (*(v14 + 96))(v18, v13);
      v21 = *v18;
      v22 = 1601399924;
    }

    v23 = 0xE400000000000000;
LABEL_8:
    v32 = v22;
    v33 = v23;
    v31 = v21;
    goto LABEL_9;
  }

  (*(v14 + 96))(v18, v13);
  v20 = *v18;
  v32 = 0x5F7869736F70;
  v33 = 0xE600000000000000;
  LODWORD(v31) = sub_1001D0EA0();
LABEL_9:
  v34._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v34);

LABEL_10:
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1001D2120();
  (*(v8 + 104))(v12, enum case for PrivateCloudComputeError.Code.networkFailure(_:), v28);
  v24 = sub_1001CFD60();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  sub_100011AC0(&qword_100227B70, &qword_1001D3718);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001D39F0;
  sub_100157D7C();
  *(v25 + 32) = swift_allocError();
  v29(v26, a1, v13);
  return sub_1001D01D0();
}

unint64_t sub_100157D7C()
{
  result = qword_10022F3A8;
  if (!qword_10022F3A8)
  {
    sub_1001D1310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022F3A8);
  }

  return result;
}

uint64_t sub_100157DD4(uint64_t *a1, size_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      *(&bytes + 7) = 0;
      *&bytes = 0;
      return SecRandomCopyBytes(kSecRandomDefault, a2, &bytes);
    }

    v9 = *a1;

    sub_100011E48(v4, v3);
    *&bytes = v4;
    *(&bytes + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1001D3A00;
    sub_100011E48(0, 0xC000000000000000);
    sub_1001CFB20();
    v10 = *(&bytes + 1);
    v11 = *(bytes + 16);
    result = sub_1001CF870();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    v12 = result;
    v13 = sub_1001CF8A0();
    v14 = __OFSUB__(v11, v13);
    v15 = v11 - v13;
    if (!v14)
    {
      sub_1001CF890();
      result = SecRandomCopyBytes(kSecRandomDefault, a2, (v12 + v15));
      *a1 = bytes;
      a1[1] = v10 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v5)
  {
    sub_100011E48(v4, v3);
    *&bytes = v4;
    WORD4(bytes) = v3;
    BYTE10(bytes) = BYTE2(v3);
    BYTE11(bytes) = BYTE3(v3);
    BYTE12(bytes) = BYTE4(v3);
    BYTE13(bytes) = BYTE5(v3);
    BYTE14(bytes) = BYTE6(v3);
    result = SecRandomCopyBytes(kSecRandomDefault, a2, &bytes);
    v7 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
    *a1 = bytes;
    a1[1] = v7;
    return result;
  }

  v16 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100011E48(v4, v3);
  *a1 = xmmword_1001D3A00;
  sub_100011E48(0, 0xC000000000000000);
  v17 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v17 < v4)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (sub_1001CF870() && __OFSUB__(v4, sub_1001CF8A0()))
    {
LABEL_23:
      __break(1u);
    }

    v18 = sub_1001CF8C0();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_1001CF850();

    v16 = v21;
  }

  if (v17 < v4)
  {
    goto LABEL_20;
  }

  result = sub_1001CF870();
  if (result)
  {
    v22 = result;
    v23 = sub_1001CF8A0();
    v24 = v4 - v23;
    if (!__OFSUB__(v4, v23))
    {
      sub_1001CF890();
      v25 = SecRandomCopyBytes(kSecRandomDefault, a2, (v22 + v24));

      *a1 = v4;
      a1[1] = v16 | 0x4000000000000000;
      return v25;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100158160(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_10005971C(result);
    }

    else
    {
      v2 = sub_1001CF8C0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1001CF880();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1001CFB80();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100158200(uint64_t a1)
{
  v9 = sub_100011AC0(&qword_10022FB88, &unk_1001E1150);
  v10 = sub_1001586FC();
  v8[0] = a1;
  v2 = sub_100024DC8(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100059688(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100011CF0(v8);
  return v5;
}

char *sub_1001582B0(uint64_t a1)
{
  v3 = a1;
  if (a1 >= 128)
  {
    v1 = sub_100009294(0, 1, 1, &_swiftEmptyArrayStorage);
    v4 = *(v1 + 2);
    do
    {
      v5 = *(v1 + 3);
      if (v4 >= v5 >> 1)
      {
        v1 = sub_100009294((v5 > 1), v4 + 1, 1, v1);
      }

      *(v1 + 2) = v4 + 1;
      v1[v4 + 32] = v3 | 0x80;
      v2 = v3 >> 7;
      v6 = v3 >> 14;
      ++v4;
      v3 >>= 7;
    }

    while (v6);
LABEL_9:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v1 = &_swiftEmptyArrayStorage;
    LOBYTE(v2) = a1;
    goto LABEL_9;
  }

  __break(1u);
LABEL_14:
  v1 = sub_100009294(0, *(v1 + 2) + 1, 1, v1);
LABEL_10:
  v8 = *(v1 + 2);
  v7 = *(v1 + 3);
  if (v8 >= v7 >> 1)
  {
    v1 = sub_100009294((v7 > 1), v8 + 1, 1, v1);
  }

  *(v1 + 2) = v8 + 1;
  v1[v8 + 32] = v2;
  return v1;
}

uint64_t sub_1001583E0(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v34 = sub_100158160(a1);
  v35 = v2;
  v3 = sub_100157DD4(&v34, a1);
  v4 = v34;
  v5 = v35;
  if (v3)
  {
    sub_100011E48(v34, v35);
    return 0;
  }

  v38 = sub_100158200(&off_10021CEF8);
  v39 = v7;
  v8 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v5);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_12:
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v9 = HIDWORD(v4) - v4;
  }

LABEL_15:
  if (*(sub_1001582B0(v9) + 2))
  {
    sub_1001CFBB0();
  }

  v36 = &type metadata for Data;
  v37 = &protocol witness table for Data;
  v34 = v4;
  v35 = v5;
  v12 = sub_100024DC8(&v34, &type metadata for Data);
  v13 = *v12;
  v14 = v12[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v32, 0, 14);
      sub_100012038(v4, v5);
      v16 = v32;
      v17 = v32;
      goto LABEL_39;
    }

    v18 = *(v13 + 16);
    v19 = *(v13 + 24);
    sub_100012038(v4, v5);
    v20 = sub_1001CF870();
    if (v20)
    {
      v21 = sub_1001CF8A0();
      v13 = v18 - v21;
      if (__OFSUB__(v18, v21))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v20 += v13;
    }

    v22 = __OFSUB__(v19, v18);
    v23 = v19 - v18;
    if (!v22)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v15)
  {
LABEL_27:
    v24 = v13;
    v25 = v13 >> 32;
    v23 = v25 - v24;
    if (v25 >= v24)
    {
      sub_100012038(v4, v5);
      v20 = sub_1001CF870();
      if (!v20)
      {
LABEL_31:
        v27 = sub_1001CF890();
        if (v27 >= v23)
        {
          v28 = v23;
        }

        else
        {
          v28 = v27;
        }

        v29 = (v28 + v20);
        if (v20)
        {
          v17 = v29;
        }

        else
        {
          v17 = 0;
        }

        v16 = v20;
        goto LABEL_39;
      }

      v26 = sub_1001CF8A0();
      if (!__OFSUB__(v24, v26))
      {
        v20 += v24 - v26;
        goto LABEL_31;
      }

LABEL_44:
      __break(1u);
    }

    goto LABEL_42;
  }

  v32[0] = *v12;
  LOWORD(v32[1]) = v14;
  BYTE2(v32[1]) = BYTE2(v14);
  BYTE3(v32[1]) = BYTE3(v14);
  BYTE4(v32[1]) = BYTE4(v14);
  BYTE5(v32[1]) = BYTE5(v14);
  sub_100012038(v4, v5);
  v16 = v32;
  v17 = v32 + BYTE6(v14);
LABEL_39:
  sub_100059688(v16, v17, v33);
  v30 = v33[0];
  v31 = v33[1];
  sub_100011CF0(&v34);
  sub_1001CFC30();
  sub_100011E48(v4, v5);
  sub_100011E48(v30, v31);
  return v38;
}

unint64_t sub_1001586FC()
{
  result = qword_10022FB90;
  if (!qword_10022FB90)
  {
    sub_100011DF4(&qword_10022FB88, &unk_1001E1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FB90);
  }

  return result;
}

uint64_t SystemInfoProtocol.uniqueDeviceIDPercentile.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D1470();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001D1460();
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001D1810();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 32))(a1, a2);
  sub_1001D1800();
  v20 = sub_1001D17E0();
  v22 = v21;
  (*(v15 + 8))(v19, v14);
  if (v22 >> 60 == 15)
  {
    result = sub_1001D2180();
    __break(1u);
  }

  else
  {

    sub_100158AB8();
    sub_1001D1440();
    sub_100012038(v20, v22);
    sub_100158DE0(v20, v22);
    sub_10002683C(v20, v22);
    sub_1001D1430();
    (*(v25 + 8))(v8, v4);
    sub_1001D1450();
    sub_10002683C(v20, v22);
    return (*(v26 + 8))(v13, v27);
  }

  return result;
}

unint64_t sub_100158AB8()
{
  result = qword_100229378;
  if (!qword_100229378)
  {
    sub_1001D1470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229378);
  }

  return result;
}

uint64_t SystemInfo.marketingProductName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SystemInfo.marketingDeviceFamilyName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SystemInfo.productName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t SystemInfo.productVersion.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t SystemInfo.productType.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t SystemInfo.productType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t SystemInfo.buildVersion.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t SystemInfo.buildVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t SystemInfo.automatedDeviceGroup.getter()
{
  v0 = [objc_opt_self() automatedDeviceGroup];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1001D17D0();

  return v2;
}

uint64_t SystemInfo.osInfo.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t SystemInfo.osInfoWithDeviceModel.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

void *sub_100158DCC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100158DE0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_1001D1470();
      sub_100158AB8();
      return sub_1001D1420();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100158F60(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100158F60(v4, v5);
  }

  sub_1001D1470();
  sub_100158AB8();
  return sub_1001D1420();
}

uint64_t sub_100158F60(uint64_t a1, uint64_t a2)
{
  result = sub_1001CF870();
  if (!result || (result = sub_1001CF8A0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1001CF890();
      sub_1001D1470();
      sub_100158AB8();
      return sub_1001D1420();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100159010(uint64_t a1, void *a2)
{
  v19 = 0;
  v4 = sub_1001D1840();
  v5 = sysctlbyname((v4 + 32), 0, &v19, 0, 0);

  if (v5)
  {
    v14 = sub_1001D0EB0();
    if (strerror(v14))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v15 = sub_1001D0EB0();
    if (!strerror(v15))
    {
      __break(1u);
    }

    while (1)
    {
LABEL_15:
      v16 = sub_1001D18C0();
      v18 = v17;
      sub_1001D2030(30);

      v23._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v23);

      v24._countAndFlagsBits = 8250;
      v24._object = 0xE200000000000000;
      sub_1001D18B0(v24);
      v25._countAndFlagsBits = v16;
      v25._object = v18;
      sub_1001D18B0(v25);
LABEL_14:
      sub_1001D2180();
      __break(1u);
    }
  }

  v6 = v19;
  if (v19 < 1)
  {
    sub_1001D2030(42);

    v20._countAndFlagsBits = a1;
    v20._object = a2;
    sub_1001D18B0(v20);
    v21._countAndFlagsBits = 0x656E727574657220;
    v21._object = 0xEF3D657A69732064;
    sub_1001D18B0(v21);
    v22._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v22);

    goto LABEL_14;
  }

  v7 = sub_1001D1A10();
  *(v7 + 16) = v6;
  bzero((v7 + 32), v6);
  v8 = sub_1001D1840();
  v9 = sysctlbyname((v8 + 32), (v7 + 32), &v19, 0, 0);

  if (v9)
  {
    goto LABEL_11;
  }

  v10 = *(v7 + 16);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (!*(v7 + 32 + i))
      {
        break;
      }
    }
  }

  v12 = sub_1001D1860();

  return v12;
}

__n128 sub_1001593AC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1001593E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100159428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001594A4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v69 = sub_1001D17D0();
    v7 = v6;
  }

  else
  {
    v69 = 0;
    v7 = 0;
  }

  v8 = [a1 infoDictionary];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = sub_1001D1700();

  if (!*(v10 + 16) || (v11 = sub_100006028(0x656C646E75424643, 0xEF6E6F6973726556), (v12 & 1) == 0))
  {

LABEL_14:
    v14 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  sub_100089F9C(*(v10 + 56) + 32 * v11, &v72);

  v13 = swift_dynamicCast();
  if (v13)
  {
    v14 = v70;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v71;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  v16 = MobileGestalt_copy_uniqueDeviceID_obj();
  if (!v16)
  {
    __break(1u);
    goto LABEL_36;
  }

  v17 = v16;
  v18 = sub_1001D17D0();
  v20 = v19;

  v21 = MobileGestalt_copy_marketingProductName_obj();
  if (!v21)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v22 = v21;
  v23 = sub_1001D17D0();
  v62 = v24;

  v25 = MobileGestalt_copy_marketingDeviceFamilyName_obj();
  if (!v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = v25;
  v61 = v23;
  v68 = sub_1001D17D0();
  v28 = v27;

  v67 = v28;

  v29 = MobileGestalt_copy_productName_obj();
  if (!v29)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v30 = v29;
  v66 = sub_1001D17D0();
  v32 = v31;

  v33 = MobileGestalt_copy_productVersion_obj();
  if (!v33)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v34 = v33;
  v65 = v32;
  v59 = v20;
  v60 = v18;
  v35 = sub_1001D17D0();
  v37 = v36;

  v58 = v37;

  v38 = MobileGestalt_copy_productType_obj();
  if (!v38)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v39 = v38;
  v64 = v35;
  v63 = sub_1001D17D0();
  v41 = v40;

  v57 = v41;

  v42 = MobileGestalt_copy_buildVersion_obj();
  if (!v42)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = sub_1001D17D0();
  v46 = v45;

  v47 = v7;
  if (v7)
  {
    v48 = v69;
  }

  else
  {
    v48 = 0x6E776F6E6B6E75;
  }

  if (v7)
  {
    v49 = v7;
  }

  else
  {
    v49 = 0xE700000000000000;
  }

  if (v15)
  {
    v50 = v14;
  }

  else
  {
    v50 = 0x6E776F6E6B6E75;
  }

  v56 = v47;
  if (v15)
  {
    v51 = v15;
  }

  else
  {
    v51 = 0xE700000000000000;
  }

  v72 = 0;
  v73 = 0xE000000000000000;

  sub_1001D2030(23);

  v72 = 60;
  v73 = 0xE100000000000000;
  v74._countAndFlagsBits = v68;
  v74._object = v67;
  sub_1001D18B0(v74);

  v75._countAndFlagsBits = 3940414;
  v75._object = 0xE300000000000000;
  sub_1001D18B0(v75);
  v76._object = v65;
  v76._countAndFlagsBits = v66;
  sub_1001D18B0(v76);
  v77._countAndFlagsBits = 59;
  v77._object = 0xE100000000000000;
  sub_1001D18B0(v77);
  v78._countAndFlagsBits = v64;
  v78._object = v58;
  sub_1001D18B0(v78);
  v79._countAndFlagsBits = 59;
  v79._object = 0xE100000000000000;
  sub_1001D18B0(v79);
  v80._countAndFlagsBits = v44;
  v80._object = v46;
  sub_1001D18B0(v80);
  v81._countAndFlagsBits = 3940414;
  v81._object = 0xE300000000000000;
  sub_1001D18B0(v81);
  v82._countAndFlagsBits = v48;
  v82._object = v49;
  sub_1001D18B0(v82);
  v83._countAndFlagsBits = 47;
  v83._object = 0xE100000000000000;
  sub_1001D18B0(v83);
  v84._countAndFlagsBits = v50;
  v84._object = v51;
  sub_1001D18B0(v84);
  v85._countAndFlagsBits = 62;
  v85._object = 0xE100000000000000;
  sub_1001D18B0(v85);
  v54 = v73;
  v55 = v72;
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_1001D2030(23);

  v72 = 60;
  v73 = 0xE100000000000000;
  v86._countAndFlagsBits = v63;
  v86._object = v57;
  sub_1001D18B0(v86);

  v87._countAndFlagsBits = 3940414;
  v87._object = 0xE300000000000000;
  sub_1001D18B0(v87);
  v88._countAndFlagsBits = v66;
  v88._object = v65;
  sub_1001D18B0(v88);

  v89._countAndFlagsBits = 59;
  v89._object = 0xE100000000000000;
  sub_1001D18B0(v89);
  v90._countAndFlagsBits = v64;
  v90._object = v58;
  sub_1001D18B0(v90);

  v91._countAndFlagsBits = 59;
  v91._object = 0xE100000000000000;
  sub_1001D18B0(v91);
  v92._countAndFlagsBits = v44;
  v92._object = v46;
  sub_1001D18B0(v92);

  v93._countAndFlagsBits = 3940414;
  v93._object = 0xE300000000000000;
  sub_1001D18B0(v93);
  v94._countAndFlagsBits = v48;
  v94._object = v49;
  sub_1001D18B0(v94);

  v95._countAndFlagsBits = 47;
  v95._object = 0xE100000000000000;
  sub_1001D18B0(v95);
  v96._countAndFlagsBits = v50;
  v96._object = v51;
  sub_1001D18B0(v96);

  v97._countAndFlagsBits = 62;
  v97._object = 0xE100000000000000;
  sub_1001D18B0(v97);
  v52 = v72;
  v53 = v73;
  *a2 = v69;
  a2[1] = v56;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v60;
  a2[5] = v59;
  a2[6] = v61;
  a2[7] = v62;
  a2[8] = v68;
  a2[9] = v67;
  a2[10] = v66;
  a2[11] = v65;
  a2[12] = v64;
  a2[13] = v58;
  a2[14] = v63;
  a2[15] = v57;
  a2[16] = v44;
  a2[17] = v46;
  a2[18] = v55;
  a2[19] = v54;
  a2[20] = v52;
  a2[21] = v53;
}

uint64_t sub_100159A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = async function pointer to Task.value.getter[1];
  v6 = swift_task_alloc();
  v3[4] = v6;
  v7 = sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  *v6 = v3;
  v6[1] = sub_100159ADC;

  return Task.value.getter(v7, a1, &type metadata for () + 8, v7, &protocol self-conformance witness table for Error);
}

uint64_t sub_100159ADC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100159C54;
  }

  else
  {
    v3 = sub_100159BF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100159BF0()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100159C54()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t getEnumTagSinglePayload for PrivateCloudComputeEntitlement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateCloudComputeEntitlement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100159E14()
{
  result = qword_10022FBA0;
  if (!qword_10022FBA0)
  {
    sub_100011DF4(&qword_10022FBA8, qword_1001E12B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FBA0);
  }

  return result;
}

Swift::Int sub_100159E78()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_100159F7C()
{
  *v0;
  *v0;
  *v0;
  sub_1001D1880();
}

uint64_t sub_10015A05C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015A1A0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10015A08C(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002DLL;
  v3 = *v1;
  v4 = "ecloudcompute.prefetchRequest";
  v5 = "ecloudcompute.knownRateLimits";
  v6 = 0xD000000000000036;
  if (v3 != 4)
  {
    v6 = 0xD00000000000002FLL;
    v5 = "ndleIdentifierOverride";
  }

  if (v3 == 3)
  {
    v6 = 0xD00000000000002DLL;
  }

  else
  {
    v4 = v5;
  }

  v7 = "ecloudcompute.admin";
  if (v3 == 1)
  {
    v2 = 0xD000000000000026;
  }

  else
  {
    v7 = "ecloudcompute.requests";
  }

  if (*v1)
  {
    v8 = v7;
  }

  else
  {
    v2 = 0xD000000000000023;
    v8 = "";
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v2 = v6;
    v9 = v4;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

unint64_t sub_10015A14C()
{
  result = qword_10022FBB0[0];
  if (!qword_10022FBB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10022FBB0);
  }

  return result;
}

uint64_t sub_10015A1A0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021CFB0;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10015A1EC(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void *sub_10015A2E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_100151604(0, v1, 0);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  result = sub_1001D1FB0();
  v6 = result;
  v7 = 0;
  v8 = *(v2 + 36);
  v26 = v2 + 72;
  v27 = v1;
  v28 = v8;
  v29 = v2 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v11 = (*(v2 + 48) + 16 * v6);
    v12 = v11[1];
    v13 = (*(v2 + 56) + 16 * v6);
    v31 = *v13;
    v32 = *v11;
    v14 = v2;
    v15 = v13[1];
    v16 = *(&_swiftEmptyArrayStorage + 2);
    v17 = *(&_swiftEmptyArrayStorage + 3);

    if (v16 >= v17 >> 1)
    {
      result = sub_100151604((v17 > 1), v16 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v16 + 1;
    v18 = &_swiftEmptyArrayStorage + 4 * v16;
    v18[4] = v32;
    v18[5] = v12;
    v18[6] = v31;
    v18[7] = v15;
    v9 = 1 << *(v14 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v2 = v14;
    v3 = v29;
    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v28 != *(v2 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_10001202C(v6, v28, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_10001202C(v6, v28, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v27)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_10015A550(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1001514F8(0, v2, 0);
    v35 = &_swiftEmptyArrayStorage;
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_1001D1FB0();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v30 = v1 + 72;
    v31 = v2;
    v32 = v8;
    v33 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v34 = v7;
      v11 = *(v1 + 56);
      v12 = (*(v1 + 48) + 16 * v6);
      v13 = v1;
      v14 = *v12;
      v15 = v12[1];
      v16 = (v11 + 16 * v6);
      v18 = *v16;
      v17 = v16[1];

      v36._countAndFlagsBits = v14;
      v36._object = v15;
      sub_1001D18B0(v36);
      v37._countAndFlagsBits = 8250;
      v37._object = 0xE200000000000000;
      sub_1001D18B0(v37);
      v38._countAndFlagsBits = v18;
      v38._object = v17;
      sub_1001D18B0(v38);

      v19 = v35;
      v21 = v35[2];
      v20 = v35[3];
      if (v21 >= v20 >> 1)
      {
        result = sub_1001514F8((v20 > 1), v21 + 1, 1);
        v19 = v35;
      }

      v19[2] = v21 + 1;
      v22 = &v19[2 * v21];
      v22[4] = 9;
      v22[5] = 0xE100000000000000;
      v9 = 1 << *(v13 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v1 = v13;
      v4 = v33;
      v23 = *(v33 + 8 * v10);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v35 = v19;
      v8 = v32;
      if (v32 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v9 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v30 + 8 * v10);
        while (v26 < (v9 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_10001202C(v6, v32, 0);
            v9 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_10001202C(v6, v32, 0);
      }

LABEL_4:
      v7 = v34 + 1;
      v6 = v9;
      if (v34 + 1 == v31)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_10015A808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15)
{
  v257 = a6;
  v258 = a8;
  v246 = a7;
  v255 = a5;
  v256 = a4;
  v262 = a1;
  v248 = a9;
  v17 = sub_100011AC0(&qword_10022FCF0, &qword_1001E1698);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v243 = &v238 - v20;
  v241 = sub_1001CFB10();
  v238 = *(v241 - 8);
  v21 = *(v238 + 64);
  __chkstk_darwin(v241, v22);
  v240 = &v238 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_1001D0200();
  v242 = *(v245 - 8);
  v24 = *(v242 + 64);
  v26 = __chkstk_darwin(v245, v25);
  v28 = &v238 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v29);
  v244 = &v238 - v30;
  v31 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31, v33);
  v251 = (&v238 - v34);
  v35 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8, v37);
  v267 = (&v238 - v38);
  sub_100011AC0(&qword_10022FCF8, &unk_1001E16B0);
  v39 = sub_100011AC0(&qword_10022BCD8, &qword_1001DB7D8);
  v40 = *(*(v39 - 8) + 72);
  v41 = (*(*(v39 - 8) + 80) + 32) & ~*(*(v39 - 8) + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1001D3AF0;
  v254 = v42;
  v43 = v42 + v41;
  v44 = (v42 + v41 + *(v39 + 48));
  *(v42 + v41) = 4;
  v249 = a2;
  *v44 = a2;
  v44[1] = a3;
  v45 = enum case for EventValue.string(_:);
  v46 = sub_1001CFEE0();
  v266 = *(v46 - 8);
  v47 = *(v266 + 104);
  v259 = v45;
  v270 = v46;
  v271 = v266 + 104;
  v268 = v47;
  (v47)(v44, v45);
  v263 = v40;
  v264 = v43;
  v48 = v43 + v40;
  v49 = *(v39 + 48);
  *(v43 + v40) = 0;
  v250 = a3;

  result = sub_1001CFD20();
  if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v247 = v31;
  v239 = v28;
  v265 = a15;
  v260 = a13;
  v261 = a12;
  v253 = a11;
  *(v48 + v49) = v51;
  v269 = enum case for EventValue.int(_:);
  v52 = v270;
  v53 = v268;
  (v268)(v48 + v49);
  v54 = v263;
  v55 = v264 + 2 * v263;
  v56 = v264;
  v57 = *(v39 + 48);
  v252 = v39;
  *v55 = 1;
  v58 = &v55[v57];
  v59 = v255;
  *v58 = v256;
  v58[1] = v59;
  v60 = v259;
  v53();
  v61 = v56 + 3 * v54;
  v62 = &v61[*(v39 + 48)];
  *v61 = 2;
  v63 = v257;
  v65 = *(v257 + 20);
  v64 = *(v257 + 21);

  sub_100088D84(v63);
  *v62 = v65;
  v62[1] = v64;
  (v53)(v62, v60, v52);
  v66 = v54;
  v67 = v264;
  v68 = v252;
  v69 = (&v264[v66] + *(v252 + 48));
  LOBYTE(v264[v66]) = 6;
  *v69 = sub_1001CFDB0();
  v69[1] = v70;
  (v53)(v69, v60, v52);
  v71 = &v67[v66] + v263;
  v72 = &v71[*(v68 + 48)];
  *v71 = 7;
  *v72 = sub_1001CFD70();
  v72[1] = v73;
  (v53)(v72, v60, v52);
  v74 = sub_1000D5F00(v254);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v292 = v74;
  v76 = v266;
  v75 = v267;
  v77 = v258;
  if (v258)
  {
    *v267 = v246;
    v75[1] = v77;
    (v53)(v75, v60, v52);
    (*(v76 + 56))(v75, 0, 1, v52);
    sub_1000172F0(v75, 3);
  }

  v78 = v253;
  if (v253)
  {
    *v75 = a10;
    v75[1] = v78;
    (v53)(v75, v60, v52);
    (*(v76 + 56))(v75, 0, 1, v52);
    sub_1000172F0(v75, 5);
  }

  v79 = v265;
  sub_10001208C(v265, &v286, &qword_10022FD00, &qword_1001E16C0);
  if (!v291)
  {
    v276[0] = v288;
    v276[1] = v289;
    v277 = v290;
    sub_1001CFED0();
    v83 = *(v76 + 56);
    v83(v75, 0, 1, v52);
    sub_1000172F0(v75, 18);
    result = sub_1001D2600();
    v84 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
      goto LABEL_132;
    }

    result = sub_1001D2600();
    if (__OFADD__(v84, v85 / 1000000000000000))
    {
      goto LABEL_134;
    }

    *v75 = v84 + v85 / 1000000000000000;
    (v268)(v75, v269, v52);
    v83(v75, 0, 1, v52);
    sub_1000172F0(v75, 17);
    sub_10001208C(v276, &v272, &qword_10022FD10, &qword_1001E16D0);
    if (!v273)
    {
      sub_100011F00(v276, &qword_10022FD10, &qword_1001E16D0);
      sub_100011F00(&v272, &qword_10022FD10, &qword_1001E16D0);
      goto LABEL_26;
    }

    sub_1000446FC(&v272, v274);
    sub_100024DC8(v274, v275);
    v86 = v243;
    sub_1001D10C0();
    v87 = sub_1001D0F40();
    v88 = *(v87 - 8);
    if ((*(v88 + 48))(v86, 1, v87) == 1)
    {
      sub_100011F00(v86, &qword_10022FCF0, &qword_1001E1698);
    }

    else if ((*(v88 + 88))(v86, v87) == enum case for NWEndpoint.url(_:))
    {
      (*(v88 + 96))(v86, v87);
      v89 = v238;
      (*(v238 + 32))();
      *v75 = sub_1001CFA50();
      v75[1] = v90;
      (v268)(v75, v259, v52);
      v83(v75, 0, 1, v52);
      sub_1000172F0(v75, 20);
      (*(v89 + 8))(v240, v241);
    }

    else
    {
      (*(v88 + 8))(v86, v87);
    }

    sub_100024DC8(v274, v275);
    result = sub_1001D10D0();
    v92 = v91 * 1000.0;
    if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_147;
    }

    if (v92 <= -9.22337204e18)
    {
LABEL_148:
      __break(1u);
    }

    else if (v92 < 9.22337204e18)
    {
      *v75 = v92;
      (v268)(v75, v269, v52);
      v83(v75, 0, 1, v52);
      sub_1000172F0(v75, 21);
      sub_100011F00(v276, &qword_10022FD10, &qword_1001E16D0);
      sub_100011CF0(v274);
      goto LABEL_26;
    }

    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (v291 == 1)
  {
    sub_1001CFED0();
    v80 = *(v76 + 56);
    v80(v75, 0, 1, v52);
    sub_1000172F0(v75, 18);
    result = sub_1001D2600();
    v81 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
      goto LABEL_131;
    }

    result = sub_1001D2600();
    if (__OFADD__(v81, v82 / 1000000000000000))
    {
      goto LABEL_133;
    }

    *v75 = v81 + v82 / 1000000000000000;
    (v268)(v75, v269, v52);
    v80(v75, 0, 1, v52);
    sub_1000172F0(v75, 17);
    swift_getErrorValue();
    Error.telemetryString.getter(v284, v285, v75);
    v80(v75, 0, 1, v52);
    sub_1000172F0(v75, 19);

    v79 = v265;
  }

LABEL_26:
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v93 = result;
  v94 = v79 + *(result + 104);
  v95 = *v94;
  v96 = *(v94 + 8);
  if (*(v94 + 24))
  {
    if (*(v94 + 24) != 1)
    {
      goto LABEL_35;
    }

    v97 = *(v94 + 16);
    v98 = *v94;
    swift_errorRetain();
    sub_1001CFED0();
    v99 = v52;
    v100 = *(v76 + 56);
    v100(v75, 0, 1, v99);
    sub_1000172F0(v75, 12);
    result = sub_1001D2600();
    v101 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
      goto LABEL_135;
    }

    result = sub_1001D2600();
    if (__OFADD__(v101, v102 / 1000000000000000))
    {
      goto LABEL_137;
    }

    *v75 = v101 + v102 / 1000000000000000;
    v103 = v270;
    (v268)(v75, v269, v270);
    v100(v75, 0, 1, v103);
    sub_1000172F0(v75, 11);
    swift_getErrorValue();
    Error.telemetryString.getter(v282, v283, v75);
    v100(v75, 0, 1, v103);
    v52 = v103;
    v76 = v266;
    sub_1000172F0(v75, 13);
    result = sub_100128734(v95, v96, v97, 1);
  }

  else
  {
    sub_1001CFED0();
    v104 = *(v76 + 56);
    v104(v75, 0, 1, v52);
    sub_1000172F0(v75, 12);
    result = sub_1001D2600();
    v105 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
      goto LABEL_136;
    }

    result = sub_1001D2600();
    if (__OFADD__(v105, v106 / 1000000000000000))
    {
      goto LABEL_138;
    }

    *v75 = v105 + v106 / 1000000000000000;
    (v268)(v75, v269, v52);
    v104(v75, 0, 1, v52);
    result = sub_1000172F0(v75, 11);
  }

  v79 = v265;
LABEL_35:
  v107 = v79 + v93[27];
  v108 = *v107;
  v109 = *(v107 + 8);
  if (*(v107 + 24))
  {
    if (*(v107 + 24) == 1)
    {
      v110 = *(v107 + 16);
      v111 = *v107;
      swift_errorRetain();
      result = sub_1001D2600();
      v112 = 1000 * result;
      if ((result * 1000) >> 64 != (1000 * result) >> 63)
      {
        goto LABEL_139;
      }

      result = sub_1001D2600();
      if (__OFADD__(v112, v113 / 1000000000000000))
      {
        goto LABEL_141;
      }

      *v75 = v112 + v113 / 1000000000000000;
      (v268)(v75, v269, v52);
      v114 = *(v76 + 56);
      v114(v75, 0, 1, v270);
      sub_1000172F0(v75, 14);
      sub_1001CFED0();
      v114(v75, 0, 1, v270);
      sub_1000172F0(v75, 15);
      swift_getErrorValue();
      Error.telemetryString.getter(v280, v281, v75);
      v114(v75, 0, 1, v270);
      v52 = v270;
      v79 = v265;
      sub_1000172F0(v75, 16);
      result = sub_100128734(v108, v109, v110, 1);
    }
  }

  else
  {
    v115 = *v107;
    v116 = *(v107 + 8);
    result = sub_1001D2600();
    v117 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
      goto LABEL_140;
    }

    result = sub_1001D2600();
    if (__OFADD__(v117, v118 / 1000000000000000))
    {
      goto LABEL_142;
    }

    *v75 = v117 + v118 / 1000000000000000;
    (v268)(v75, v269, v52);
    v119 = *(v76 + 56);
    v119(v75, 0, 1, v52);
    sub_1000172F0(v75, 14);
    sub_1001CFED0();
    v119(v75, 0, 1, v52);
    result = sub_1000172F0(v75, 15);
  }

  v120 = v79 + v93[29];
  if ((*(v120 + 24) & 1) == 0)
  {
    v121 = *(v120 + 8);
    v122 = *(v120 + 16);
    result = sub_1001D2600();
    v123 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    result = sub_1001D2600();
    if (__OFADD__(v123, v124 / 1000000000000000))
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    *v75 = v123 + v124 / 1000000000000000;
    (v268)(v75, v269, v52);
    v125 = *(v76 + 56);
    v125(v75, 0, 1, v52);
    sub_1000172F0(v75, 27);
    sub_1001CFED0();
    v125(v75, 0, 1, v52);
    result = sub_1000172F0(v75, 28);
  }

  v126 = v79 + v93[22];
  v127 = *v126;
  v128 = *(v126 + 8);
  if (*(v126 + 24))
  {
    if (*(v126 + 24) == 1)
    {
      v129 = *(v126 + 16);
      v130 = *v126;
      swift_errorRetain();
      result = sub_1001D2600();
      v131 = 1000 * result;
      if ((result * 1000) >> 64 != (1000 * result) >> 63)
      {
        goto LABEL_143;
      }

      result = sub_1001D2600();
      if (__OFADD__(v131, v132 / 1000000000000000))
      {
        goto LABEL_145;
      }

      *v75 = v131 + v132 / 1000000000000000;
      (v268)(v75, v269, v52);
      v133 = *(v76 + 56);
      v133(v75, 0, 1, v270);
      sub_1000172F0(v75, 22);
      sub_1001CFED0();
      v133(v75, 0, 1, v270);
      sub_1000172F0(v75, 23);
      swift_getErrorValue();
      Error.telemetryString.getter(v278, v279, v75);
      v133(v75, 0, 1, v270);
      v52 = v270;
      v79 = v265;
      sub_1000172F0(v75, 24);
      result = sub_100128734(v127, v128, v129, 1);
    }
  }

  else
  {
    v134 = *v126;
    v135 = *(v126 + 8);
    result = sub_1001D2600();
    v136 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
      goto LABEL_144;
    }

    result = sub_1001D2600();
    if (__OFADD__(v136, v137 / 1000000000000000))
    {
      goto LABEL_146;
    }

    *v75 = v136 + v137 / 1000000000000000;
    (v268)(v75, v269, v52);
    v138 = *(v76 + 56);
    v138(v75, 0, 1, v52);
    sub_1000172F0(v75, 22);
    sub_1001CFED0();
    v138(v75, 0, 1, v52);
    result = sub_1000172F0(v75, 23);
  }

  v139 = v79 + v93[31];
  if ((*(v139 + 16) & 1) == 0)
  {
    v140 = *v139;
    v141 = *(v139 + 8);
    result = sub_1001D2600();
    v142 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    result = sub_1001D2600();
    if (__OFADD__(v142, v143 / 1000000000000000))
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    *v75 = v142 + v143 / 1000000000000000;
    (v268)(v75, v269, v52);
    (*(v76 + 56))(v75, 0, 1, v52);
    result = sub_1000172F0(v75, 34);
  }

  v144 = 0;
  v145 = v79;
  v146 = 0;
  v147 = *(v145 + v93[36]);
  v148 = 1 << *(v147 + 32);
  v149 = -1;
  if (v148 < 64)
  {
    v149 = ~(-1 << v148);
  }

  v150 = v147 + 64;
  v151 = v149 & *(v147 + 64);
  v152 = (v148 + 63) >> 6;
  while (2)
  {
    if (v151)
    {
      v153 = v144;
      goto LABEL_68;
    }

    do
    {
      v153 = v144 + 1;
      if (__OFADD__(v144, 1))
      {
        __break(1u);
        goto LABEL_115;
      }

      if (v153 >= v152)
      {
        goto LABEL_71;
      }

      v151 = *(v150 + 8 * v153);
      ++v144;
    }

    while (!v151);
    v144 = v153;
LABEL_68:
    v154 = __clz(__rbit64(v151));
    v151 &= v151 - 1;
    v155 = *(*(v147 + 56) + ((v153 << 13) | (v154 << 7)) + 40) >> 60 == 15;
    v156 = __OFADD__(v146, v155);
    v146 += v155;
    if (!v156)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_71:
  LODWORD(v258) = a14;
  v264 = v93;
  *v75 = v146 > 0;
  LODWORD(v263) = enum case for EventValue.BOOL(_:);
  v157 = v268;
  (v268)(v75);
  v158 = v52;
  v159 = *(v266 + 56);
  v266 += 56;
  v159(v267, 0, 1, v158);
  sub_1000172F0(v267, 30);
  *v267 = v146;
  (v157)(v267, v269, v158);
  v160 = v267;
  v159(v267, 0, 1, v158);
  result = sub_1000172F0(v160, 31);
  v161 = 0;
  v162 = 0;
  v163 = 1 << *(v147 + 32);
  v164 = -1;
  if (v163 < 64)
  {
    v164 = ~(-1 << v163);
  }

  v165 = v164 & *(v147 + 64);
  v166 = (v163 + 63) >> 6;
  v167 = v265;
  while (2)
  {
    while (2)
    {
      if (!v165)
      {
        while (1)
        {
          v168 = v161 + 1;
          if (__OFADD__(v161, 1))
          {
            break;
          }

          if (v168 >= v166)
          {
            goto LABEL_85;
          }

          v165 = *(v150 + 8 * v168);
          ++v161;
          if (v165)
          {
            v161 = v168;
            goto LABEL_79;
          }
        }

LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

LABEL_79:
      v169 = __clz(__rbit64(v165));
      v165 &= v165 - 1;
      v170 = (*(v147 + 56) + ((v161 << 13) | (v169 << 7)));
      v171 = *v170 >> 62;
      if (!v171 || v171 == 3 && !(*v170 & 0xFFFFFFFFFFFFFFFELL ^ 0xC000000000000000 | v170[1]))
      {
        continue;
      }

      break;
    }

    v156 = __OFADD__(v162++, 1);
    if (!v156)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_85:
  *v160 = v162;
  v172 = v270;
  (v157)(v160, v269, v270);
  v159(v160, 0, 1, v172);
  sub_1000172F0(v160, 29);
  v173 = v264;
  v174 = v167 + v264[28];
  v175 = *(v174 + 16);
  if (v175 != 2)
  {
    v176 = *v174;
    v177 = *(v174 + 8);
    *v160 = v175 & 1;
    (v157)(v160, v263, v172);
    v159(v160, 0, 1, v172);
    sub_1000172F0(v160, 26);
    result = sub_1001D2600();
    v178 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
      goto LABEL_123;
    }

    result = sub_1001D2600();
    if (!__OFADD__(v178, v179 / 1000000000000000))
    {
      *v160 = v178 + v179 / 1000000000000000;
      v180 = v270;
      v157 = v268;
      (v268)(v160, v269, v270);
      v159(v160, 0, 1, v180);
      sub_1000172F0(v160, 25);
      v173 = v264;
      goto LABEL_89;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
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
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

LABEL_89:
  v181 = v167 + v173[32];
  v182 = v157;
  if ((*(v181 + 16) & 1) == 0)
  {
    v183 = *v181;
    v184 = *(v181 + 8);
    result = sub_1001D2600();
    v185 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
      goto LABEL_124;
    }

    result = sub_1001D2600();
    if (__OFADD__(v185, v186 / 1000000000000000))
    {
      goto LABEL_127;
    }

    *v160 = v185 + v186 / 1000000000000000;
    v187 = v270;
    (v157)(v160, v269, v270);
    v159(v160, 0, 1, v187);
    sub_1000172F0(v160, 35);
    v173 = v264;
  }

  v188 = v167 + v173[33];
  v189 = v173;
  if ((*(v188 + 16) & 1) == 0)
  {
    v190 = *v188;
    v191 = *(v188 + 8);
    result = sub_1001D2600();
    v192 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
      goto LABEL_126;
    }

    result = sub_1001D2600();
    if (__OFADD__(v192, v193 / 1000000000000000))
    {
      goto LABEL_128;
    }

    *v160 = v192 + v193 / 1000000000000000;
    v194 = v270;
    (v182)(v160, v269, v270);
    v159(v160, 0, 1, v194);
    sub_1000172F0(v160, 36);
  }

  v195 = v167 + v189[21];
  v196 = v251;
  sub_10001208C(v195, v251, &unk_100230130, &unk_1001E16A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_100011F00(v196, &unk_100230130, &unk_1001E16A0);
    goto LABEL_107;
  }

  if ((EnumCaseMultiPayload - 5) < 2)
  {
LABEL_107:
    v217 = v264;
    v218 = v167 + v264[30];
    if ((*(v218 + 24) & 1) == 0)
    {
      v219 = *v218;
      v220 = *(v218 + 8);
      v221 = *(v218 + 16);
      result = sub_1001D2600();
      v222 = 1000 * result;
      if ((result * 1000) >> 64 != (1000 * result) >> 63)
      {
        goto LABEL_129;
      }

      result = sub_1001D2600();
      if (__OFADD__(v222, v223 / 1000000000000000))
      {
        goto LABEL_130;
      }

      *v160 = v222 + v223 / 1000000000000000;
      v224 = v269;
      v225 = v270;
      v182 = v268;
      (v268)(v160, v269, v270);
      v159(v160, 0, 1, v225);
      sub_1000172F0(v160, 32);
      *v160 = v221;
      v226 = v224;
      v217 = v264;
      (v182)(v160, v226, v225);
      v159(v160, 0, 1, v225);
      sub_1000172F0(v160, 33);
      v167 = v265;
    }

    v227 = *(v167 + v217[38]);
    if (v227 != 2)
    {
      v286 = 0;
      v287 = 0xE000000000000000;
      LOBYTE(v276[0]) = v227 & 1;
      sub_1001D2120();
      v228 = v287;
      *v160 = v286;
      v160[1] = v228;
      v229 = v270;
      (v182)(v160, v259, v270);
      v159(v160, 0, 1, v229);
      sub_1000172F0(v160, 37);
    }

    *v160 = v258 & 1;
    v230 = v270;
    (v182)(v160, v263, v270);
    v159(v160, 0, 1, v230);
    sub_1000172F0(v160, 38);
    v231 = sub_1001CFDA0();
    (*(*(v231 - 8) + 8))(v260, v231);
    v232 = sub_1001CFDD0();
    (*(*(v232 - 8) + 8))(v261, v232);
    v233 = sub_1001CFD60();
    (*(*(v233 - 8) + 8))(v262, v233);
    result = sub_100011F00(v167, &unk_100230120, &qword_1001DEF40);
    v234 = v292;
    v235 = v248;
    *v248 = 0xD000000000000015;
    v235[1] = 0x80000001001E7500;
    v237 = v249;
    v236 = v250;
    v235[2] = v234;
    v235[3] = v237;
    v235[4] = v236;
    return result;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v203 = (v196 + *(sub_100011AC0(&qword_10022FD08, &qword_1001E16C8) + 48));
    v204 = *v203;
    v205 = v203[1];
    (*(v242 + 32))(v244, v196, v245);
    result = sub_1001D2600();
    v206 = 1000 * result;
    if ((result * 1000) >> 64 != (1000 * result) >> 63)
    {
      goto LABEL_151;
    }

    result = sub_1001D2600();
    if (__OFADD__(v206, v207 / 1000000000000000))
    {
      goto LABEL_153;
    }

    *v160 = v206 + v207 / 1000000000000000;
    v208 = v270;
    (v268)(v160, v269, v270);
    v159(v267, 0, 1, v208);
    sub_1000172F0(v267, 9);
    v209 = v242;
    v210 = v239;
    v211 = v245;
    (*(v242 + 16))(v239, v244, v245);
    v212 = sub_1001D0190();
    v213 = *(v209 + 8);
    v256 = v214;
    v257 = v213;
    v213(v210, v211);
    v215 = v268;
    *v267 = v212;
    v267[1] = v256;
    v160 = v267;
    (v215)(v267, v259, v208);
    v159(v160, 0, 1, v208);
    sub_1000172F0(v160, 10);
    sub_1001CFED0();
    v216 = v208;
    v182 = v215;
    v159(v160, 0, 1, v216);
    sub_1000172F0(v160, 8);
    v257(v244, v245);
    goto LABEL_107;
  }

  v198 = *v196;
  v199 = v196[1];
  result = sub_1001D2600();
  v200 = 1000 * result;
  if ((result * 1000) >> 64 != (1000 * result) >> 63)
  {
    goto LABEL_150;
  }

  result = sub_1001D2600();
  if (!__OFADD__(v200, v201 / 1000000000000000))
  {
    *v160 = v200 + v201 / 1000000000000000;
    v202 = v270;
    (v182)(v160, v269, v270);
    v159(v160, 0, 1, v202);
    sub_1000172F0(v160, 9);
    sub_1001CFED0();
    v159(v160, 0, 1, v202);
    sub_1000172F0(v160, 8);
    goto LABEL_107;
  }

LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

uint64_t sub_10015C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v29[0] = a7;
  v10 = v7;
  v14 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = v29 - v17;
  sub_10001208C(a1, v29 - v17, &qword_100229350, &unk_1001D6BA0);
  v19 = sub_1001D1BA0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100011F00(v18, &qword_100229350, &unk_1001D6BA0);
    if (*(a3 + 16))
    {
LABEL_3:
      v21 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = sub_1001D1A70();
      v24 = v23;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1001D1B90();
    (*(v20 + 8))(v18, v19);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
  v24 = 0;
LABEL_6:
  v25 = *v10;
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  sub_100011AC0(a5, a6);
  v27 = (v24 | v22);
  if (v24 | v22)
  {
    v30[0] = 0;
    v30[1] = 0;
    v27 = v30;
    v30[2] = v22;
    v30[3] = v24;
  }

  v29[1] = 1;
  v29[2] = v27;
  v29[3] = v25;
  swift_task_create();
}

uint64_t sub_10015C9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_10001208C(a3, v28 - v12, &qword_100229350, &unk_1001D6BA0);
  v14 = sub_1001D1BA0();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100011F00(v13, &qword_100229350, &unk_1001D6BA0);
  }

  else
  {
    sub_1001D1B90();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1001D1A70();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1001D1840() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_100011F00(a3, &qword_100229350, &unk_1001D6BA0);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100011F00(a3, &qword_100229350, &unk_1001D6BA0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_10015CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v6 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_10015CE00, 0, 0);
}

uint64_t sub_10015CE00()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_10015CEF0;
  v7 = v0[7];
  v6 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000001BLL, 0x80000001001E58A0, sub_100119DA0, v3, v7);
}

uint64_t sub_10015CEF0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_10015D25C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_10015D00C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10015D00C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[8] + *(v0[7] + 48);
  v0[15] = *v5;
  v0[16] = *(v5 + 8);
  v6 = *(v5 + 16);
  (*(v2 + 32))(v1);
  v11 = (v4 + *v4);
  v7 = v4[1];
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_10015D148;
  v9 = v0[6];

  return v11();
}

uint64_t sub_10015D148()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10015D388;
  }

  else
  {
    v3 = sub_10015D2D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015D25C()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10015D2D4()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  sub_1001D1AA0();
  sub_100011E48(v2, v1);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10015D388()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v0[2] = v0[18];
  swift_errorRetain();
  sub_1001D1A90();
  swift_willThrow();
  sub_100011E48(v2, v1);
  (*(v4 + 8))(v3, v5);
  v6 = v0[18];
  v7 = v0[11];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

unint64_t sub_10015D464@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 2;
  v2 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v3 = v2[21];
  sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + v2[22];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 2;
  v5 = v2[23];
  v6 = sub_1001D0ED0();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = a1 + v2[24];
  *v7 = 0;
  *(v7 + 8) = 4;
  v8 = (a1 + v2[25]);
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0xA000000000000000;
  v9 = a1 + v2[26];
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 2;
  v10 = a1 + v2[27];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 2;
  v11 = a1 + v2[28];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 2;
  v12 = a1 + v2[29];
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 1;
  v13 = a1 + v2[30];
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  v14 = a1 + v2[31];
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = a1 + v2[32];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = a1 + v2[33];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = a1 + v2[34];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (a1 + v2[35]);
  *v18 = 0;
  v18[1] = 0;
  v19 = v2[36];
  *(a1 + v19) = sub_1000DBA3C(&_swiftEmptyArrayStorage);
  v20 = v2[37];
  result = sub_1000DBC18(&_swiftEmptyArrayStorage);
  *(a1 + v20) = result;
  *(a1 + v2[38]) = 2;
  v22 = a1 + v2[39];
  *v22 = 0;
  *(v22 + 8) = 1;
  return result;
}

double sub_10015D65C@<D0>(_OWORD *a1@<X8>)
{
  v57 = a1;
  v2 = sub_1001CFDA0();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  __chkstk_darwin(v2, v4);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1001CFDD0();
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v53, v8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001CFD60();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v51 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v46 - v21;
  v23 = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(v23);
  v24 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_10001208C(v23 + *(v24 + 28), v22, &unk_100230120, &qword_1001DEF40);
  os_unfair_lock_unlock(v23);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v25 = *v1;
  v26 = (v1 + *(*v1 + 192));
  v27 = v26[1];
  v50 = *v26;
  v28 = (v1 + v25[28]);
  v29 = v28[1];
  v49 = *v28;
  v30 = (v1 + v25[32]);
  v31 = v30[9];
  v60[8] = v30[8];
  v60[9] = v31;
  v60[10] = v30[10];
  v32 = v30[5];
  v60[4] = v30[4];
  v60[5] = v32;
  v33 = v30[7];
  v60[6] = v30[6];
  v60[7] = v33;
  v34 = v30[1];
  v60[0] = *v30;
  v60[1] = v34;
  v35 = v30[3];
  v60[2] = v30[2];
  v60[3] = v35;
  v36 = (v1 + v25[26]);
  v37 = v36[1];
  v48 = *v36;
  v38 = (v1 + v25[25]);
  v39 = v38[1];
  v47 = *v38;
  v40 = v52;
  (*(v6 + 16))(v52, v1 + v25[33], v53);
  v41 = v54;
  (*(v55 + 16))(v54, v1 + *(*v1 + 320), v56);
  v42 = *(v1 + *(*v1 + 248));
  sub_10001208C(v22, v19, &unk_100230120, &qword_1001DEF40);

  sub_1000884D8(v60, v58);

  sub_10015A808(v51, v50, v27, v49, v29, v60, v48, v37, v58, v47, v39, v40, v41, v42, v19);
  sub_100011F00(v22, &unk_100230120, &qword_1001DEF40);
  result = *v58;
  v44 = v58[1];
  v45 = v57;
  *v57 = v58[0];
  v45[1] = v44;
  *(v45 + 4) = v59;
  return result;
}

void sub_10015DAB8()
{
  v1 = v0;
  v2 = sub_1001D20D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v0 + 184);
  v9 = *(*v0 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v3 + 8))(v7, v2);
  v10 = v14[0];
  v11 = v14[1];
  v12 = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(v12);
  v13 = v12 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  sub_10001208C(v13, v14, &qword_10022FD00, &qword_1001E16C0);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_100011F00(v14, &qword_10022FD00, &qword_1001E16C0);
    }

    sub_100011F00(v13, &qword_10022FD00, &qword_1001E16C0);
    *v13 = v10;
    *(v13 + 8) = v11;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 41) = 0u;
  }

  else
  {
    sub_100011F00(&v15, &qword_10022FD10, &qword_1001E16D0);
  }

  os_unfair_lock_unlock(v12);
}

uint64_t sub_10015DD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001208C(a1, v9, &qword_10022FD00, &qword_1001E16C0);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_100011F00(v9, &qword_10022FD00, &qword_1001E16C0);
    }
  }

  else
  {
    if (v10[3])
    {
      return sub_100011F00(v10, &qword_10022FD10, &qword_1001E16D0);
    }

    a2 = v9[0];
    a3 = v9[1];
  }

  sub_100011F00(a1, &qword_10022FD00, &qword_1001E16C0);
  *a1 = a2;
  *(a1 + 8) = a3;
  result = sub_100044698(a4, a1 + 16);
  *(a1 + 56) = 0;
  return result;
}

void sub_10015DE10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001D20D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v1 + 184);
  v11 = *(*v1 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v9, v4);
  v12 = v19[0];
  v13 = v19[1];
  v14 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v14);
  v15 = v14 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  sub_10001208C(v15, v19, &qword_10022FD00, &qword_1001E16C0);
  if (v21)
  {
    v16 = &qword_10022FD00;
    v17 = &qword_1001E16C0;
    if (v21 != 1)
    {
      sub_100011F00(v15, &qword_10022FD00, &qword_1001E16C0);
      *v15 = v12;
      *(v15 + 8) = v13;
      *(v15 + 16) = a1;
      *(v15 + 56) = 1;
      swift_errorRetain();
      goto LABEL_7;
    }

    v18 = v19;
  }

  else
  {
    v16 = &qword_10022FD10;
    v17 = &qword_1001E16D0;
    v18 = &v20;
  }

  sub_100011F00(v18, v16, v17);
LABEL_7:
  os_unfair_lock_unlock(v14);
}

uint64_t sub_10015E07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v16 - v9;
  v11 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v12 = (a1 + *(v11 + 100));
  if (v12[3] >> 61 >= 5uLL)
  {
    *v12 = a2;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = 0;
  }

  v13 = *(v11 + 84);
  sub_10001208C(a1 + v13, v10, &unk_100230130, &unk_1001E16A0);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    return sub_100011F00(v10, &unk_100230130, &unk_1001E16A0);
  }

  if (result > 4)
  {
    if (result == 5)
    {
      sub_100011F00(a1 + v13, &unk_100230130, &unk_1001E16A0);
      *(a1 + v13) = a3;
      swift_storeEnumTagMultiPayload();
    }
  }

  else if (result != 3)
  {
    v15 = sub_1001D0200();
    return (*(*(v15 - 8) + 8))(v10, v15);
  }

  return result;
}

uint64_t sub_10015E234(uint64_t a1, uint64_t a2, int *a3)
{
  v4[7] = a2;
  v4[8] = v3;
  v6 = sub_1001D0DC0();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  v4[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = sub_1001D20D0();
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v17 = (a3 + *a3);
  v14 = a3[1];
  v15 = swift_task_alloc();
  v4[17] = v15;
  *v15 = v4;
  v15[1] = sub_10015E42C;

  return v17(v4 + 4);
}

uint64_t sub_10015E42C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10015EB34;
  }

  else
  {
    v3 = sub_10015E540;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015E540()
{
  v62 = v0;
  v1 = v0[4];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[7];
  v6 = v0[8];
  v59 = v5;
  v60 = v0[18];
  sub_1001428C0(v1, v60 != 0);
  v7 = *(*v6 + 184);
  v8 = *(*v6 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v2 + 8))(v3, v4);
  v57 = v0[2];
  v58 = v0[3];
  v9 = (v6 + *(*v6 + 144));
  os_unfair_lock_lock(v9);
  v10 = v9 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v11 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v12 = v11[23];
  sub_100011F00(&v10[v12], &unk_100230110, &unk_1001D6520);
  v13 = sub_1001D0ED0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v10[v12], v59, v13);
  (*(v14 + 56))(&v10[v12], 0, 1, v13);
  if (v60)
  {
    v15 = &v10[v11[22]];
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 2);
    *v15 = v1;
    *(v15 + 1) = v57;
    *(v15 + 2) = v58;
    v19 = v15[24];
    v15[24] = 1;
    swift_errorRetain();
    sub_100128734(v16, v17, v18, v19);
    os_unfair_lock_unlock(v9);
  }

  else
  {
    v21 = v0[12];
    v20 = v0[13];
    v22 = &v10[v11[22]];
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = *(v22 + 2);
    *v22 = v57;
    *(v22 + 1) = v58;
    *(v22 + 2) = 0;
    v26 = v22[24];
    v22[24] = 0;
    sub_100128734(v23, v24, v25, v26);
    v27 = v11[21];
    sub_10001208C(&v10[v27], v20, &unk_100230130, &unk_1001E16A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = v0[13];
    if (EnumCaseMultiPayload)
    {
      sub_100011F00(v29, &unk_100230130, &unk_1001E16A0);
    }

    else
    {
      v30 = v0[12];
      v31 = *v29;
      sub_100011F00(&v10[v27], &unk_100230130, &unk_1001E16A0);
      *&v10[v27] = v31;
      swift_storeEnumTagMultiPayload();
    }

    v32 = v0[10];
    v33 = v0[11];
    v35 = v0[8];
    v34 = v0[9];
    os_unfair_lock_unlock(v9);
    v36 = *(*v35 + 296);
    (*(v32 + 16))(v33, v35 + *(*v35 + 304), v34);
    v37 = sub_1001D0DE0();
    v38 = sub_1001D1EA0();
    v39 = sub_1001D1ED0();
    v40 = v0[10];
    v41 = v0[11];
    v42 = v0[9];
    if (v39)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, v38, v44, "RopesInvokeRequestSent", "", v43, 2u);
    }

    (*(v40 + 8))(v41, v42);
  }

  v45 = *(*v0[8] + 272);

  v46 = sub_1001D0E50();
  v47 = sub_1001D1E00();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v0[8];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v61 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_1000954E0(*(v48 + *(*v48 + 280)), *(v48 + *(*v48 + 280) + 8), &v61);
    _os_log_impl(&_mh_execute_header, v46, v47, "%s Ropes invoke request sent", v49, 0xCu);
    sub_100011CF0(v50);
  }

  v51 = v0[16];
  v52 = v0[13];
  v53 = v0[11];
  if (v0[18])
  {
    v0[6] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
  }

  else
  {
    v55 = v0[16];
  }

  v54 = v0[1];

  return v54();
}

uint64_t sub_10015EB34()
{
  v60 = v0;
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[8];
  v58 = v0[7];
  sub_1001428C0(v1, v1 != 0);
  v6 = *(*v5 + 184);
  v7 = *(*v5 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v3 + 8))(v2, v4);
  v56 = v0[2];
  v57 = v0[3];
  v8 = (v5 + *(*v5 + 144));
  os_unfair_lock_lock(v8);
  v9 = v8 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v10 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v11 = v10[23];
  sub_100011F00(&v9[v11], &unk_100230110, &unk_1001D6520);
  v12 = sub_1001D0ED0();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v9[v11], v58, v12);
  (*(v13 + 56))(&v9[v11], 0, 1, v12);
  if (v1)
  {
    v14 = &v9[v10[22]];
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 2);
    *v14 = v1;
    *(v14 + 1) = v56;
    *(v14 + 2) = v57;
    v18 = v14[24];
    v14[24] = 1;
    swift_errorRetain();
    sub_100128734(v15, v16, v17, v18);
    os_unfair_lock_unlock(v8);
  }

  else
  {
    v20 = v0[12];
    v19 = v0[13];
    v21 = &v9[v10[22]];
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = *(v21 + 2);
    *v21 = v56;
    *(v21 + 1) = v57;
    *(v21 + 2) = 0;
    v25 = v21[24];
    v21[24] = 0;
    sub_100128734(v22, v23, v24, v25);
    v26 = v10[21];
    sub_10001208C(&v9[v26], v19, &unk_100230130, &unk_1001E16A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = v0[13];
    if (EnumCaseMultiPayload)
    {
      sub_100011F00(v28, &unk_100230130, &unk_1001E16A0);
    }

    else
    {
      v29 = v0[12];
      v30 = *v28;
      sub_100011F00(&v9[v26], &unk_100230130, &unk_1001E16A0);
      *&v9[v26] = v30;
      swift_storeEnumTagMultiPayload();
    }

    v31 = v0[10];
    v32 = v0[11];
    v34 = v0[8];
    v33 = v0[9];
    os_unfair_lock_unlock(v8);
    v35 = *(*v34 + 296);
    (*(v31 + 16))(v32, v34 + *(*v34 + 304), v33);
    v36 = sub_1001D0DE0();
    v37 = sub_1001D1EA0();
    v38 = sub_1001D1ED0();
    v40 = v0[10];
    v39 = v0[11];
    v41 = v0[9];
    if (v38)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, v37, v43, "RopesInvokeRequestSent", "", v42, 2u);
    }

    (*(v40 + 8))(v39, v41);
  }

  v44 = *(*v0[8] + 272);

  v45 = sub_1001D0E50();
  v46 = sub_1001D1E00();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v0[8];
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v59 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_1000954E0(*(v47 + *(*v47 + 280)), *(v47 + *(*v47 + 280) + 8), &v59);
    _os_log_impl(&_mh_execute_header, v45, v46, "%s Ropes invoke request sent", v48, 0xCu);
    sub_100011CF0(v49);
  }

  v50 = v0[16];
  v51 = v0[13];
  v52 = v0[11];
  if (v0[18])
  {
    v0[6] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
  }

  else
  {
    v54 = v0[16];
  }

  v53 = v0[1];

  return v53();
}

void sub_10015F120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v130 = a2;
  v5 = type metadata accessor for ThimbledEvent();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v132 = *(v10 - 8);
  v11 = *(v132 + 64);
  __chkstk_darwin(v10, v12);
  v131 = &v110 - v13;
  v14 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v129 = (&v110 - v17);
  v18 = sub_1001CFDD0();
  v136 = *(v18 - 8);
  v137 = v18;
  v19 = *(v136 + 64);
  __chkstk_darwin(v18, v20);
  v138 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001CFDA0();
  v134 = *(v22 - 8);
  v135 = v22;
  v23 = *(v134 + 64);
  __chkstk_darwin(v22, v24);
  v140 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001CFD60();
  v127 = *(v26 - 8);
  v128 = v26;
  v27 = *(v127 + 64);
  __chkstk_darwin(v26, v28);
  v139 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1001D0DC0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30, v33);
  v35 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v36);
  v37 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  LOBYTE(a1) = sub_10015FD78(v36 + *(v37 + 28), a1);
  os_unfair_lock_unlock(v36);
  if ((a1 & 1) == 0)
  {
    return;
  }

  v38 = *(*v3 + 272);

  v39 = sub_1001D0E50();
  v40 = sub_1001D1E00();

  v41 = os_log_type_enabled(v39, v40);
  v125 = v9;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v143 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_1000954E0(*(v3 + *(*v3 + 280)), *(v3 + *(*v3 + 280) + 8), &v143);
    _os_log_impl(&_mh_execute_header, v39, v40, "%s Ropes invoke response head received", v42, 0xCu);
    sub_100011CF0(v43);
  }

  v123 = v5;
  v124 = v10;
  v44 = *(*v3 + 296);
  (*(v31 + 16))(v35, v3 + *(*v3 + 304), v30);
  v45 = sub_1001D0DE0();
  v46 = sub_1001D1EA0();
  if (sub_1001D1ED0())
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v46, v48, "RopesResponseHeadReceived", "", v47, 2u);
  }

  (*(v31 + 8))(v35, v30);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v49 = *v3;
  v50 = (v3 + *(*v3 + 192));
  v52 = *v50;
  v51 = v50[1];
  v126 = v52;
  v133 = v51;
  (*(v134 + 16))(v140, v3 + *(v49 + 320), v135);
  v53 = *v3;
  v54 = (v3 + *(*v3 + 224));
  v55 = v54[1];
  v116 = *v54;
  v56 = v3 + v53[32];
  v58 = *(v56 + 160);
  v57 = *(v56 + 168);
  v119 = v58;
  v118 = v57;
  v59 = (v3 + v53[26]);
  v60 = v59[1];
  v111 = *v59;
  (*(v136 + 16))(v138, v3 + v53[33], v137);
  sub_100011AC0(&qword_10022FEE0, &unk_1001E1BB0);
  v61 = sub_100011AC0(&qword_10022BD00, &qword_1001DB818);
  v62 = *(*(v61 - 8) + 72);
  v63 = (*(*(v61 - 8) + 80) + 32) & ~*(*(v61 - 8) + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1001D3AF0;
  v120 = v64;
  v65 = v64 + v63;
  v66 = (v64 + v63 + *(v61 + 48));
  *(v64 + v63) = 6;
  v121 = v60;

  v117 = v55;

  *v66 = sub_1001CFD70();
  v66[1] = v67;
  v68 = enum case for EventValue.string(_:);
  v69 = sub_1001CFEE0();
  v122 = *(v69 - 8);
  v70 = *(v122 + 104);
  v115 = v68;
  v71 = v70;
  (v70)(v66, v68, v69);
  v114 = v62;
  v72 = v65 + v62;
  v73 = *(v61 + 48);
  *(v65 + v62) = 0;
  sub_1001CFD20();
  if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v74 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v74 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v112 = v3;
  v113 = 0x80000001001E76D0;
  *(v72 + v73) = v74;
  v75 = v71;
  (v71)(v72 + v73, enum case for EventValue.int(_:), v69);
  v76 = v114;
  v77 = (v65 + 2 * v114);
  v78 = *(v61 + 48);
  *v77 = 1;
  v79 = &v77[v78];
  v80 = v117;
  *v79 = v116;
  v79[1] = v80;
  v81 = v115;
  v75();
  v82 = (v65 + 3 * v76);
  v83 = *(v61 + 48);
  *v82 = 2;
  v84 = &v82[v83];
  v85 = v118;
  *v84 = v119;
  v84[1] = v85;
  v75();
  v86 = (v65 + 4 * v76);
  v87 = *(v61 + 48);
  *v86 = 4;
  v88 = &v86[v87];
  v89 = v133;
  *v88 = v126;
  v88[1] = v89;
  v75();
  v90 = (v65 + 5 * v76);
  v91 = &v90[*(v61 + 48)];
  *v90 = 5;
  *v91 = sub_1001CFDB0();
  v91[1] = v92;
  v93 = v91;
  v94 = v81;
  (v75)(v93, v81, v69);

  v95 = sub_1000D5948(v120);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v143 = v95;
  v96 = v129;
  v97 = v122;
  v98 = v121;
  if (v121)
  {
    *v129 = v111;
    v96[1] = v98;
    (v75)(v96, v94, v69);
    (*(v97 + 56))(v96, 0, 1, v69);
    sub_100016B34(v96, 3);
  }

  v99 = v130;
  *v96 = v130 == 0;
  (v75)(v96, enum case for EventValue.BOOL(_:), v69);
  v100 = *(v97 + 56);
  v100(v96, 0, 1, v69);
  sub_100016B34(v96, 7);
  v101 = v125;
  v102 = v112;
  if (v99)
  {
    swift_getErrorValue();
    v103 = v141;
    v104 = v142;
    swift_errorRetain();
    Error.telemetryString.getter(v103, v104, v96);
    v100(v96, 0, 1, v69);
    sub_100016B34(v96, 8);
  }

  (*(v136 + 8))(v138, v137);
  (*(v134 + 8))(v140, v135);
  (*(v127 + 8))(v139, v128);
  v105 = v143;
  v106 = *(*v102 + 288);
  v101[3] = &type metadata for InvokeResponseMetric;
  v101[4] = sub_1001AFD1C();
  v107 = swift_allocObject();
  *v101 = v107;
  v107[2] = 0xD000000000000015;
  v107[3] = v113;
  v107[4] = v105;
  v108 = v133;
  v107[5] = v126;
  v107[6] = v108;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v109 = v131;
  sub_1001D1BC0();
  (*(v132 + 8))(v109, v124);
}

BOOL sub_10015FD78(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_1001D0ED0();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001D0FD0();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13, v15);
  v17 = (&v31 - v16);
  v18 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v19 = v18[21];
  sub_10001208C(a1 + v19, v17, &unk_100230130, &unk_1001E16A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = *v17;
    sub_100011F00(a1 + v19, &unk_100230130, &unk_1001E16A0);
    *(a1 + v19) = v21;
    swift_storeEnumTagMultiPayload();

    sub_1001D0FE0();
    v22 = sub_1001D0FC0();
    (*(v32 + 8))(v12, v33);
    v23 = a1 + v18[34];
    *v23 = v22;
    *(v23 + 8) = 0;
    sub_1001D0F90();
    if (qword_100227710 != -1)
    {
      swift_once();
    }

    v24 = sub_1001D1380();
    sub_10003A37C(v24, qword_100242EB0);
    v25 = sub_1001D0EE0();
    v27 = v26;

    (*(v35 + 8))(v7, v36);
    v28 = (a1 + v18[35]);
    v29 = v28[1];

    *v28 = v25;
    v28[1] = v27;
  }

  else
  {
    sub_100011F00(v17, &unk_100230130, &unk_1001E16A0);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t sub_10016008C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for ThimbledEvent();
  v2[15] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v8 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v2[18] = v8;
  v9 = *(v8 - 8);
  v2[19] = v9;
  v10 = *(v9 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v11 = sub_1001D0E00();
  v2[22] = v11;
  v12 = *(v11 - 8);
  v2[23] = v12;
  v13 = *(v12 + 64) + 15;
  v2[24] = swift_task_alloc();
  v14 = sub_1001D0DC0();
  v2[25] = v14;
  v15 = *(v14 - 8);
  v2[26] = v15;
  v16 = *(v15 + 64) + 15;
  v2[27] = swift_task_alloc();
  v17 = sub_1001D20D0();
  v2[28] = v17;
  v18 = *(v17 - 8);
  v2[29] = v18;
  v19 = *(v18 + 64) + 15;
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_10016031C, 0, 0);
}

uint64_t sub_10016031C()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(*v5 + 184);
  v7 = *(*v5 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = (v5 + *(*v5 + 144));
  os_unfair_lock_lock(v10);
  v11 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_100160A40(v10 + *(v11 + 28), v4, v8, v9);
  os_unfair_lock_unlock(v10);
  v12 = *(v0 + 216);
  v13 = *(v0 + 88);
  v14 = *(v13 + *(*v13 + 312));
  v15 = v13 + *(*v13 + 296);
  v16 = sub_1001D0DE0();
  sub_1001D0E10();
  v17 = sub_1001D1E80();
  if (sub_1001D1ED0())
  {
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v20 = *(v0 + 176);

    sub_1001D0E40();

    if ((*(v19 + 88))(v18, v20) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v21 = "";
    }

    v22 = *(v0 + 216);
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v24, "FullTrustedRequest", v21, v23, 2u);
  }

  v26 = *(v0 + 208);
  v25 = *(v0 + 216);
  v27 = v16;
  v28 = *(v0 + 200);
  v29 = *(v0 + 168);
  v30 = *(v0 + 152);
  v31 = *(v0 + 136);
  v32 = *(v0 + 120);
  v33 = *(v0 + 88);
  v54 = *(v0 + 96);
  v55 = *(v0 + 144);
  v56 = *(v0 + 80);

  (*(v26 + 8))(v25, v28);
  sub_10015D65C((v0 + 16));
  v34 = *(*v33 + 288);
  v31[3] = &type metadata for TrustedRequestMetric;
  v31[4] = sub_1001ABB44();
  v35 = swift_allocObject();
  *v31 = v35;
  v36 = *(v0 + 32);
  *(v35 + 16) = *(v0 + 16);
  *(v35 + 32) = v36;
  *(v35 + 48) = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  sub_1001D1BC0();
  v37 = *(v30 + 8);
  v37(v29, v55);
  v38 = sub_1001D0200();
  if ((*(*(v38 - 8) + 48))(v56, 1, v38) == 1)
  {
    v39 = *(v0 + 88);
    (*(*(v0 + 104) + 16))(*(v0 + 112), v33 + v34, *(v0 + 96));
    v40 = (v39 + *(*v39 + 208));
    v41 = v40[1];
    if (v41)
    {
      v42 = *v40;
      v43 = v41;
    }

    else
    {
      v42 = 0;
      v43 = 0xE000000000000000;
    }

    v44 = *(v0 + 160);
    v45 = *(v0 + 144);
    v46 = *(v0 + 120);
    v47 = *(v0 + 128);
    v49 = *(v0 + 104);
    v48 = *(v0 + 112);
    v50 = *(v0 + 96);
    *v47 = v42;
    v47[1] = v43;
    swift_storeEnumTagMultiPayload();

    sub_1001D1BC0();
    (*(v49 + 8))(v48, v50);
    v37(v44, v45);
  }

  v51 = swift_task_alloc();
  *(v0 + 248) = v51;
  *v51 = v0;
  v51[1] = sub_100160854;
  v52 = *(v0 + 88);

  return sub_100160CCC();
}

uint64_t sub_100160854()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 192);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 160);
  v7 = *(*v0 + 136);
  v8 = *(*v0 + 128);
  v9 = *(*v0 + 112);
  v12 = *v0;

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_100160A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v7 = sub_100011AC0(&qword_10022FCE0, &qword_1001E1668);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v25 - v10;
  v12 = sub_1001D0200();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a2, v11, &qword_10022FCE0, &qword_1001E1668);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100011F00(v11, &qword_10022FCE0, &qword_1001E1668);
    v18 = (a1 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 84));
    sub_100011F00(v18, &unk_100230130, &unk_1001E16A0);
    v19 = v26;
    *v18 = a3;
    v18[1] = v19;
  }

  else
  {
    v20 = *(v13 + 32);
    v20(v17, v11, v12);
    v21 = a1 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 84);
    sub_100011F00(v21, &unk_100230130, &unk_1001E16A0);
    v22 = (v21 + *(sub_100011AC0(&qword_10022FD08, &qword_1001E16C8) + 48));
    v20(v21, v17, v12);
    v23 = v26;
    *v22 = a3;
    v22[1] = v23;
  }

  sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100160CCC()
{
  v1[144] = v0;
  v2 = sub_1001D0D70();
  v1[145] = v2;
  v3 = *(v2 - 8);
  v1[146] = v3;
  v4 = *(v3 + 64) + 15;
  v1[147] = swift_task_alloc();
  v5 = *(*(sub_1001D1810() - 8) + 64) + 15;
  v1[148] = swift_task_alloc();
  v6 = sub_1001D0D10();
  v1[149] = v6;
  v7 = *(v6 - 8);
  v1[150] = v7;
  v8 = *(v7 + 64) + 15;
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();

  return _swift_task_switch(sub_100160E38, 0, 0);
}

uint64_t sub_100160E38()
{
  v224 = v0;
  v1 = *(v0 + 1152);
  v2 = sub_1001D0E90();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1001D0E80();
  v5 = sub_1001D0E70();

  *(v0 + 1240) = *(*v1 + 272);

  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();

  v8 = os_log_type_enabled(v6, v7);
  if ((v5 & 1) == 0)
  {
    if (v8)
    {
      v26 = *(v0 + 1152);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v223[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000954E0(*(v26 + *(*v26 + 280)), *(v26 + *(*v26 + 280) + 8), v223);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Request Log: TransparencyReport is not enabled", v27, 0xCu);
      sub_100011CF0(v28);
    }

    else
    {
    }

LABEL_96:
    v184 = *(v0 + 1232);
    v185 = *(v0 + 1224);
    v186 = *(v0 + 1216);
    v187 = *(v0 + 1208);
    v188 = *(v0 + 1184);
    v189 = *(v0 + 1176);

    v190 = *(v0 + 8);

    return v190();
  }

  if (v8)
  {
    v9 = *(v0 + 1152);
    v10 = swift_slowAlloc();
    v223[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1000954E0(*(v9 + *(*v9 + 280)), *(v9 + *(*v9 + 280) + 8), v223);
    *(v10 + 12) = 2080;
    v11 = v9 + *(*v9 + 240);
    v12 = sub_1001D0890();
    v14 = sub_1000954E0(v12, v13, v223);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Request Log: workload type: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(v0 + 1152);

  v16 = sub_1001D0E50();
  v17 = sub_1001D1E00();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 1152);
  if (v18)
  {
    v20 = swift_slowAlloc();
    v223[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_1000954E0(*(v19 + *(*v19 + 280)), *(v19 + *(*v19 + 280) + 8), v223);
    *(v20 + 12) = 2080;
    v21 = v19 + *(*v19 + 240);
    sub_1001D0870();
    v22 = sub_1001D1710();
    v24 = v23;

    v25 = sub_1000954E0(v22, v24, v223);

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Request Log: workload parameters: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v29 = *(v0 + 1152);
  v30 = *(*v29 + 144);
  *(v0 + 1248) = v30;
  v31 = (v29 + v30);
  os_unfair_lock_lock((v29 + v30));
  v32 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  *(v0 + 140) = v32;
  v33 = v31 + v32;
  v34 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  *(v0 + 1256) = v34;
  *(v0 + 1264) = *&v33[*(v34 + 144)];

  os_unfair_lock_unlock(v31);
  v35 = sub_1000D64BC(&_swiftEmptyArrayStorage);
  v36 = *(v29 + *(*v29 + 328));
  *(v0 + 1272) = v36;
  if (v36)
  {
    v37 = *(v0 + 1152);

    *(v0 + 1280) = *(*v37 + 168);
    type metadata accessor for AttestationStore();
    sub_1001B0458(&qword_1002287B8, type metadata accessor for AttestationStore);
    v38 = sub_1001D1A70();
    v40 = v39;
    v41 = sub_100162564;
    v42 = v38;
    v43 = v40;

    return _swift_task_switch(v41, v42, v43);
  }

  v192 = (v0 + 1136);
  v193 = v35;
  v44 = v0 + 784;
  v45 = *(v0 + 1264);
  v46 = *(v0 + 1200);
  v47 = *(v0 + 1152);
  v41 = sub_100009830(0, *(v45 + 16), 0, &_swiftEmptyArrayStorage);
  v48 = 0;
  v222 = v41;
  *(v0 + 1136) = v41;
  v49 = v45 + 64;
  v203 = v45;
  v50 = -1;
  v51 = -1 << *(v45 + 32);
  if (-v51 < 64)
  {
    v50 = ~(-1 << -v51);
  }

  v52 = v50 & *(v45 + 64);
  v196 = v47 + *(*v47 + 280);
  v53 = (63 - v51) >> 6;
  v214 = (v46 + 16);
  v201 = v47;
  v197 = *(*v47 + 248);
  v215 = v46;
  v216 = v0 + 784;
  v198 = v53;
  v200 = v45 + 64;
  while (v52)
  {
LABEL_22:
    v55 = __clz(__rbit64(v52)) | (v48 << 6);
    v56 = (*(v203 + 48) + 16 * v55);
    v57 = *v56;
    v58 = v56[1];
    v59 = (*(v203 + 56) + (v55 << 7));
    v60 = *v59;
    v61 = v59[1];
    v62 = v59[3];
    *(v0 + 48) = v59[2];
    *(v0 + 64) = v62;
    *(v0 + 16) = v60;
    *(v0 + 32) = v61;
    v63 = v59[4];
    v64 = v59[5];
    v65 = v59[6];
    *(v0 + 121) = *(v59 + 105);
    *(v0 + 96) = v64;
    *(v0 + 112) = v65;
    *(v0 + 80) = v63;
    *(v0 + 1120) = 0;
    *(v0 + 1128) = 0xE000000000000000;
    v66 = *(v0 + 56);
    v209 = v57;
    if (v66 >> 60 == 15)
    {
      if (!*(v193 + 16))
      {

        sub_10001208C(v0 + 16, v0 + 656, &qword_100230150, &unk_1001D3700);
LABEL_29:
        v75 = 0;
        v220 = 0xE000000000000000;
        goto LABEL_30;
      }

      v68 = *(v0 + 32);
      v67 = *(v0 + 40);

      sub_10001208C(v0 + 16, v0 + 528, &qword_100230150, &unk_1001D3700);
      v69 = sub_100006028(v68, v67);
      if ((v70 & 1) == 0)
      {
        goto LABEL_29;
      }

      v71 = *(v0 + 1152);
      v72 = (*(v193 + 56) + 16 * v69);
      v73 = *v72;
      v74 = v72[1];
      sub_100012038(*v72, v74);
      v75 = sub_10016B23C(v73, v74);
      v77 = v76;
      sub_100011E48(v73, v74);
    }

    else
    {
      v78 = *(v0 + 1152);
      v79 = *(v0 + 48);

      sub_10001208C(v0 + 16, v0 + 144, &qword_100230150, &unk_1001D3700);
      sub_100089C38(v79, v66);
      v75 = sub_10016B23C(v79, v66);
      v77 = v80;
      sub_10002683C(v79, v66);
    }

    swift_beginAccess();
    *(v0 + 1120) = v75;
    v220 = v77;
    *(v0 + 1128) = v77;
LABEL_30:
    v211 = *(v0 + 16);
    v81 = v211 >> 62;
    v217 = v75;
    v205 = *(v0 + 24);
    if ((v211 >> 62) - 1 < 2 || v81 && v211 & 0xFFFFFFFFFFFFFFFELL ^ 0xC000000000000000 | *(v0 + 24))
    {
      v82 = 0xE900000000000064;
      v212 = 0x65746164696C6156;
    }

    else
    {
      v212 = 0x6164696C61766E55;
      v82 = 0xEB00000000646574;
    }

    v83 = *(v0 + 1240);
    v84 = *(v0 + 1152);
    sub_10001208C(v0 + 16, v0 + 272, &qword_100230150, &unk_1001D3700);

    sub_10001208C(v0 + 16, v0 + 400, &qword_100230150, &unk_1001D3700);

    v85 = sub_1001D0E50();
    v86 = v58;
    v87 = sub_1001D1E00();

    v207 = v87;
    if (os_log_type_enabled(v85, v87))
    {
      v194 = v82;
      v88 = swift_slowAlloc();
      v223[0] = swift_slowAlloc();
      *v88 = 136316418;
      *(v88 + 4) = sub_1000954E0(*v196, *(v196 + 8), v223);
      *(v88 + 12) = 2080;
      v89 = sub_1000954E0(v209, v86, v223);

      *(v88 + 14) = v89;
      *(v88 + 22) = 2080;
      sub_1001ABB9C(v211);
      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
      if (v81 > 1)
      {
        v90 = v220;
        v91 = v212;
        v94 = v0 + 16;
        if (v81 == 2)
        {
          sub_100011F00(v94, &qword_100230150, &unk_1001D3700);
          v93 = 0xE800000000000000;
          v92 = 0x64656873696E6966;
        }

        else
        {
          sub_100011F00(v94, &qword_100230150, &unk_1001D3700);
          v95 = 0x6465696669726576;
          if (v211 ^ 0xC000000000000008 | v205)
          {
            v95 = 0x79654B746E6573;
          }

          v96 = 0xE800000000000000;
          if (v211 ^ 0xC000000000000008 | v205)
          {
            v96 = 0xE700000000000000;
          }

          v97 = 0x6966697265766E75;
          if (v211 ^ 0xC000000000000000 | v205)
          {
            v97 = 0x6E69796669726576;
          }

          v98 = 0xE900000000000067;
          if (!(v211 ^ 0xC000000000000000 | v205))
          {
            v98 = 0xEA00000000006465;
          }

          if (v211 <= 0xC000000000000007)
          {
            v92 = v97;
          }

          else
          {
            v92 = v95;
          }

          if (v211 <= 0xC000000000000007)
          {
            v93 = v98;
          }

          else
          {
            v93 = v96;
          }
        }
      }

      else
      {
        v90 = v220;
        v91 = v212;
        sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
        if (v81)
        {
          v92 = 0x6E69766965636572;
          v93 = 0xE900000000000067;
        }

        else
        {
          sub_10012853C(v211);
          v92 = 0x6465696669726576;
          v93 = 0xEE0064656C696146;
        }
      }

      v99 = sub_1000954E0(v92, v93, v223);

      *(v88 + 24) = v99;
      *(v88 + 32) = 2080;
      *(v88 + 34) = sub_1000954E0(v91, v194, v223);
      *(v88 + 42) = 2080;
      v100 = *(v0 + 32);
      v101 = *(v0 + 40);

      v102 = sub_1000954E0(v100, v101, v223);

      *(v88 + 44) = v102;
      *(v88 + 52) = 2080;

      v103 = sub_1000954E0(v217, v90, v223);

      *(v88 + 54) = v103;
      _os_log_impl(&_mh_execute_header, v85, v207, "%s Request Log: Attestation: %s %s <%s %s: %s>", v88, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);

      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
    }

    v104 = *(v0 + 1232);
    sub_1001D0D00();
    v105 = *(v0 + 32);
    v106 = *(v0 + 40);

    sub_1001D0CD0();
    sub_1001D0CE0();

    sub_1001D0CC0();
    if (*(v201 + v197) == 1)
    {
      v107 = *(v0 + 1232);
      v108 = *(v0 + 136);
      sub_1001D0CB0();
    }

    (*v214)(*(v0 + 1224), *(v0 + 1232), *(v0 + 1192));
    v110 = v222[2];
    v109 = v222[3];
    v44 = v0 + 784;
    if (v110 >= v109 >> 1)
    {
      v222 = sub_100009830(v109 > 1, v110 + 1, 1, v222);
    }

    v52 &= v52 - 1;
    v111 = *(v0 + 1232);
    v112 = *(v0 + 1224);
    v113 = *(v0 + 1192);
    sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
    (*(v215 + 8))(v111, v113);
    v222[2] = v110 + 1;
    (*(v215 + 32))(v222 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v110, v112, v113);

    *(v0 + 1136) = v222;
    v53 = v198;
    v49 = v200;
  }

  while (1)
  {
    v54 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_100;
    }

    if (v54 >= v53)
    {
      break;
    }

    v52 = *(v49 + 8 * v54);
    ++v48;
    if (v52)
    {
      v48 = v54;
      goto LABEL_22;
    }
  }

  v114 = *(v0 + 1264);
  v115 = *(v0 + 1256);
  v116 = *(v0 + 140);
  v117 = *(v0 + 1248);
  v118 = *(v0 + 1152);

  os_unfair_lock_lock((v118 + v117));
  v119 = *(v118 + v117 + v116 + *(v115 + 148));

  os_unfair_lock_unlock((v118 + v117));
  v120 = 0;
  v121 = v119 + 64;
  v122 = -1;
  v204 = v119 + 64;
  v206 = v119;
  v123 = -1 << *(v119 + 32);
  if (-v123 < 64)
  {
    v122 = ~(-1 << -v123);
  }

  v124 = v122 & *(v119 + 64);
  v125 = (63 - v123) >> 6;
  v202 = v125;
  v195 = v0;
  if (v124)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v126 = v120 + 1;
    if (__OFADD__(v120, 1))
    {
      break;
    }

    if (v126 >= v125)
    {
      v166 = *(v0 + 1152);

      v167 = *(v166 + *(*v166 + 344));
      v168 = v166 + *(*v166 + 240);
      *(v0 + 1144) = sub_1001D0870();
      sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
      sub_1000594F0();
      v169 = sub_1001CF800();
      v170 = *(v0 + 1184);
      v171 = *(v0 + 1176);
      v172 = *(v0 + 1160);
      v173 = *(v0 + 1152);
      v174 = v169;
      v176 = v175;

      sub_1001D1800();
      v177 = sub_1001D17F0();
      if (v178)
      {
        v179 = v177;
      }

      else
      {
        v179 = 0;
      }

      if (v178)
      {
        v180 = v178;
      }

      else
      {
        v180 = 0xE000000000000000;
      }

      v181 = swift_task_alloc();
      v181[2] = v173;
      v181[3] = v179;
      v181[4] = v180;
      v181[5] = v192;
      sub_1001D0D90();

      v182 = *(*v173 + 336);
      type metadata accessor for BiomeReporter();
      sub_1001115D0();
      (*(*(v0 + 1168) + 8))(*(v0 + 1176), *(v0 + 1160));
      sub_100011E48(v174, v176);
      v183 = *v192;

      goto LABEL_96;
    }

    v124 = *(v121 + 8 * v126);
    ++v120;
    if (v124)
    {
      v120 = v126;
      do
      {
LABEL_70:
        v218 = *(v0 + 1240);
        v127 = *(v0 + 1152);
        v128 = __clz(__rbit64(v124)) | (v120 << 6);
        v129 = (*(v206 + 48) + 16 * v128);
        v130 = v129[1];
        v210 = *v129;
        v131 = *(v206 + 56) + 72 * v128;
        v133 = *(v131 + 32);
        v132 = *(v131 + 48);
        v134 = *(v131 + 16);
        *(v44 + 64) = *(v131 + 64);
        *(v44 + 32) = v133;
        *(v44 + 48) = v132;
        *(v44 + 16) = v134;
        *v44 = *v131;
        v135 = *(v0 + 808);
        v136 = *(v0 + 816);

        sub_10001208C(v44, v0 + 856, &qword_100230140, &qword_1001D36F0);
        v221 = sub_10016B23C(v135, v136);
        v138 = v137;
        v208 = *(v0 + 800);
        v139 = 0x65746164696C6156;
        if (v208 != 2)
        {
          v139 = 0x6164696C61766E55;
        }

        v213 = v139;
        if (v208 == 2)
        {
          v140 = 0xE900000000000064;
        }

        else
        {
          v140 = 0xEB00000000646574;
        }

        sub_10001208C(v44, v0 + 928, &qword_100230140, &qword_1001D36F0);

        sub_10001208C(v44, v0 + 1000, &qword_100230140, &qword_1001D36F0);

        v141 = v138;
        v142 = sub_1001D0E50();
        v143 = sub_1001D1E00();

        v219 = v140;

        if (os_log_type_enabled(v142, v143))
        {
          v199 = v142;
          v144 = swift_slowAlloc();
          v223[0] = swift_slowAlloc();
          *v144 = 136316418;
          *(v144 + 4) = sub_1000954E0(*v196, *(v196 + 8), v223);
          *(v144 + 12) = 2080;
          v145 = sub_1000954E0(v210, v130, v223);

          *(v144 + 14) = v145;
          *(v144 + 22) = 2080;
          sub_1001ABBAC(v208);
          sub_100011F00(v44, &qword_100230140, &qword_1001D36F0);
          sub_100011F00(v44, &qword_100230140, &qword_1001D36F0);
          if (v208)
          {
            v146 = v221;
            v147 = v213;
            v0 = v195;
            if (v208 == 2)
            {
              v149 = 0xE800000000000000;
              v148 = 0x6465696669726576;
            }

            else if (v208 == 1)
            {
              v148 = 0x6E69796669726576;
              v149 = 0xE900000000000067;
            }

            else
            {
              sub_100127D1C(v208);
              v148 = 0x6465696669726576;
              v149 = 0xEE0064656C696146;
            }
          }

          else
          {
            v148 = 0x6966697265766E75;
            v149 = 0xEA00000000006465;
            v146 = v221;
            v147 = v213;
            v0 = v195;
          }

          v150 = sub_1000954E0(v148, v149, v223);

          *(v144 + 24) = v150;
          *(v144 + 32) = 2080;
          *(v144 + 34) = sub_1000954E0(v147, v219, v223);
          *(v144 + 42) = 2080;
          v151 = *(v0 + 784);
          v152 = *(v0 + 792);

          v153 = sub_1000954E0(v151, v152, v223);

          *(v144 + 44) = v153;
          *(v144 + 52) = 2080;
          *(v144 + 54) = sub_1000954E0(v146, v141, v223);
          _os_log_impl(&_mh_execute_header, v199, v143, "%s Request Log: Proxied Attestation: %s %s <%s %s: %s>", v144, 0x3Eu);
          swift_arrayDestroy();
        }

        else
        {
          sub_100011F00(v44, &qword_100230140, &qword_1001D36F0);

          sub_100011F00(v44, &qword_100230140, &qword_1001D36F0);
          v0 = v195;
        }

        v154 = *(v0 + 1216);
        v155 = *(v0 + 1208);
        v156 = *(v0 + 1192);
        sub_1001D0D00();
        v157 = *(v0 + 784);
        v158 = *(v0 + 792);

        sub_1001D0CD0();
        sub_1001D0CE0();
        sub_1001D0CC0();
        v159 = *(v0 + 824);
        v160 = *(v0 + 832);

        sub_1001D0CF0();
        (*v214)(v155, v154, v156);
        v162 = v222[2];
        v161 = v222[3];
        if (v162 >= v161 >> 1)
        {
          v222 = sub_100009830(v161 > 1, v162 + 1, 1, v222);
        }

        v44 = v216;
        v124 &= v124 - 1;
        v163 = *(v0 + 1216);
        v164 = *(v0 + 1208);
        v165 = *(v0 + 1192);
        sub_100011F00(v216, &qword_100230140, &qword_1001D36F0);
        (*(v215 + 8))(v163, v165);
        v222[2] = v162 + 1;
        v41 = (*(v215 + 32))(v222 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v162, v164, v165);
        *(v0 + 1136) = v222;
        v125 = v202;
        v121 = v204;
      }

      while (v124);
    }
  }

LABEL_100:
  __break(1u);
  return _swift_task_switch(v41, v42, v43);
}