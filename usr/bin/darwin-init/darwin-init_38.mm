uint64_t sub_1002F1A88(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, char a5)
{
  v22[2] = a4;
  v22[3] = a2;
  v8 = sub_1000039E8(&qword_1004AA7D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - v10;
  v12 = type metadata accessor for DownloadTask.DownloadType();
  Description = v12[-1].Description;
  __chkstk_darwin(v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v17 = 3;
  if ((a5 & 1) == 0)
  {
    v17 = 0;
  }

  v22[1] = v17;
  Description[13](v15, 1, v12);
  (*(v9 + 16))(v11, a1, v8);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  (*(v9 + 32))(v19 + v18, v11, v8);
  v20 = v16;

  return (Description[1])(v15, v12);
}

uint64_t sub_1002F1CCC(uint64_t a1)
{
  if (a1)
  {
    v22 = a1;
    swift_errorRetain();
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0);
    type metadata accessor for KnoxServiceClient.ClientError();
    if (swift_dynamicCast())
    {
      if (qword_1004A9F88 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_1000270B4(v2, static KnoxClientWrapper.logger);

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v22 = v6;
        *v5 = 136446210;
        sub_1002F4C5C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        v7 = Error.localizedDescription.getter();
        v9 = sub_1000026C0(v7, v8, &v22);

        *(v5 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v3, v4, "Encountered error when downloading from knox: %{public}s\n", v5, 0xCu);
        sub_100003C3C(v6);
      }

      sub_1002F4C5C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      v10 = swift_allocError();
      *v11 = v21;
      v22 = v10;

      sub_1000039E8(&qword_1004AA7D0);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      if (qword_1004A9F88 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000270B4(v13, static KnoxClientWrapper.logger);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22 = v17;
        *v16 = 136446210;
        swift_errorRetain();
        v18 = String.init<A>(describing:)();
        v20 = sub_1000026C0(v18, v19, &v22);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "Encountered error when downloading from knox: %{public}s\n", v16, 0xCu);
        sub_100003C3C(v17);
      }

      v22 = a1;
      sub_1000039E8(&qword_1004AA7D0);
      return CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    sub_1000039E8(&qword_1004AA7D0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t static KnoxClientWrapper.getDecryptionComponents(for:configuration:authentication:alternateCDNHost:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1002F21A4;

  return sub_1002F38DC(a1, v10, a3, a4, a5);
}

uint64_t sub_1002F21A4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1002F22A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a6;
  v17[1] = a2;
  v9 = sub_1000039E8(&qword_1004AA7D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  (*(v10 + 16))(v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  *(v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a7;

  v16 = dispatch thunk of KnoxServiceClient.decryptionInfo(digest:inSpace:downloadTask:completionHandler:)();
}

uint64_t sub_1002F2438(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v29[0] = a2;
    swift_errorRetain();
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0);
    type metadata accessor for KnoxServiceClient.ClientError();
    if (swift_dynamicCast())
    {
      if (qword_1004A9F88 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000270B4(v5, static KnoxClientWrapper.logger);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v29[0] = v9;
        *v8 = 136446210;
        sub_1002F4C5C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        v10 = Error.localizedDescription.getter();
        v12 = sub_1000026C0(v10, v11, v29);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Encountered error when fetching decryption components from knox: %{public}s\n", v8, 0xCu);
        sub_100003C3C(v9);
      }

      sub_1002F4C5C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      v13 = swift_allocError();
      *v14 = v28;
      v29[0] = v13;

      sub_1000039E8(&qword_1004AA7D0);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      if (qword_1004A9F88 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000270B4(v20, static KnoxClientWrapper.logger);
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v29[0] = v24;
        *v23 = 136446210;
        swift_errorRetain();
        v25 = String.init<A>(describing:)();
        v27 = sub_1000026C0(v25, v26, v29);

        *(v23 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "Encountered error when fetching decryption components from knox: %{public}s\n", v23, 0xCu);
        sub_100003C3C(v24);
      }

      v29[0] = a2;
      sub_1000039E8(&qword_1004AA7D0);
      return CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    swift_beginAccess();
    v18 = *(a4 + 16);
    *(a4 + 16) = a1;
    v19 = a1;

    sub_1000039E8(&qword_1004AA7D0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t static KnoxClientWrapper.getDecryptionKey(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = ImageDecryptionComponents.encryption.getter();
  v3 = ImageDecryptionComponents.Encryption.key.getter();
  v5 = v4;

  v6 = String.hexadecimalASCIIBytes.getter(v3, v5);

  if (v6)
  {
    if (*(v6 + 2))
    {
      sub_1000039E8(&qword_1004A71E0);
      sub_10000E720(&qword_1004AA068, &qword_1004A71E0);
      SymmetricKey.init<A>(data:)();
      v7 = type metadata accessor for SymmetricKey();
      return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
    }
  }

  if (qword_1004A9F88 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000270B4(v9, static KnoxClientWrapper.logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Invalid hex decryption key, could not convert to array of UInt8", v12, 2u);
  }

  v13 = type metadata accessor for SymmetricKey();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 1, 1, v13);
}

unint64_t sub_1002F2A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000039E8(&qword_1004B05E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376BB0;
  *(inited + 32) = 0x656D616E72657355;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 0x64726F7773736150;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = a3;
  *(inited + 88) = a4;

  v9 = sub_1001862DC(inited);
  swift_setDeallocating();
  sub_1000039E8(&qword_1004B05E8);
  swift_arrayDestroy();
  sub_1000039E8(&qword_1004A8AA8);
  sub_1002F4BE0();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v12 = v11;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for WestgateToken();
  sub_1002F4C5C(&qword_1004A7718, type metadata accessor for WestgateToken);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100031928(v10, v12);

  return v9;
}

char *sub_1002F2DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v94 = a6;
  v89 = a5;
  v90 = a3;
  v92 = a2;
  v93 = a4;
  v7 = *(a1 + 8);
  v8 = type metadata accessor for mTLSAuth();
  Description = v8[-1].Description;
  v9 = __chkstk_darwin(v8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v86 - v13;
  __chkstk_darwin(v12);
  v16 = (&v86 - v15);
  v17 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v17 - 8);
  v91 = &v86 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v86 - v25;
  v27 = *a1;
  if (*(a1 + 32) <= 1u)
  {
    if (!*(a1 + 32))
    {
      if (qword_1004A9F88 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000270B4(v28, static KnoxClientWrapper.logger);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "DAW tokens are deprecated. Cannot initialize KnoxServiceClient. Please use mTLS, Westgate, or OIDC.", v31, 2u);
      }

      return 0;
    }

    v46 = *(a1 + 16);
    v47 = *(a1 + 24);
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000270B4(v48, static KnoxClientWrapper.logger);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Westgate token and username present, using Westgate token to authenticate with Knox.", v51, 2u);
    }

    v52 = sub_1002F2A94(v27, v7, v46, v47);
    if (!v52)
    {
      return 0;
    }

    v53 = v52;
    type metadata accessor for KnoxServiceClient();
    v54 = type metadata accessor for KnoxClientDelegate();
    v55 = swift_allocObject();
    v96 = v54;
    v97 = sub_1002F4C5C(&qword_1004B05D8, type metadata accessor for KnoxClientDelegate);
    v95[0] = v55;
    v56 = type metadata accessor for URL();
    v57 = *(v56 - 8);
    v58 = v91;
    (*(v57 + 16))(v91, v92, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v45 = KnoxServiceClient.__allocating_init(westgateToken:delegate:knoxHostURL:trustRootPEMPath:useAsyncHttpClient:)(v53, v95, v58, 0, 0);
LABEL_20:
    v59 = v45;
    if (!v93)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (*(a1 + 32) == 2)
  {
    v32 = v24;

    Date.init()();
    v33 = type metadata accessor for OIDCToken();
    static OIDCToken.DefaultTokenLifetime.getter();
    Date.addingTimeInterval(_:)();
    (*(v20 + 8))(v23, v32);
    v34 = objc_allocWithZone(v33);
    v35 = OIDCToken.init(token:expirationDate:)(v27, v7, v26);
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000270B4(v36, static KnoxClientWrapper.logger);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "OIDC token present, using OIDC to authenticate with Knox.", v39, 2u);
    }

    type metadata accessor for KnoxServiceClient();
    v40 = type metadata accessor for KnoxClientDelegate();
    v41 = swift_allocObject();
    v96 = v40;
    v97 = sub_1002F4C5C(&qword_1004B05D8, type metadata accessor for KnoxClientDelegate);
    v95[0] = v41;
    v42 = type metadata accessor for URL();
    v43 = *(v42 - 8);
    v44 = v91;
    (*(v43 + 16))(v91, v92, v42);
    (*(v43 + 56))(v44, 0, 1, v42);
    v45 = KnoxServiceClient.__allocating_init(authToken:delegate:knoxHostURL:trustRootPEMPath:useAsyncHttpClient:)(v35, v95, v44, 0, 0);
    goto LABEL_20;
  }

  if (qword_1004A9F88 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_1000270B4(v60, static KnoxClientWrapper.logger);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "DAW token not present, using narrative cert to authenticate to knox.", v63, 2u);
  }

  v64 = type metadata accessor for NarrativeCert();
  v65 = objc_allocWithZone(v64);
  v66 = NarrativeCert.init(domain:identityType:)();
  v67 = dispatch thunk of NarrativeCert.getCredential()();

  if (v67)
  {
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      v71 = "Successfully created aquaria-host url credential for knox auth.";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v68, v69, v71, v70, 2u);
      v87 = v66;

      goto LABEL_36;
    }
  }

  else
  {
    v72 = objc_allocWithZone(v64);
    v73 = NarrativeCert.init(domain:identityType:)();

    v66 = v73;
    v67 = dispatch thunk of NarrativeCert.getCredential()();

    v68 = Logger.logObject.getter();
    if (!v67)
    {
      v83 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v68, v83, "Error getting URLCredential for narrative certificate.", v84, 2u);
      }

      return 0;
    }

    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      v71 = "Successfully created acdc-actor url credential for knox auth.";
      goto LABEL_34;
    }
  }

  v87 = v66;
LABEL_36:

  v74.super.isa = v67;
  isa = v74.super.isa;
  mTLSAuth.init(urlCredential:)(v16, v74);
  type metadata accessor for KnoxServiceClient();
  v76 = Description;
  v77 = Description[2];
  v77(v14, v16, v8);
  v77(v11, v16, v8);
  v78 = type metadata accessor for KnoxClientDelegate();
  v79 = swift_allocObject();
  v96 = v78;
  v97 = sub_1002F4C5C(&qword_1004B05D8, type metadata accessor for KnoxClientDelegate);
  v95[0] = v79;
  v80 = type metadata accessor for URL();
  v81 = *(v80 - 8);
  v82 = v91;
  (*(v81 + 16))(v91, v92, v80);
  (*(v81 + 56))(v82, 0, 1, v80);
  v59 = KnoxServiceClient.__allocating_init(knoxMtlsAuth:SAKSmTLSAuth:delegate:knoxHostURL:trustRootPEMPath:useAsyncHttpClient:)(v14, v11, v95, v82, 0, 0);

  (v76[1])(v16, v8);
  if (v93)
  {
LABEL_21:

    dispatch thunk of KnoxServiceClient.alternateCDNHost.setter();
  }

LABEL_22:
  if ((v94 & 1) == 0)
  {
    dispatch thunk of KnoxServiceClient.networkOperationTryCount.setter();
    dispatch thunk of KnoxServiceClient.useExponentialRetryDelay.setter();
  }

  return v59;
}

uint64_t sub_1002F38DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for URL();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_1000039E8(&qword_1004B0510);
  v5[15] = swift_task_alloc();
  v5[16] = sub_1000039E8(&qword_1004B0518);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_1000039E8(&qword_1004A6D30);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_1002F3A80, 0, 0);
}

uint64_t sub_1002F3A80()
{
  v94 = v0;
  v1 = v0[15];
  v2 = URL.absoluteString.getter();
  static KnoxClientWrapper.parseDownloadURL(_:outputFile:)(v2, v3, 0, 0, v1);

  v4 = sub_1000039E8(&qword_1004B0520);
  v5 = (*(*(v4 - 1) + 48))(v1, 1, v4);
  v6 = v0[18];
  if (v5 == 1)
  {
    v7 = v0[16];
    v8 = v0[10];
    v9 = v0[11];
    sub_100013F2C(v0[15], &qword_1004B0510);
    v10 = (v6 + v7[12]);
    v11 = (v6 + v7[16]);
    v12 = (v6 + v7[20]);
    (*(v9 + 56))(v6, 1, 1, v8);
    *v10 = 0;
    v10[1] = 0;
    *v11 = 0;
    v11[1] = 0;
    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    v13 = v0[16];
    v14 = v0[17];
    v15 = v0[15];
    v16 = v0[10];
    v17 = v0[11];
    v18 = (v15 + v4[12]);
    v89 = v18[1];
    v91 = *v18;
    v19 = (v15 + v4[16]);
    v87 = v19[1];
    v88 = *v19;
    v20 = (v15 + v4[20]);
    v21 = *v20;
    v22 = v20[1];
    v23 = (v14 + v13[12]);
    v24 = (v14 + v13[16]);
    v25 = (v14 + v13[20]);
    (*(v17 + 32))(v14);
    (*(v17 + 56))(v14, 0, 1, v16);
    *v23 = v91;
    v23[1] = v89;
    *v24 = v88;
    v24[1] = v87;
    *v25 = v21;
    v25[1] = v22;
    sub_10003E154(v14, v6, &qword_1004B0518);
  }

  v26 = v0[20];
  v27 = v0[18];
  v28 = v0[16];
  v29 = (v27 + *(v28 + 48));
  v31 = *v29;
  v30 = v29[1];
  v0[21] = v30;
  v32 = (v27 + *(v28 + 64));
  v34 = *v32;
  v33 = v32[1];
  v0[22] = v33;

  sub_10003E154(v27, v26, &qword_1004A6D30);
  if (!v33)
  {
    goto LABEL_14;
  }

  v35 = v0[19];
  v36 = v0[10];
  v37 = v0[11];
  sub_100013E54(v0[20], v35, &qword_1004A6D30);
  v38 = (*(v37 + 48))(v35, 1, v36);
  v39 = v0[19];
  if (v38 == 1)
  {

    sub_100013F2C(v39, &qword_1004A6D30);
LABEL_15:
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v46 = v0[11];
    v45 = v0[12];
    v47 = v0[10];
    v48 = v0[5];
    v49 = type metadata accessor for Logger();
    sub_1000270B4(v49, static KnoxClientWrapper.logger);
    (*(v46 + 16))(v45, v48, v47);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[20];
    v54 = v0[11];
    v55 = v0[12];
    v56 = v0[10];
    if (!v52)
    {

      (*(v54 + 8))(v55, v56);
      v63 = v53;
      goto LABEL_21;
    }

    v92 = v0[20];
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v93 = v58;
    *v57 = 136446210;
    v59 = URL.absoluteString.getter();
    v61 = v60;
    (*(v54 + 8))(v55, v56);
    v62 = sub_1000026C0(v59, v61, &v93);

    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v50, v51, "Failed to parse Knox url: %{public}s", v57, 0xCu);
    sub_100003C3C(v58);

LABEL_19:
    v63 = v92;
LABEL_21:
    sub_100013F2C(v63, &qword_1004A6D30);

    v64 = v0[1];

    return v64(0);
  }

  (*(v0[11] + 32))(v0[14], v0[19], v0[10]);
  if (!v30)
  {
    (*(v0[11] + 8))(v0[14], v0[10]);
LABEL_14:

    goto LABEL_15;
  }

  v40 = sub_1002F2DF4(v0[7], v0[14], v0[8], v0[9], v0[6], 0);
  v0[23] = v40;
  if (!v40)
  {

    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v65 = v0[13];
    v66 = v0[10];
    v67 = v0[11];
    v68 = v0[5];
    v69 = type metadata accessor for Logger();
    sub_1000270B4(v69, static KnoxClientWrapper.logger);
    (*(v67 + 16))(v65, v68, v66);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[20];
    v74 = v0[13];
    v75 = v0[14];
    v77 = v0[10];
    v76 = v0[11];
    if (!v72)
    {

      v85 = *(v76 + 8);
      v85(v74, v77);
      v85(v75, v77);
      v63 = v73;
      goto LABEL_21;
    }

    v92 = v0[20];
    v78 = swift_slowAlloc();
    v90 = v75;
    v79 = swift_slowAlloc();
    v93 = v79;
    *v78 = 136315138;
    v80 = URL.absoluteString.getter();
    v82 = v81;
    v83 = *(v76 + 8);
    v83(v74, v77);
    v84 = sub_1000026C0(v80, v82, &v93);

    *(v78 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v70, v71, "Failed to initialize KnoxServiceClient to fetch decryption key for %s", v78, 0xCu);
    sub_100003C3C(v79);

    v83(v90, v77);
    goto LABEL_19;
  }

  v41 = v40;
  v42 = swift_allocObject();
  v0[24] = v42;
  *(v42 + 16) = 0;
  v43 = swift_task_alloc();
  v0[25] = v43;
  v43[2] = v41;
  v43[3] = v34;
  v43[4] = v33;
  v43[5] = v31;
  v43[6] = v30;
  v43[7] = v42;
  v44 = swift_task_alloc();
  v0[26] = v44;
  *v44 = v0;
  v44[1] = sub_1002F42AC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v44, 0, 0, 0xD00000000000004BLL, 0x8000000100443F90, sub_1002F4960, v43, &type metadata for () + 8);
}

uint64_t sub_1002F42AC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1002F46A0;
  }

  else
  {

    v2 = sub_1002F43E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F43E4()
{
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = qword_1004A9F88;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000270B4(v5, static KnoxClientWrapper.logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[23];
    v10 = v0[20];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[11];
    if (v8)
    {
      v21 = v0[20];
      v14 = v2;
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Successfully fetched decryption components for Knox asset";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, v7, v16, v15, 2u);
      v2 = v14;
      v10 = v21;

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1004A9F88 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000270B4(v17, static KnoxClientWrapper.logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v6, v7);
    v9 = v0[23];
    v10 = v0[20];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[11];
    if (v18)
    {
      v21 = v0[20];
      v14 = 0;
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Failed to fetch decryption components for Knox asset";
      goto LABEL_10;
    }
  }

LABEL_12:
  (*(v13 + 8))(v11, v12);
  sub_100013F2C(v10, &qword_1004A6D30);

  v19 = v0[1];

  return v19(v2);
}

uint64_t sub_1002F46A0()
{

  if (qword_1004A9F88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, static KnoxClientWrapper.logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch decryption components for Knox asset", v10, 2u);
  }

  (*(v9 + 8))(v7, v8);
  sub_100013F2C(v6, &qword_1004A6D30);

  v11 = v0[1];

  return v11(0);
}

unint64_t sub_1002F48A0()
{
  result = qword_1004B0528;
  if (!qword_1004B0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0528);
  }

  return result;
}

uint64_t sub_1002F4928()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002F4970()
{
  v1 = sub_1000039E8(&qword_1004AA7D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1002F4A18(void *a1, uint64_t a2)
{
  v5 = *(sub_1000039E8(&qword_1004AA7D0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002F2438(a1, a2, v2 + v6, v7);
}

uint64_t sub_1002F4AD0()
{
  v1 = sub_1000039E8(&qword_1004AA7D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002F4B64(uint64_t a1)
{
  sub_1000039E8(&qword_1004AA7D0);

  return sub_1002F1CCC(a1);
}

unint64_t sub_1002F4BE0()
{
  result = qword_1004A8B10;
  if (!qword_1004A8B10)
  {
    sub_100003A94(&qword_1004A8AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8B10);
  }

  return result;
}

uint64_t sub_1002F4C5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t remote_device_type_t.description.getter()
{
  remote_device_type_get_description();

  return String.init(cString:)();
}

uint64_t sub_1002F4CD0()
{
  remote_device_type_get_description();

  return String.init(cString:)();
}

void sub_1002F4CFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  remote_device_type_t.hash(into:)(v1);
}

void sub_1002F4D70()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  remote_device_type_t.hash(into:)(v1);
}

uint64_t RemoteDeviceTypeError.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(36);

  v2._object = 0x8000000100443FE0;
  v2._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v2);
  return a1;
}

unint64_t sub_1002F4E3C()
{
  result = qword_1004B05F0;
  if (!qword_1004B05F0)
  {
    type metadata accessor for remote_device_type_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B05F0);
  }

  return result;
}

NSNumber JSON.propertyListValue.getter()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  if (v2 <= 2)
  {
    if (!v2)
    {
      return Bool._bridgeToObjectiveC()();
    }

    if (v2 != 1)
    {
      return Double._bridgeToObjectiveC()();
    }

    if ((*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 0x8000000000000000) != 0)
    {
      return Int64._bridgeToObjectiveC()();
    }

    return UInt64._bridgeToObjectiveC()();
  }

  if (v2 > 4)
  {
    result.super.super.isa = 0;
    if (v2 != 5)
    {
      return result;
    }

    sub_1002F58F8(v6);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_11;
  }

  v3 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  if (v2 == 3)
  {

    isa = String._bridgeToObjectiveC()();
LABEL_11:
    v7 = isa;
LABEL_22:

    return v7;
  }

  v8 = *(v3 + 16);
  v9 = *(v8 + 16);

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      v7 = Array._bridgeToObjectiveC()().super.isa;
      goto LABEL_22;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    v11 = v10 + 1;
    result.super.super.isa = JSON.propertyListValue.getter(result.super.super.isa);
    v10 = v11;
    if (result.super.super.isa)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result.super.super.isa = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t JSON.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100003B20(a1, v12);
  v5 = Bool.init(from:)();
  if (v2)
  {

    sub_100003B20(a1, v12);
    v7 = Int128.init(from:)();
    v9 = v8;
    sub_100003C3C(a1);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    result = v10 | 0x2000000000000000;
  }

  else
  {
    v6 = v5;
    sub_100003C3C(a1);
    result = swift_allocObject();
    *(result + 16) = v6 & 1;
  }

  *a2 = result;
  return result;
}

uint64_t JSON.encode(to:)(void *a1)
{
  v2 = *v1 >> 61;
  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return Int128.encode(to:)();
      }

      else
      {
        return Double.encode(to:)();
      }
    }

    else
    {
      return Bool.encode(to:)();
    }
  }

  else
  {
    if (v2 <= 4)
    {
      if (v2 == 3)
      {

        String.encode(to:)();
      }

      sub_1001B54D4();

      Array<A>.encode(to:)();
    }

    if (v2 == 5)
    {
      sub_1001B54D4();

      Dictionary<>.encode(to:)();
    }

    sub_10000E2A8(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    sub_100003BEC(v4, v5);
    dispatch thunk of SingleValueEncodingContainer.encodeNil()();
    return sub_100003C3C(v4);
  }
}

uint64_t JSON.init(argument:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;

  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    v10 = 0xF000000000000007;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1001B5418();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100031914(v6, v8);

    v10 = v11[1];
  }

  *a1 = v10;
  return result;
}

void JSON.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v4 >> 61;
  if ((v4 >> 61) <= 2)
  {
    if (v5)
    {
      v7 = v4 & 0x1FFFFFFFFFFFFFFFLL;
      if (v5 == 1)
      {
        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        Hasher._combine(_:)(2uLL);
        Hasher._combine(_:)(v9);
        v10 = v8;
      }

      else
      {
        v13 = *(v7 + 16);
        Hasher._combine(_:)(3uLL);
        v14 = 0.0;
        if (v13 != 0.0)
        {
          v14 = v13;
        }

        v10 = *&v14;
      }

      Hasher._combine(_:)(v10);
    }

    else
    {
      v12 = *(v4 + 16);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v12);
    }
  }

  else
  {
    if (v5 > 4)
    {
      if (v5 != 5)
      {
        Hasher._combine(_:)(0);
        return;
      }

      v11 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      Hasher._combine(_:)(6uLL);

      sub_1001D4AA0(a1, v11);
    }

    else
    {
      v6 = v4 & 0x1FFFFFFFFFFFFFFFLL;
      if (v5 == 3)
      {
        Hasher._combine(_:)(4uLL);

        String.hash(into:)();
      }

      else
      {
        v15 = *(v6 + 16);
        Hasher._combine(_:)(5uLL);

        sub_1001D2478(a1, v15);
      }
    }
  }
}

Swift::Int JSON.hashValue.getter()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  JSON.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1002F58B0()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  JSON.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1002F58F8(uint64_t a1)
{
  v30 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v8 << 6)));
    v13 = *v11;
    v12 = v11[1];

    v15 = JSON.propertyListValue.getter(v14);
    if (v15)
    {
      v29 = v15;
      v16 = v30;
      v17 = *(v30 + 2);
      if (*(v30 + 3) <= v17)
      {
        sub_100181DD8(v17 + 1, 1);
        v16 = &_swiftEmptyDictionarySingleton;
      }

      v30 = v16;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v18 = v30 + 64;
      v19 = -1 << v30[32];
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*&v30[8 * (v20 >> 6) + 64]) == 0)
      {
        v24 = 0;
        v25 = (63 - v19) >> 6;
        v23 = v29;
        while (++v21 != v25 || (v24 & 1) == 0)
        {
          v26 = v21 == v25;
          if (v21 == v25)
          {
            v21 = 0;
          }

          v24 |= v26;
          v27 = *&v18[8 * v21];
          if (v27 != -1)
          {
            v22 = __clz(__rbit64(~v27)) + (v21 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*&v30[8 * (v20 >> 6) + 64])) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v29;
LABEL_23:
      *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
      v28 = (*(v30 + 6) + 16 * v22);
      *v28 = v13;
      v28[1] = v12;
      *(*(v30 + 7) + 8 * v22) = v23;
      ++*(v30 + 2);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v30;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002F5B70(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v31 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      *&v29[0] = *(*(a1 + 56) + 8 * v11);

      sub_1002F5E84(&v27);
      if (v28)
      {
        break;
      }

      result = sub_1001EDC44(&v27);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    sub_1000279A4(&v27, v30);
    sub_1000279A4(v30, v29);
    v15 = v1[2];
    if (v1[3] <= v15)
    {
      sub_10005CE24(v15 + 1, 1);
      v1 = v31;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v16 = (v1 + 8);
    v17 = -1 << *(v1 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v1[(v18 >> 6) + 8]) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *&v16[8 * v19];
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~v1[(v18 >> 6) + 8])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *&v16[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v25 = (v1[6] + 16 * v20);
    *v25 = v14;
    v25[1] = v13;
    sub_1000279A4(v29, (v1[7] + 32 * v20));
    ++v1[2];
  }

  while (v5);
LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

Class JSON.dictionaryValue.getter()
{
  result = 0;
  if (*v0 >> 61 == 5)
  {

    sub_1002F5B70(v2);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return isa;
  }

  return result;
}

void sub_1002F5E84(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 <= 2)
  {
    if (!v4)
    {
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      type metadata accessor for CFBoolean(0);
      goto LABEL_28;
    }

    if (v4 != 1)
    {
      isa = Double._bridgeToObjectiveC()().super.super.isa;
      type metadata accessor for CFNumber(0);
      goto LABEL_28;
    }

    if ((*((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 0x8000000000000000) != 0)
    {
      v8.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    }

    else
    {
      v8.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    }

    v17 = v8.super.super.isa;
    type metadata accessor for CFNumber(0);
    *a1 = v17;
    *(a1 + 24) = v18;
  }

  else
  {
    if (v4 > 4)
    {
      if (v4 != 5)
      {
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return;
      }

      sub_1002F5B70(v9);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      type metadata accessor for CFDictionary(0);
      goto LABEL_28;
    }

    v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    if (v4 == 3)
    {

      isa = String._bridgeToObjectiveC()();

      type metadata accessor for CFString(0);
LABEL_28:
      *(a1 + 24) = v7;
      *a1 = isa;
      return;
    }

    v10 = *(v5 + 16);
    v11 = *(v10 + 16);

    if (!v11)
    {
LABEL_27:

      isa = Array._bridgeToObjectiveC()().super.isa;

      type metadata accessor for CFArray(0);
      goto LABEL_28;
    }

    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    while (v12 < *(v10 + 16))
    {

      sub_1002F5E84(v21, v14);
      v19 = v21[0];
      v20 = v21[1];

      if (*(&v20 + 1))
      {
        sub_1000279A4(&v19, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_10018D57C(0, *(v13 + 2) + 1, 1, v13);
        }

        v16 = *(v13 + 2);
        v15 = *(v13 + 3);
        if (v16 >= v15 >> 1)
        {
          v13 = sub_10018D57C((v15 > 1), v16 + 1, 1, v13);
        }

        *(v13 + 2) = v16 + 1;
        sub_1000279A4(v21, &v13[32 * v16 + 32]);
      }

      else
      {
        sub_1001EDC44(&v19);
      }

      if (v11 == ++v12)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }
}

void sub_1002F615C(uint64_t a1, Swift::Int a2)
{
  v57 = 2651;
  v58 = 0xE200000000000000;
  v4 = *(a1 + 16);
  v56 = _swiftEmptyArrayStorage;
  sub_10000DFF4(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    if (!__OFADD__(a2, 1))
    {
      v6 = a2;
      v7 = (a1 + 32);
      v51 = a2 + 1;
      v52 = a2;
      v48 = a2;
      v8 = __OFSUB__(a2 + 1, 1);
      v49 = v8;
      while (1)
      {
        v9 = *v7;
        v10._countAndFlagsBits = 8224;
        v10._object = 0xE200000000000000;
        v11 = String.init(repeating:count:)(v10, v6);
        v12 = v9 >> 61;
        v53 = v7 + 1;
        if ((v9 >> 61) <= 2)
        {
          if (!v12)
          {
            if (*(v9 + 16))
            {
              countAndFlagsBits = 1702195828;
            }

            else
            {
              countAndFlagsBits = 0x65736C6166;
            }

            if (*(v9 + 16))
            {
              object = 0xE400000000000000;
            }

            else
            {
              object = 0xE500000000000000;
            }

            goto LABEL_27;
          }

          if (v12 != 1)
          {
            v55._countAndFlagsBits = 0;
            v55._object = 0xE000000000000000;
            Double.write<A>(to:)();
LABEL_24:
            countAndFlagsBits = v55._countAndFlagsBits;
            object = v55._object;
            goto LABEL_27;
          }

          v17 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v55._countAndFlagsBits = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v55._object = v17;
          sub_1002F6DF0();
          countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
          object = v19;
        }

        else
        {
          if (v12 <= 4)
          {
            if (v12 != 3)
            {
              v55._countAndFlagsBits = v9;

              countAndFlagsBits = sub_1002F615C(v31, v51);
              object = v32;

              goto LABEL_27;
            }

            v13 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v14 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v55._countAndFlagsBits = 34;
            v55._object = 0xE100000000000000;

            v15._countAndFlagsBits = v13;
            v15._object = v14;
            String.append(_:)(v15);

            v16._countAndFlagsBits = 34;
            v16._object = 0xE100000000000000;
            String.append(_:)(v16);
            goto LABEL_24;
          }

          if (v12 == 5)
          {
            v50 = &v48;
            v21 = __chkstk_darwin(v11._countAndFlagsBits);
            __chkstk_darwin(v21);
            v55._countAndFlagsBits = 2683;
            v55._object = 0xE200000000000000;

            v54 = sub_1002F6E80(v22, sub_1002F6E4C);
            sub_1000039E8(&qword_1004A6B48);
            sub_10004AF7C();
            v23 = BidirectionalCollection<>.joined(separator:)();
            v25 = v24;

            v26._countAndFlagsBits = v23;
            v26._object = v25;
            String.append(_:)(v26);

            v27._countAndFlagsBits = 10;
            v27._object = 0xE100000000000000;
            String.append(_:)(v27);
            if (v49)
            {
              __break(1u);
              goto LABEL_35;
            }

            v28._countAndFlagsBits = 8224;
            v28._object = 0xE200000000000000;
            v29 = String.init(repeating:count:)(v28, v48);
            String.append(_:)(v29);

            v30._countAndFlagsBits = 125;
            v30._object = 0xE100000000000000;
            String.append(_:)(v30);

            countAndFlagsBits = v55._countAndFlagsBits;
            object = v55._object;
          }

          else
          {
            object = 0xE400000000000000;
            countAndFlagsBits = 1819047278;
          }
        }

LABEL_27:
        v55 = v11;

        v33._countAndFlagsBits = countAndFlagsBits;
        v33._object = object;
        String.append(_:)(v33);

        v35 = v55._object;
        v34 = v55._countAndFlagsBits;
        v56 = v5;
        v37 = v5[2];
        v36 = v5[3];
        if (v37 >= v36 >> 1)
        {
          sub_10000DFF4((v36 > 1), v37 + 1, 1);
          v5 = v56;
        }

        v5[2] = v37 + 1;
        v38 = &v5[2 * v37];
        v38[4] = v34;
        v38[5] = v35;
        --v4;
        v6 = v52;
        v7 = v53;
        if (!v4)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v6 = a2;
LABEL_32:
    v55._countAndFlagsBits = v5;
    v39 = v6;
    sub_1000039E8(&qword_1004A6B48);
    sub_10004AF7C();
    v40 = BidirectionalCollection<>.joined(separator:)();
    v42 = v41;

    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 10;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    if (!__OFSUB__(v39, 1))
    {
      v45._countAndFlagsBits = 8224;
      v45._object = 0xE200000000000000;
      v46 = String.init(repeating:count:)(v45, v39 - 1);
      String.append(_:)(v46);

      v47._countAndFlagsBits = 93;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);
      return;
    }

LABEL_35:
    __break(1u);
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_1002F660C(Swift::Int a1)
{
  v2 = *v1;
  v3 = *v1 >> 61;
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        sub_1002F6DF0();
        return String.init<A>(_:radix:uppercase:)();
      }

      v16 = 0;
      Double.write<A>(to:)();
      return v16;
    }

    if (*(v2 + 16))
    {
      return 1702195828;
    }

    else
    {
      return 0x65736C6166;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = v2 & 0x1FFFFFFFFFFFFFFFLL;
        v5 = *(v4 + 16);
        v6 = *(v4 + 24);
        v16 = 34;

        v7._countAndFlagsBits = v5;
        v7._object = v6;
        String.append(_:)(v7);

        v8._countAndFlagsBits = 34;
        v8._object = 0xE100000000000000;
        String.append(_:)(v8);
        return v16;
      }

      sub_1002F615C(v14, a1);
      goto LABEL_17;
    }

    if (v3 == 5)
    {

      sub_1002F67B4(v11, a1);
LABEL_17:
      v15 = v12;

      return v15;
    }

    return 1819047278;
  }
}

void sub_1002F67B4(uint64_t a1, uint64_t a2)
{
  sub_1002F6E80(a1, sub_1002F713C);
  sub_1000039E8(&qword_1004A6B48);
  sub_10004AF7C();
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v8._countAndFlagsBits = 8224;
    v8._object = 0xE200000000000000;
    v9 = String.init(repeating:count:)(v8, a2 - 1);
    String.append(_:)(v9);

    v10._countAndFlagsBits = 125;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
  }
}

uint64_t sub_1002F68DC(uint64_t a1, void *a2, int a3, Swift::Int count)
{
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  countAndFlagsBits = String.init(repeating:count:)(v7, count)._countAndFlagsBits;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 2112034;
  v10._object = 0xE300000000000000;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 34;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);

  result = count + 1;
  if (__OFADD__(count, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = sub_1002F660C(result);
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    return countAndFlagsBits;
  }

  return result;
}

uint64_t _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (v3 >> 61 == 1)
        {
          v10 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          return v10 & 1;
        }

        goto LABEL_35;
      }

      if (v3 >> 61 == 2 && *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        goto LABEL_34;
      }
    }

    else if (!(v3 >> 61))
    {
      v10 = *(v2 + 16) ^ *(v3 + 16) ^ 1;
      return v10 & 1;
    }

LABEL_35:
    v10 = 0;
    return v10 & 1;
  }

  if (v4 > 4)
  {
    if (v4 == 5)
    {
      if (v3 >> 61 != 5)
      {
        goto LABEL_35;
      }

      v11 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v13 = sub_10024FCD8(v11, v12);
LABEL_31:
      v16 = v13;

      return v16 & 1;
    }

    if (v3 != 0xC000000000000000)
    {
      goto LABEL_35;
    }

LABEL_34:
    v10 = 1;
    return v10 & 1;
  }

  if (v4 != 3)
  {
    if (v3 >> 61 != 4)
    {
      goto LABEL_35;
    }

    v14 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v13 = sub_10024E060(v14, v15);
    goto LABEL_31;
  }

  if (v3 >> 61 != 3)
  {
    goto LABEL_35;
  }

  v5 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = v3 & 0x1FFFFFFFFFFFFFFFLL;
  if (*(v5 + 16) == *(v6 + 16) && *(v5 + 24) == *(v6 + 24))
  {
    goto LABEL_34;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1002F6C10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002F6C48()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1002F6CB4()
{
  result = qword_1004B05F8;
  if (!qword_1004B05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B05F8);
  }

  return result;
}

uint64_t sub_1002F6D08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002F6D64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1002F6DB4(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_1002F6DF0()
{
  result = qword_1004B0600;
  if (!qword_1004B0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0600);
  }

  return result;
}

uint64_t sub_1002F6E80(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v2 = a1;
  v3 = *(a1 + 16);
  v43 = _swiftEmptyArrayStorage;
  sub_10000DFF4(0, v3, 0);
  v4 = v2 + 64;
  v5 = _swiftEmptyArrayStorage;
  v6 = -1;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v2 + 64);
  v9 = (63 - v7) >> 6;
  v37 = v2;
  v35 = v3;
  if (v3)
  {

    v11 = 0;
    v3 = 0;
    while (v8)
    {
LABEL_10:
      v13 = __clz(__rbit64(v8)) | (v3 << 6);
      v14 = *(v2 + 56);
      v15 = (*(v2 + 48) + 16 * v13);
      v16 = v15[1];
      v17 = *(v14 + 8 * v13);
      v40 = *v15;
      v41 = v16;
      v42 = v17;

      v38 = a2(&v40);
      v19 = v18;

      v43 = v5;
      v21 = v5[2];
      v20 = v5[3];
      if (v21 >= v20 >> 1)
      {
        result = sub_10000DFF4((v20 > 1), v21 + 1, 1);
        v5 = v43;
      }

      ++v11;
      v8 &= v8 - 1;
      v5[2] = v21 + 1;
      v22 = &v5[2 * v21];
      v2 = v37;
      v22[4] = v38;
      v22[5] = v19;
      if (v11 == v35)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v12 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_27;
      }

      v8 = *(v4 + 8 * v12);
      ++v3;
      if (v8)
      {
        v3 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

LABEL_15:
    if (!v8)
    {
      goto LABEL_17;
    }

    do
    {
      v39 = v5;
LABEL_21:
      v24 = __clz(__rbit64(v8)) | (v3 << 6);
      v25 = *(v2 + 56);
      v26 = (*(v2 + 48) + 16 * v24);
      v27 = v26[1];
      v28 = *(v25 + 8 * v24);
      v40 = *v26;
      v41 = v27;
      v42 = v28;

      v29 = a2(&v40);
      v31 = v30;

      v5 = v39;
      v43 = v39;
      v33 = v39[2];
      v32 = v39[3];
      if (v33 >= v32 >> 1)
      {
        result = sub_10000DFF4((v32 > 1), v33 + 1, 1);
        v5 = v43;
      }

      v8 &= v8 - 1;
      v5[2] = v33 + 1;
      v34 = &v5[2 * v33];
      v34[4] = v29;
      v34[5] = v31;
      v2 = v37;
    }

    while (v8);
LABEL_17:
    while (1)
    {
      v23 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v23 >= v9)
      {

        return v5;
      }

      v8 = *(v4 + 8 * v23);
      ++v3;
      if (v8)
      {
        v39 = v5;
        v3 = v23;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

DarwinInit::DInitLogConfig::CodingKeys_optional __swiftcall DInitLogConfig.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489210, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_DInitLogConfig_CodingKeys_systemLoggingEnabled;
  }

  else
  {
    v4.value = DarwinInit_DInitLogConfig_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002F71B8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100489210, *a1);

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

uint64_t sub_1002F7218@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100489210, v3);

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

uint64_t sub_1002F728C(uint64_t a1)
{
  v2 = sub_1002F79EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F72C8(uint64_t a1)
{
  v2 = sub_1002F79EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002F731C@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1002F7830(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DInitLogConfig.encode(to:)(void *a1, char a2)
{
  v5 = sub_1000039E8(&qword_1004B0608);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_1002F79EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = a2;
  v10[14] = 0;
  sub_100269610();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void DInitLogConfig.hash(into:)(uint64_t a1, unsigned int a2)
{
  v3 = BYTE1(a2);
  if (a2 != 3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if (v3 != 2)
    {
      goto LABEL_3;
    }

LABEL_5:
    LOBYTE(v4) = 0;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  if (v3 == 2)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v4 = (a2 >> 8) & 1;
LABEL_6:
  Hasher._combine(_:)(v4);
}

Swift::Int DInitLogConfig.hashValue.getter(unsigned int a1)
{
  Hasher.init(_seed:)();
  DInitLogConfig.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1002F762C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DInitLogConfig.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002F767C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DInitLogConfig.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t _s10DarwinInit14DInitLogConfigV2eeoiySbAC_ACtFZ_0(__int16 a1, __int16 a2)
{
  if (a1 == 3)
  {
    if (a2 != 3)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (a2 != 3)
  {
    v2 = 0xE700000000000000;
    v3 = 0x65746176697250;
    if (a1 != 1)
    {
      v3 = 0x76697469736E6553;
      v2 = 0xE900000000000065;
    }

    if (a1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x63696C627550;
    }

    if (a1)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    v6 = 0xE700000000000000;
    v7 = 0x65746176697250;
    if (a2 != 1)
    {
      v7 = 0x76697469736E6553;
      v6 = 0xE900000000000065;
    }

    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x63696C627550;
    }

    if (a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    v10 = HIBYTE(a1);
    v11 = HIBYTE(a2);
    if (v4 == v8 && v5 == v9)
    {

      HIBYTE(a2) = v11;
      HIBYTE(a1) = v10;
      goto LABEL_25;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    HIBYTE(a2) = v11;
    HIBYTE(a1) = v10;
    if (v12)
    {
LABEL_25:
      if (HIBYTE(a1) == 2)
      {
        if (HIBYTE(a2) != 2)
        {
          return 0;
        }
      }

      else if (HIBYTE(a2) == 2 || ((HIBYTE(a2) ^ HIBYTE(a1)) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002F7830(void *a1)
{
  v3 = sub_1000039E8(&qword_1004B0648);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1002F79EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100003C3C(a1);
  }

  v10[14] = 0;
  sub_1002695BC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v7 = v10[15];
  v10[13] = 1;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100003C3C(a1);
  return v7 | (v8 << 8);
}

unint64_t sub_1002F79EC()
{
  result = qword_1004B0610;
  if (!qword_1004B0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0610);
  }

  return result;
}

unint64_t sub_1002F7A44()
{
  result = qword_1004B0618;
  if (!qword_1004B0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0618);
  }

  return result;
}

unint64_t sub_1002F7A9C()
{
  result = qword_1004B0620;
  if (!qword_1004B0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0620);
  }

  return result;
}

unint64_t sub_1002F7AF4()
{
  result = qword_1004B0628;
  if (!qword_1004B0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0628);
  }

  return result;
}

unint64_t sub_1002F7B4C()
{
  result = qword_1004B0630;
  if (!qword_1004B0630)
  {
    sub_100003A94(&qword_1004B0638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0630);
  }

  return result;
}

unint64_t sub_1002F7BB4()
{
  result = qword_1004B0640;
  if (!qword_1004B0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitLogConfig(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for DInitLogConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *RealFileSystem.shared.unsafeMutableAddressor()
{
  if (qword_1004A9F90 != -1)
  {
    swift_once();
  }

  return &static RealFileSystem.shared;
}

uint64_t FileSystem.write(text:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 56))(a3, 1, 1536, 438, 1, a4, a5);
  if (!v5)
  {
    __chkstk_darwin(result);
    return FileDescriptor.closeAfter<A>(_:)();
  }

  return result;
}

FILE *sub_1002F7ECC(uint64_t a1, uint64_t a2, char *__filename)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__mode = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = __mode;
      return fopen(__filename, v4);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return fopen(__filename, v4);
    }
  }

  sub_1000039E8(&qword_1004B0650);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return result;
}

BOOL sub_1002F8080(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 (*a4)(void))
{
  (*(a3 + 8))(v10);
  if (!v4)
  {
    v12[6] = v10[6];
    v12[7] = v10[7];
    v12[8] = v10[8];
    v13 = v11;
    v12[2] = v10[2];
    v12[3] = v10[3];
    v12[4] = v10[4];
    v12[5] = v10[5];
    v12[0] = v10[0];
    v12[1] = v10[1];
    if (sub_1002F90B8(v12) == 1)
    {
      return 0;
    }

    else
    {
      v7 = WORD2(v12[0]);
      v8 = S_IFMT.getter() & v7;
      return v8 == a4();
    }
  }

  return v6;
}

uint64_t FileSystem.touch(_:permissions:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a2;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000270B4(v13, qword_1004B00F8);
  v14 = *(v10 + 16);
  v36 = a1;
  v14(v12, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = a3;
    v37 = v19;
    *v18 = 136315394;
    sub_1002FB0D0(&qword_1004AA058, &type metadata accessor for FilePath);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = a4;
    v22 = v21;
    (*(v10 + 8))(v12, v9);
    v23 = sub_1000026C0(v20, v22, &v37);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = v35;
    v25 = FilePermissions.description.getter();
    v27 = sub_1000026C0(v25, v26, &v37);
    a4 = v34;

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating file at %s with permissions %s", v18, 0x16u);
    swift_arrayDestroy();
    a3 = v32;

    v5 = v33;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v24 = v35;
  }

  result = (*(a4 + 56))(v36, 1, 512, v24, 1, a3, a4);
  if (!v5)
  {
    result = FileDescriptor._close()();
    if ((result & 0x100000000) != 0)
    {
      v38 = result;
      v29 = result;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v30 = v29;
    }
  }

  return result;
}

uint64_t FileSystem.truncate(_:at:permissions:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a4;
  v33 = a3;
  v10 = type metadata accessor for FilePath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000270B4(v14, qword_1004B00F8);
  v15 = *(v11 + 16);
  v30 = a1;
  v15(v13, a1, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = a5;
    v19 = v18;
    v27 = swift_slowAlloc();
    v32 = v27;
    *v19 = 136315394;
    sub_1002FB0D0(&qword_1004AA058, &type metadata accessor for FilePath);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v5;
    v21 = a2;
    v23 = v22;
    (*(v11 + 8))(v13, v10);
    v24 = sub_1000026C0(v20, v23, &v32);
    a2 = v21;
    v6 = v28;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    *(v19 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v16, v17, "Truncating file at %s at offset %llu", v19, 0x16u);
    sub_100003C3C(v27);

    a5 = v29;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  result = (*(a5 + 56))(v30, 1, 512, v33, 1, v31, a5);
  if (!v6)
  {
    *(&v26 - 4) = __chkstk_darwin(result);
    *(&v26 - 1) = a2;
    return FileDescriptor.closeAfter<A>(_:)();
  }

  return result;
}

uint64_t sub_1002F8804(uint64_t result, off_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    while (1)
    {
      result = ftruncate(v3, a2);
      if (result != -1)
      {
        break;
      }

      v4 = errno.getter();
      if (v4 != 4)
      {
        v5 = v4;
        sub_100187D3C();
        swift_willThrowTypedImpl();
        result = swift_allocError();
        *v6 = v5;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1002F8924(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      result = FileDescriptor._write(_:retryOnInterrupt:)();
      if ((v4 & 1) == 0)
      {
        return result;
      }

LABEL_17:
      v10 = result;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v11 = v10;
      return result;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v5, a1))
      {
        goto LABEL_20;
      }
    }

    if (!__OFSUB__(v6, v5))
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_11:
    v7 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_14:
        __DataStorage._length.getter();
        result = FileDescriptor._write(_:retryOnInterrupt:)();
        if (v8)
        {
          goto LABEL_17;
        }

        return result;
      }

LABEL_21:
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = FileDescriptor._write(_:retryOnInterrupt:)();
  if (v9)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t FileSystem.append(text:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 56))(a3, 1, 16777736, 438, 1, a4, a5);
  if (!v5)
  {
    __chkstk_darwin(result);
    return FileDescriptor.closeAfter<A>(_:)();
  }

  return result;
}

uint64_t FileSystem.readData(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 56))(a1, 0, 0x1000000, 438, 1, a2, a3);
  if (!v3)
  {
    __chkstk_darwin(result);
    FileDescriptor.closeAfter<A>(_:)();
    return v5;
  }

  return result;
}

uint64_t sub_1002F8CF0@<X0>(int a1@<W0>, void *a2@<X8>)
{
  memset(&v11, 0, sizeof(v11));
  while (fstat(a1, &v11) == -1)
  {
    v5 = errno.getter();
    if (v5 != 4)
    {
      LODWORD(v12) = v5;
      v6 = v5;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v8 = v6;
      return result;
    }
  }

  v12 = sub_10018E100(v11.st_size);
  v13 = v9;
  sub_1002FA1AC(&v12);
  result = v12;
  v10 = v13;
  if (v2)
  {
    return sub_100031928(v12, v13);
  }

  *a2 = v12;
  a2[1] = v10;
  return result;
}

uint64_t FileSystem.readJson<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v9 = FileSystem.readData(from:)(a2, a3, a5);
  if (!v5)
  {
    v12 = v9;
    v13 = v10;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100031928(v12, v13);
  }
}

uint64_t FileSystem.readText(from:encoding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = FileSystem.readData(from:)(a1, a3, a4);
  if (!v4)
  {
    v15 = v13;
    v16 = v14;
    (*(v10 + 16))(v12, a2, v9);
    v17 = String.init(data:encoding:)();
    if (v18)
    {
      a2 = v17;
    }

    else
    {
      sub_100187D3C();
      a2 = swift_allocError();
      *v20 = 22;
      swift_willThrow();
    }

    sub_100031928(v15, v16);
  }

  return a2;
}

uint64_t sub_1002F908C()
{
  type metadata accessor for RealFileSystem();
  result = swift_initStaticObject();
  static RealFileSystem.shared = result;
  return result;
}

uint64_t sub_1002F90B8(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t static RealFileSystem.shared.getter()
{
  type metadata accessor for RealFileSystem();

  return swift_initStaticObject();
}

void sub_1002F9104(uint64_t a1@<X8>)
{
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v17 = &v8;
  FilePath.withCString<A>(_:)();
  if (!v1)
  {
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v18 = v8;
    v19 = v9;
    sub_1002FAB14(&v18);
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v28 = v18;
    v29 = v19;
    goto LABEL_6;
  }

  *&v18 = v1;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if ((swift_dynamicCast() & 1) != 0 && v7 == 2)
  {

    sub_1002FAAF0(&v28);
LABEL_6:
    v3 = v35;
    *(a1 + 96) = v34;
    *(a1 + 112) = v3;
    *(a1 + 128) = v36;
    *(a1 + 144) = v37;
    v4 = v31;
    *(a1 + 32) = v30;
    *(a1 + 48) = v4;
    v5 = v33;
    *(a1 + 64) = v32;
    *(a1 + 80) = v5;
    v6 = v29;
    *a1 = v28;
    *(a1 + 16) = v6;
  }
}

uint64_t sub_1002F92AC(char *a1, stat *a2)
{
  while (1)
  {
    result = stat(a1, a2);
    if (result != -1)
    {
      break;
    }

    v5 = errno.getter();
    if (v5 != 4)
    {
      v6 = v5;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v7 = v6;
      return result;
    }
  }

  return result;
}

uint64_t sub_1002F9410(uint64_t a1, __int16 a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, qword_1004B00F8);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = v10;
    v12 = v11;
    v28 = swift_slowAlloc();
    v29 = v28;
    *v12 = 136315394;
    sub_1002FB0D0(&qword_1004AA058, &type metadata accessor for FilePath);
    v26 = v9;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1000026C0(v13, v15, &v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = FilePermissions.description.getter();
    v19 = sub_1000026C0(v17, v18, &v29);

    *(v12 + 14) = v19;
    v20 = v26;
    _os_log_impl(&_mh_execute_header, v26, v27, "Creating directory at %s with permissions %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v21 = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    __chkstk_darwin(v21);
    *(&v25 - 8) = a2;
    result = FilePath.withCString<A>(_:)();
    if (v29 != -1)
    {
      break;
    }

    v21 = errno.getter();
    if (v21 != 4)
    {
      LODWORD(v29) = v21;
      v23 = v21;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v24 = v23;
      return result;
    }
  }

  return result;
}

uint64_t sub_1002F97C0(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v6 = v5;
  v36 = a2;
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000270B4(v15, qword_1004B00F8);
  (*(v12 + 16))(v14, a1, v11);
  v16 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v34))
  {
    v17 = swift_slowAlloc();
    v33 = a1;
    v18 = v17;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v18 = 136315394;
    sub_1002FB0D0(&qword_1004AA058, &type metadata accessor for FilePath);
    v30 = v16;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = a3;
    v21 = v20;
    (*(v12 + 8))(v14, v11);
    v22 = sub_1000026C0(v19, v21, &v35);
    v6 = v5;
    a3 = v32;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = v36;
    v24 = FileDescriptor.AccessMode.description.getter();
    v26 = sub_1000026C0(v24, v25, &v35);

    *(v18 + 14) = v26;
    v27 = v30;
    _os_log_impl(&_mh_execute_header, v30, v34, "Opening FileDescriptor at %s, mode: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v28 = (*(v12 + 8))(v14, v11);
    v23 = v36;
  }

  __chkstk_darwin(v28);
  LODWORD((&v30)[-2]) = v23;
  HIDWORD((&v30)[-2]) = a3;
  LOWORD((&v30)[-1]) = a4;
  BYTE2((&v30)[-1]) = BYTE2(a4) & 1;
  BYTE3((&v30)[-1]) = a5 & 1;
  result = FilePath.withCString<A>(_:)();
  if (!v6)
  {
    return v37;
  }

  return result;
}

uint64_t sub_1002F9B34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v33 = a2;
  v5 = type metadata accessor for POSIXError();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000270B4(v11, qword_1004B00F8);
  v12 = *(v8 + 16);
  v34 = a1;
  v12(v10, a1, v7);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v14;
    v16 = v15;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v16 = 136315394;
    sub_1002FB0D0(&qword_1004AA058, &type metadata accessor for FilePath);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v5;
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_1000026C0(v17, v20, &v35);
    v5 = v18;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = v33;
    *(v16 + 14) = sub_1000026C0(v33, a3, &v35);
    _os_log_impl(&_mh_execute_header, v13, v29, "Opening FILE at %s, mode: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = (*(v8 + 8))(v10, v7);
    v22 = v33;
  }

  __chkstk_darwin(v23);
  *&v28[-16] = v22;
  *&v28[-8] = a3;
  sub_1000039E8(&qword_1004B0650);
  FilePath.withCString<A>(_:)();
  result = v35;
  if (!v35)
  {
    errno.getter();
    v25 = POSIXErrorCode.init(rawValue:)();
    if ((v25 & &_mh_execute_header) != 0)
    {
      v26 = 5;
    }

    else
    {
      v26 = v25;
    }

    LODWORD(v35) = v26;
    sub_1002FAB80(_swiftEmptyArrayStorage);
    sub_1002FB0D0(&qword_1004B0658, &type metadata accessor for POSIXError);
    v27 = v31;
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v32 + 8))(v27, v5);
    return swift_willThrow();
  }

  return result;
}

double sub_1002F9FA4@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 80))(v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v10;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t sub_1002FA1AC(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {

      sub_100031928(v4, v3);
      *a1 = xmmword_1003780A0;
      sub_100031928(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      result = sub_1002FA59C(*(v4 + 16), *(v4 + 24));
      *a1 = v4;
      a1[1] = v3 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
    }

    else
    {
      result = FileDescriptor._read(into:retryOnInterrupt:)();
      if (!v1 && (v12 & 1) != 0)
      {
        v13 = result;
        sub_100187D3C();
        swift_willThrowTypedImpl();
        result = swift_allocError();
        *v14 = v13;
      }
    }

    return result;
  }

  if (v5)
  {
    v10 = v3 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100031928(v4, v3);
    *a1 = xmmword_1003780A0;
    sub_100031928(0, 0xC000000000000000);
    v11 = v4 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v11 < v4)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
LABEL_25:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v15 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v10 = v15;
    }

    if (v11 >= v4)
    {

      v16 = sub_1002FA59C(v4, v4 >> 32);

      *a1 = v4;
      a1[1] = v10 | 0x4000000000000000;
      if (!v1)
      {
        return v16;
      }

      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_100031928(v4, v3);
  LOWORD(v17) = v3;
  BYTE2(v17) = BYTE2(v3);
  HIBYTE(v17) = BYTE3(v3);
  LOBYTE(v18) = BYTE4(v3);
  HIBYTE(v18) = BYTE5(v3);
  result = FileDescriptor._read(into:retryOnInterrupt:)();
  if (v1)
  {
LABEL_6:
    *a1 = v4;
    a1[1] = v17 | ((v18 | (BYTE6(v3) << 16)) << 32);
    return result;
  }

  if (v7)
  {
    v8 = result;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v9 = v8;
    goto LABEL_6;
  }

  *a1 = v4;
  a1[1] = v17 | ((v18 | (BYTE6(v3) << 16)) << 32);
  return result;
}

uint64_t sub_1002FA59C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_10;
  }

  result = __DataStorage._offset.getter();
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = FileDescriptor._read(into:retryOnInterrupt:)();
  if (!v2 && (v6 & 1) != 0)
  {
    v7 = result;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    swift_allocError();
    result = v7;
    *v8 = v7;
  }

  return result;
}

uint64_t sub_1002FA684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v25 = a5;
  v27 = a1;
  v28 = a4;
  v23 = a2;
  v24 = a3;
  v26 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v9);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000039E8(&qword_1004A84E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100376F00;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  v32[0] = v10;
  sub_1002FB0D0(&qword_1004A84E8, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_1000039E8(&qword_1004A84F0);
  sub_1001EF720();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  if (qword_1004A9E60 != -1)
  {
    swift_once();
  }

  v11 = v26;
  v12 = sub_1000270B4(v26, static CredentialString.redactionOverrideKey);
  (*(v6 + 16))(v8, v12, v11);
  v32[3] = &type metadata for Bool;
  LOBYTE(v32[0]) = 1;
  v13 = dispatch thunk of JSONEncoder.userInfo.modify();
  sub_1001C9DC8(v32, v8);
  v13(v31, 0);
  v14 = v30;
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v14)
  {
  }

  v17 = v15;
  v18 = v16;
  v19 = (*(v25 + 56))(v23, 1, 1536, 438, 1, v24);
  v20 = __chkstk_darwin(v19);
  *(&v22 - 4) = v17;
  *(&v22 - 3) = v18;
  *(&v22 - 4) = v20;
  FileDescriptor.closeAfter<A>(_:)();

  return sub_100031928(v17, v18);
}

double sub_1002FAAF0(uint64_t a1)
{
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
  *(a1 + 144) = 1;
  return result;
}

uint64_t sub_1002FAB1C@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  result = mkdir(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

FILE *sub_1002FAB50@<X0>(char *__filename@<X0>, FILE **a2@<X8>)
{
  result = sub_1002F7ECC(*(v2 + 16), *(v2 + 24), __filename);
  *a2 = result;
  return result;
}

unint64_t sub_1002FAB80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004A7CD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1002FB028(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100013364(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000279A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1002FB028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A7A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

FILE *sub_1002FB098@<X0>(char *__mode@<X0>, FILE **a2@<X8>)
{
  result = fopen(*(v2 + 16), __mode);
  *a2 = result;
  return result;
}

uint64_t sub_1002FB0D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TemporaryDirectory.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FilePath();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static TemporaryDirectory.defaultTempDir.getter()
{
  v0 = swift_slowAlloc();
  if (confstr(65537, v0, 0x400uLL))
  {
    FilePath.init(platformString:)();
  }

  else
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000270B4(v1, qword_1004B00F8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = errno.getter();
      sub_100187D3C();
      swift_allocError();
      *v7 = v6;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v8;
      *v5 = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "confstr error: %@", v4, 0xCu);
      sub_100013F2C(v5, &qword_1004AA050);
    }

    FilePath.init(stringLiteral:)();
  }
}

uint64_t static TemporaryDirectory.mkdtemp(at:prefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a2;
  v70 = a3;
  v62 = a4;
  v5 = type metadata accessor for UUID();
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v66 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilePath();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = __chkstk_darwin(v7);
  v61 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v54 - v10;
  v12 = sub_1000039E8(&qword_1004B0748);
  __chkstk_darwin(v12 - 8);
  v14 = v54 - v13;
  v15 = type metadata accessor for FilePath.Component();
  v63 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v54 - v19;
  v21 = type metadata accessor for String.Encoding();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 0x10000000000000;
  v72 = 16842752;
  v25 = v75;
  result = FilePath.withCString<A>(_:)();
  if (v25)
  {
    return result;
  }

  v55 = v20;
  v56 = v18;
  v57 = v14;
  v58 = v15;
  v59 = a1;
  v60 = 0;
  v75 = v11;
  v27 = v68;
  v28 = v69;
  v29 = v73;
  v30 = v70;
  v73 = v69;
  v74 = v70;

  v31._countAndFlagsBits = 0x5858585858582ELL;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  static String.Encoding.utf8.getter();
  sub_10000B080();
  v32 = StringProtocol.cString(using:)();
  (*(v22 + 8))(v24, v21);

  if (!v32)
  {
    sub_100187D3C();
    swift_allocError();
    *v50 = 22;
    swift_willThrow();
    result = FileDescriptor._close()();
    if ((result & 0x100000000) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  v33 = v28;
  v34 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_10018D68C(0, *(v32 + 16), 0, v32);
  }

  v35 = mkdtempat_np(v29, (v32 + 32));
  v36 = v29;
  v37 = v66;
  v38 = v67;
  v39 = v75;
  if (!v35)
  {

    v51 = errno.getter();
    sub_100187D3C();
    swift_allocError();
    *v52 = v51;
    swift_willThrow();
    result = FileDescriptor._close()();
    if ((result & 0x100000000) == 0)
    {
      return result;
    }

LABEL_10:
    LODWORD(v73) = result;
    return swift_willThrowTypedImpl();
  }

  v40 = v27;
  v54[3] = v36;
  v41 = v32;
  v42 = v57;
  sub_1002FBAA0(v41, v57);
  v43 = v63;
  v44 = v58;
  if ((*(v63 + 48))(v42, 1, v58) == 1)
  {
    sub_100013F2C(v42, &qword_1004B0748);
    v45 = v64;
    (*(v64 + 16))(v39, v59, v65);
    v73 = v33;
    v74 = v34;

    v46._countAndFlagsBits = 46;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    UUID.init()();
    sub_1002A3494(&qword_1004AA848, &type metadata accessor for UUID);
    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v47);

    (*(v38 + 8))(v37, v40);
    v48 = v61;
    FilePath.appending(_:)();
    v49 = v60;
    FilePath.createDirectory(permissions:intermediateDirectories:)(0x1FFu, 0);
    if (v49)
    {
      (*(v45 + 8))(v48, v65);
    }

    else
    {
      (*(v45 + 32))(v62, v48, v65);
    }

    result = FileDescriptor._close()();
    if ((result & 0x100000000) != 0)
    {
      LODWORD(v73) = result;
      sub_100187D3C();
      return swift_willThrowTypedImpl();
    }
  }

  else
  {
    v53 = v55;
    (*(v43 + 32))(v55, v42, v44);
    (*(v64 + 16))(v39, v59, v65);
    (*(v43 + 16))(v56, v53, v44);
    FilePath.appending(_:)();
    (*(v43 + 8))(v53, v44);
    result = FileDescriptor._close()();
    if ((result & 0x100000000) != 0)
    {
      LODWORD(v73) = result;
      sub_100187D3C();
      return swift_willThrowTypedImpl();
    }
  }

  return result;
}

uint64_t sub_1002FBAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004B0748);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    while (*v8++)
    {
      if (!--v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  FilePath.Component.init(platformString:)();

  v10 = type metadata accessor for FilePath.Component();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_100013F2C(v6, &qword_1004B0748);
    v12 = 1;
  }

  else
  {
    (*(v11 + 32))(a2, v6, v10);
    v12 = 0;
  }

  return (*(v11 + 56))(a2, v12, 1, v10);
}

uint64_t TemporaryDirectory.init(at:prefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + *(type metadata accessor for TemporaryDirectory() + 20)) = 0;
  static TemporaryDirectory.mkdtemp(at:prefix:)(a1, a2, a3, v12);
  (*(v10 + 8))(a1, v9);
  if (v4)
  {
  }

  return (*(v10 + 32))(a4, v12, v9);
}

Swift::Void __swiftcall TemporaryDirectory.cleanup()()
{
  v1 = *(type metadata accessor for TemporaryDirectory() + 20);
  if ((*(v0 + v1) & 1) == 0)
  {
    sub_1002FBDF4();
    *(v0 + v1) = 1;
  }
}

void sub_1002FBDF4()
{
  v43 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v43 - 8);
  __chkstk_darwin(v43);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath);
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v44 = v15;
  (*(v5 + 16))(v7, v0, v4);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v43);
  v16 = v7;
  v17 = v12;
  sub_1001746A8(v16, v3, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100013F2C(v10, &qword_1004A6D30);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v18 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v45 = 0;
    v22 = [v18 removeItemAtURL:v20 error:&v45];

    if (v22)
    {
      v23 = qword_1004A9F20;
      v24 = v45;
      v25 = v44;
      if (v23 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000270B4(v26, qword_1004B00F8);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v45 = v30;
        *v29 = 136315138;
        v31 = sub_1000026C0(v42, v25, &v45);

        *(v29 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "cleaned up temporary directory at: %s", v29, 0xCu);
        sub_100003C3C(v30);
      }

      else
      {
      }

      (*(v17 + 8))(v14, v11);
    }

    else
    {
      v32 = v45;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v17 + 8))(v14, v11);
      v33 = v44;
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000270B4(v34, qword_1004B00F8);

      swift_errorRetain();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v37 = 136315394;
        v40 = sub_1000026C0(v42, v33, &v45);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2112;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v41;
        *v38 = v41;
        _os_log_impl(&_mh_execute_header, v35, v36, "failed to cleanup temporary directory at %s: %@", v37, 0x16u);
        sub_100013F2C(v38, &qword_1004AA050);

        sub_100003C3C(v39);
      }

      else
      {
      }
    }
  }
}

uint64_t TemporaryDirectory.deinit()
{
  if ((*(v0 + *(type metadata accessor for TemporaryDirectory() + 20)) & 1) == 0)
  {
    sub_1002FBDF4();
  }

  v1 = type metadata accessor for FilePath();
  v2 = *(*(v1 - 8) + 8);

  return v2(v0, v1);
}

uint64_t type metadata accessor for TemporaryDirectory()
{
  result = qword_1004B07A8;
  if (!qword_1004B07A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002FC5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FilePath();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FC650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FilePath();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FC6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1002FC7C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FilePath();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1002FC878()
{
  result = type metadata accessor for FilePath();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static LDAP.query(from:recordDN:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1002FC934, 0, 0);
}

uint64_t sub_1002FC934()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = sub_1000039E8(&qword_1004B07E0);
  *v4 = v0;
  v4[1] = sub_1002FCA54;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000020, 0x800000010043DE50, sub_10019AC68, v2, v5);
}

uint64_t sub_1002FCA54()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1002FCB8C;
  }

  else
  {

    v2 = sub_1002FCB70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002FCB8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002FCBF0()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static LDAP.logger);
  v1 = sub_1000270B4(v0, static LDAP.logger);
  if (qword_1004A9F60 != -1)
  {
    swift_once();
  }

  v2 = sub_1000270B4(v0, static Logger.ldap);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LDAP.logger.unsafeMutableAddressor()
{
  if (qword_1004A9F98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static LDAP.logger);
}

uint64_t static LDAP.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9F98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static LDAP.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1002FCDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v23 = a6;
  v8 = sub_1000039E8(&qword_1004B07E8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = ldap_connection_create_with_hostname();

  if (v14)
  {
    (*(v9 + 16))(v12, a1, v8);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v15, v12, v8);
    *(v18 + v16) = v14;
    v19 = (v18 + v17);
    v20 = v23;
    *v19 = v22;
    v19[1] = a5;
    *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;
    aBlock[4] = sub_1002FD980;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002FDC34;
    aBlock[3] = &unk_100493D70;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    ldap_connection_start();
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002FD020(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000039E8(&qword_1004B07E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  if (a3)
  {
    if (qword_1004A9F98 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000270B4(v12, static LDAP.logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to start LDAP connection: %d", v15, 8u);
    }

    sub_1002FDA74();
    v16 = swift_allocError();
    *v17 = a3;
    *(v17 + 4) = 0;
    aBlock[0] = v16;
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v18 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(v9 + 16))(v11, a4, v8);
    v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    (*(v9 + 32))(v21 + v20, v11, v8);
    aBlock[4] = sub_1002FDB98;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002FDC34;
    aBlock[3] = &unk_100493DC0;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    ldap_connection_retrieve_record();
    _Block_release(v22);
    swift_unknownObjectRelease();
  }
}

void sub_1002FD334(uint64_t a1, void *a2, int a3)
{
  ldap_connection_disconnect();
  if (a3)
  {
    if (qword_1004A9F98 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000270B4(v5, static LDAP.logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve record from LDAP connection: %d", v8, 8u);
    }

    sub_1002FDA74();
    swift_allocError();
    *v9 = a3;
    *(v9 + 4) = 0;
LABEL_7:
    sub_1000039E8(&qword_1004B07E8);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (qword_1004A9F98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000270B4(v10, static LDAP.logger);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = a2;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Retrieved records:\n%@", v14, 0xCu);
    sub_10019AC78(v15);
  }

  if (!a2)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Result record is nil", v19, 2u);
    }

    sub_1002FDA74();
    swift_allocError();
    *v20 = 0;
    *(v20 + 4) = 1;
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v11;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    v21 = v11;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Result record isn't a dictionary", v24, 2u);
  }

  sub_1002FDA74();
  swift_allocError();
  *v25 = 0;
  *(v25 + 4) = 1;
  sub_1000039E8(&qword_1004B07E8);
  CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1002FD778(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a3;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for LDAPError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LDAPError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1002FD860(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002FD87C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1002FD8AC()
{
  v1 = sub_1000039E8(&qword_1004B07E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1002FD980(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(sub_1000039E8(&qword_1004B07E8) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1002FD020(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1002FDA5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1002FDA74()
{
  result = qword_1004B0850;
  if (!qword_1004B0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0850);
  }

  return result;
}

uint64_t sub_1002FDAC8()
{
  v1 = sub_1000039E8(&qword_1004B07E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002FDB98(uint64_t a1, void *a2, int a3)
{
  sub_1000039E8(&qword_1004B07E8);

  sub_1002FD334(a1, a2, a3);
}

void FilePath.readArchiveMagic()()
{
  v2 = v0;
  v65 = type metadata accessor for FilePath();
  v3 = *(v65 - 8);
  v4 = __chkstk_darwin(v65);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v60 - v8;
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  FilePath.description.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() fileHandleForReadingAtPath:v12];

  if (v13)
  {
    v14 = NSFileHandle.read(upToCount:)();
    if (v1)
    {
LABEL_5:

      return;
    }

    v16 = v15;
    if (v15 >> 60 == 15)
    {
      sub_100187D3C();
      swift_allocError();
      *v17 = 5;
      swift_willThrow();
      goto LABEL_5;
    }

    v19 = v14;
    v20 = sub_10030537C(&off_100484C10, v14, v15);
    v64 = v19;
    if (v20)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000270B4(v21, qword_1004B00F8);
      v22 = v3;
      v23 = *(v3 + 16);
      v24 = v65;
      v23(v11, v2, v65);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v62 = v27;
        v63 = swift_slowAlloc();
        v66 = v63;
        *v27 = 136315138;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v22;
        v31 = v30;
        (*(v29 + 8))(v11, v24);
        v32 = sub_1000026C0(v28, v31, &v66);

        v33 = v62;
        *(v62 + 1) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "Apple Encrypted Archive detected at %s", v33, 0xCu);
        sub_100003C3C(v63);

        sub_100031914(v64, v16);
      }

      else
      {
        sub_100031914(v64, v16);

        (*(v22 + 8))(v11, v24);
      }
    }

    else if (sub_10030537C(&off_100484C38, v19, v16))
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000270B4(v34, qword_1004B00F8);
      v35 = v3;
      v36 = *(v3 + 16);
      v37 = v65;
      v36(v9, v2, v65);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v62 = v40;
        v63 = swift_slowAlloc();
        v66 = v63;
        *v40 = 136315138;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
        v61 = v38;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        (*(v35 + 8))(v9, v37);
        v44 = sub_1000026C0(v41, v43, &v66);

        v46 = v61;
        v45 = v62;
        *(v62 + 1) = v44;
        _os_log_impl(&_mh_execute_header, v46, v39, "Uncompressed Apple Archive detected at %s", v45, 0xCu);
        sub_100003C3C(v63);

        sub_100031914(v64, v16);
      }

      else
      {
        sub_100031914(v64, v16);

        (*(v35 + 8))(v9, v37);
      }
    }

    else
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_1000270B4(v47, qword_1004B00F8);
      v48 = v3;
      v49 = *(v3 + 16);
      v50 = v65;
      v49(v6, v2, v65);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v62 = v53;
        v63 = swift_slowAlloc();
        v66 = v63;
        *v53 = 136315138;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
        v61 = v51;
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        (*(v48 + 8))(v6, v50);
        v57 = sub_1000026C0(v54, v56, &v66);

        v59 = v61;
        v58 = v62;
        *(v62 + 1) = v57;
        _os_log_impl(&_mh_execute_header, v59, v52, "No known archive magic in file at %s", v58, 0xCu);
        sub_100003C3C(v63);

        sub_100031914(v64, v16);
      }

      else
      {
        sub_100031914(v64, v16);

        (*(v48 + 8))(v6, v50);
      }
    }
  }

  else
  {
    sub_100187D3C();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
  }
}

uint64_t FilePath.wrapFileContentsInAppleEncryptedArchive(at:using:permissions:compression:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v114 = a2;
  LODWORD(v112) = a4;
  LODWORD(v104) = a3;
  v5 = type metadata accessor for ArchiveFlags();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin(v5);
  v101 = &v92[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ArchiveCompression();
  __chkstk_darwin(v7 - 8);
  v111 = &v92[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ArchiveEncryptionContext.Profile();
  __chkstk_darwin(v9 - 8);
  v110 = &v92[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v99 = &v92[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v97 = &v92[-v16];
  v17 = __chkstk_darwin(v15);
  v100 = &v92[-v18];
  v19 = __chkstk_darwin(v17);
  v98 = &v92[-v20];
  v21 = __chkstk_darwin(v19);
  v23 = &v92[-v22];
  v24 = __chkstk_darwin(v21);
  v26 = &v92[-v25];
  __chkstk_darwin(v24);
  v28 = &v92[-v27];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_1000270B4(v29, qword_1004B00F8);
  v31 = *(v12 + 16);
  v31(v28, v115, v11);
  v109 = a1;
  v105 = v31;
  v106 = v12 + 16;
  v31(v26, a1, v11);
  v107 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v108 = v12;
  v96 = v23;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v116 = v95;
    *v35 = 136315394;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
    v94 = v32;
    v93 = v33;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v11;
    v39 = v38;
    v40 = *(v12 + 8);
    v40(v28, v37);
    v41 = sub_1000026C0(v36, v39, &v116);
    v11 = v37;

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v40(v26, v37);
    v45 = v40;
    v46 = sub_1000026C0(v42, v44, &v116);

    *(v35 + 14) = v46;
    v47 = v94;
    _os_log_impl(&_mh_execute_header, v94, v93, "Wrapping the contents of file at %s in Apple Encrypted Archive at %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v45 = *(v12 + 8);
    v45(v26, v11);
    v45(v28, v11);
  }

  static ArchiveEncryptionContext.Profile.hkdf_sha256_aesctr_hmac__symmetric__none.getter();
  if (v112)
  {
    static ArchiveCompression.lzfse.getter();
  }

  else
  {
    static ArchiveCompression.none.getter();
  }

  type metadata accessor for ArchiveEncryptionContext();
  swift_allocObject();
  v48 = ArchiveEncryptionContext.init(profile:compressionAlgorithm:compressionBlockSize:)();
  v49 = v113;
  v114 = v48;
  dispatch thunk of ArchiveEncryptionContext.setSymmetricKey(_:)();
  if (!v49)
  {
    v113 = v45;
    v51 = v11;
    type metadata accessor for ArchiveByteStream();
    v112 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
    if (v112)
    {
      v52 = v109;
      v53 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
      if (v53)
      {
        v116 = &_swiftEmptyArrayStorage;
        v54 = v53;
        sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags);
        sub_1000039E8(&qword_1004A6FA0);
        sub_1003063B0();
        v55 = v101;
        v56 = v103;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v111 = v54;
        v57 = static ArchiveByteStream.encryptionStream(writingTo:encryptionContext:flags:threadCount:)();
        (*(v102 + 8))(v55, v56);
        if (!v57)
        {
          v77 = v96;
          v105(v96, v109, v11);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v116 = v81;
            *v80 = 136446210;
            sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
            v82 = dispatch thunk of CustomStringConvertible.description.getter();
            v84 = v83;
            v113(v77, v51);
            v85 = sub_1000026C0(v82, v84, &v116);

            *(v80 + 4) = v85;
            _os_log_impl(&_mh_execute_header, v78, v79, "Failed to open encryption stream for %{public}s", v80, 0xCu);
            sub_100003C3C(v81);
          }

          else
          {

            v113(v77, v11);
          }

          sub_10030635C();
          swift_allocError();
          *v90 = 0;
          swift_willThrow();
          v91 = v115;
          sub_100302D30(v111, v115, &dispatch thunk of ArchiveByteStream.close());

          sub_100302D30(v112, v91, &dispatch thunk of ArchiveByteStream.close());
        }

        static ArchiveByteStream.process(readingFrom:writingTo:)();
        sub_100302D30(v57, v109, &dispatch thunk of ArchiveByteStream.close());

        v87 = v115;
        sub_100302D30(v111, v115, &dispatch thunk of ArchiveByteStream.close());

        v88 = v112;
        v89 = v87;
      }

      else
      {
        v67 = v98;
        v105(v98, v52, v11);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v116 = v71;
          *v70 = 136446210;
          sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
          v72 = dispatch thunk of CustomStringConvertible.description.getter();
          v74 = v73;
          v113(v67, v51);
          v75 = sub_1000026C0(v72, v74, &v116);

          *(v70 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v68, v69, "Failed to open output file stream to %{public}s", v70, 0xCu);
          sub_100003C3C(v71);
        }

        else
        {

          v113(v67, v11);
        }

        sub_10030635C();
        swift_allocError();
        *v86 = 0;
        swift_willThrow();
        v88 = v112;
        v89 = v115;
      }

      sub_100302D30(v88, v89, &dispatch thunk of ArchiveByteStream.close());
    }

    v58 = v100;
    v105(v100, v115, v11);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v116 = v62;
      *v61 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v113(v58, v51);
      v66 = sub_1000026C0(v63, v65, &v116);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "Failed to open input file stream for %{public}s", v61, 0xCu);
      sub_100003C3C(v62);
    }

    else
    {

      v113(v58, v11);
    }

    sub_10030635C();
    swift_allocError();
    *v76 = 0;
    swift_willThrow();
  }
}

uint64_t FilePath.extractAppleEncryptedArchive(to:using:expectingArchiveIdentifier:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v206 = a5;
  v201 = a2;
  v191 = type metadata accessor for ArchiveCompression();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v181[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ArchiveFlags();
  v195 = *(v9 - 8);
  v196 = v9;
  __chkstk_darwin(v9);
  v194 = &v181[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v188 = &v181[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v181[-v16];
  v18 = __chkstk_darwin(v15);
  v199 = &v181[-v19];
  v20 = __chkstk_darwin(v18);
  v200 = &v181[-v21];
  v22 = __chkstk_darwin(v20);
  v198 = &v181[-v23];
  v24 = __chkstk_darwin(v22);
  v192 = &v181[-v25];
  v26 = __chkstk_darwin(v24);
  v186 = &v181[-v27];
  v28 = __chkstk_darwin(v26);
  v197 = &v181[-v29];
  v30 = __chkstk_darwin(v28);
  v205 = &v181[-v31];
  v32 = __chkstk_darwin(v30);
  v203 = &v181[-v33];
  v34 = __chkstk_darwin(v32);
  v36 = &v181[-v35];
  __chkstk_darwin(v34);
  v38 = &v181[-v37];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v187 = v17;
  v193 = a3;
  v39 = type metadata accessor for Logger();
  v40 = sub_1000270B4(v39, qword_1004B00F8);
  v41 = *(v12 + 16);
  v41(v38, v211, v11);
  v207 = v41;
  v208 = v12 + 16;
  v41(v36, a1, v11);
  v210 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v44 = os_log_type_enabled(v42, v43);
  v209 = v12;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v183 = v42;
    v46 = v45;
    v184 = swift_slowAlloc();
    v212 = v184;
    *v46 = 136446466;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
    v202 = a1;
    v182 = v43;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v185 = a4;
    v49 = v48;
    v50 = *(v12 + 8);
    v50(v38, v11);
    v51 = sub_1000026C0(v47, v49, &v212);
    a4 = v185;

    *(v46 + 4) = v51;
    *(v46 + 12) = 2082;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v50(v36, v11);
    v55 = sub_1000026C0(v52, v54, &v212);
    a1 = v202;

    *(v46 + 14) = v55;
    v56 = v183;
    _os_log_impl(&_mh_execute_header, v183, v182, "Extracting Apple Encrypted Archive at %{public}s into %{public}s", v46, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v50 = *(v12 + 8);
    v50(v36, v11);
    v50(v38, v11);
  }

  v57 = v205;
  if ((v206 & 0x10000) != 0)
  {
    v73 = FilePath.directoryExists()();
    if (v74)
    {
    }

    else
    {
      v204 = 0;
      if (v73)
      {
        goto LABEL_7;
      }
    }

    v86 = v203;
    v207(v203, a1, v11);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = v11;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v212 = v91;
      *v90 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      v50(v86, v89);
      v95 = sub_1000026C0(v92, v94, &v212);

      *(v90 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v87, v88, "Output path %{public}s is not a directory or is not accessible", v90, 0xCu);
      sub_100003C3C(v91);
    }

    else
    {

      v50(v86, v11);
    }

    sub_10030635C();
    swift_allocError();
    *v96 = 3;
    return swift_willThrow();
  }

LABEL_7:
  v58 = type metadata accessor for ArchiveByteStream();
  v203 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (!v203)
  {
    v75 = v200;
    v207(v200, v211, v11);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = v11;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v212 = v80;
      *v79 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v75;
      v84 = v83;
      v50(v82, v78);
      v85 = sub_1000026C0(v81, v84, &v212);

      *(v79 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v76, v77, "Failed to open archive file stream for %{public}s", v79, 0xCu);
      sub_100003C3C(v80);
    }

    else
    {

      v50(v75, v11);
    }

    sub_10030635C();
    swift_allocError();
    *v108 = 0;
    return swift_willThrow();
  }

  v202 = a1;
  type metadata accessor for ArchiveEncryptionContext();
  swift_allocObject();

  v59 = ArchiveEncryptionContext.init(from:)();
  if (!v59)
  {
    v97 = v198;
    v207(v198, v211, v11);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = v50;
      v101 = v11;
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v212 = v103;
      *v102 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v105;
      v100(v97, v101);
      v107 = sub_1000026C0(v104, v106, &v212);

      *(v102 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v98, v99, "Failed to get encryption context for %{public}s", v102, 0xCu);
      sub_100003C3C(v103);
    }

    else
    {

      v50(v97, v11);
    }

    sub_10030635C();
    swift_allocError();
    *v120 = 1;
    swift_willThrow();
    goto LABEL_32;
  }

  v60 = v59;
  v61 = v204;
  dispatch thunk of ArchiveEncryptionContext.setSymmetricKey(_:)();
  if (!v61)
  {
    v201 = v58;
    v207(v57, v211, v11);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.info.getter();
    v112 = os_log_type_enabled(v110, v111);
    v185 = v50;
    if (v112)
    {
      v113 = swift_slowAlloc();
      v204 = v11;
      v114 = v113;
      v200 = swift_slowAlloc();
      v212 = v200;
      *v114 = 134218242;
      *(v114 + 4) = 12;
      *(v114 + 12) = 2080;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v60;
      v118 = v117;
      v50(v57, v204);
      v119 = sub_1000026C0(v115, v118, &v212);
      v60 = v116;

      *(v114 + 14) = v119;
      _os_log_impl(&_mh_execute_header, v110, v111, "Decryption thread count: %ld (%s)", v114, 0x16u);
      sub_100003C3C(v200);

      v11 = v204;
    }

    else
    {

      v50(v57, v11);
    }

    v212 = &_swiftEmptyArrayStorage;
    sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags);
    sub_1000039E8(&qword_1004A6FA0);
    sub_1003063B0();
    v121 = v194;
    v122 = v196;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v123 = static ArchiveByteStream.decryptionStream(readingFrom:encryptionContext:flags:threadCount:)();
    (*(v195 + 8))(v121, v122);
    v124 = v197;
    if (!v123)
    {
      v140 = v192;
      v207(v192, v211, v11);
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = v11;
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v212 = v145;
        *v144 = 136446210;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
        v146 = dispatch thunk of CustomStringConvertible.description.getter();
        v148 = v147;
        v185(v140, v143);
        v149 = sub_1000026C0(v146, v148, &v212);

        *(v144 + 4) = v149;
        _os_log_impl(&_mh_execute_header, v141, v142, "Failed to open decryption stream for %{public}s", v144, 0xCu);
        sub_100003C3C(v145);
      }

      else
      {

        v185(v140, v11);
      }

      sub_10030635C();
      swift_allocError();
      *v160 = 0;
      goto LABEL_29;
    }

    v207(v197, v211, v11);

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v204 = v11;
      v128 = v127;
      v129 = swift_slowAlloc();
      v205 = v60;
      v199 = v129;
      v212 = v129;
      *v128 = 136446466;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      v200 = v123;
      v132 = v131;
      v185(v124, v204);
      v133 = sub_1000026C0(v130, v132, &v212);

      *(v128 + 4) = v133;
      *(v128 + 12) = 2080;
      v134 = v189;
      dispatch thunk of ArchiveEncryptionContext.compressionAlgorithm.getter();
      sub_1003069C8(&qword_1004B0860, &type metadata accessor for ArchiveCompression);
      v135 = v191;
      v136 = dispatch thunk of CustomStringConvertible.description.getter();
      v138 = v137;
      (*(v190 + 8))(v134, v135);
      v139 = sub_1000026C0(v136, v138, &v212);
      v123 = v200;

      *(v128 + 14) = v139;
      _os_log_impl(&_mh_execute_header, v125, v126, "AEA compression algorithm used for %{public}s: %s", v128, 0x16u);
      swift_arrayDestroy();

      v11 = v204;
    }

    else
    {

      v185(v124, v11);
    }

    v150 = v193;
    if (a4 >> 60 == 15)
    {
      if ((v206 & 0x10000) == 0)
      {
LABEL_43:
        v151 = v202;
        v152 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
        if (!v152)
        {
          v169 = v123;
          v170 = v186;
          v207(v186, v151, v11);
          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v171, v172))
          {
            v173 = v11;
            v174 = swift_slowAlloc();
            v175 = swift_slowAlloc();
            v212 = v175;
            *v174 = 136446210;
            sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
            v176 = dispatch thunk of CustomStringConvertible.description.getter();
            v178 = v177;
            v185(v170, v173);
            v179 = sub_1000026C0(v176, v178, &v212);

            *(v174 + 4) = v179;
            _os_log_impl(&_mh_execute_header, v171, v172, "Failed to open output file stream for %{public}s", v174, 0xCu);
            sub_100003C3C(v175);
          }

          else
          {

            v185(v170, v11);
          }

          sub_10030635C();
          swift_allocError();
          *v180 = 0;
          swift_willThrow();
          v168 = v211;
          sub_100302D30(v169, v211, &dispatch thunk of ArchiveByteStream.close());

          goto LABEL_62;
        }

        v153 = v152;
        static ArchiveByteStream.process(readingFrom:writingTo:)();
        sub_100302D30(v153, v211, &dispatch thunk of ArchiveByteStream.close());

LABEL_59:
        v168 = v211;
        sub_100302D30(v123, v211, &dispatch thunk of ArchiveByteStream.close());

LABEL_62:

        sub_100302D30(v203, v168, &dispatch thunk of ArchiveByteStream.close());
      }
    }

    else
    {
      sub_1000318C0(v193, a4);
      v154 = dispatch thunk of ArchiveEncryptionContext.archiveIdentifier.getter();
      if (v155 >> 60 == 15)
      {
        v156 = Logger.logObject.getter();
        v157 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          *v158 = 0;
          _os_log_impl(&_mh_execute_header, v156, v157, "Archive identifier is missing on archive", v158, 2u);
        }

        sub_10030635C();
        swift_allocError();
        *v159 = 4;
        swift_willThrow();
        sub_100031914(v150, a4);
        goto LABEL_59;
      }

      v161 = v11;
      v162 = v154;
      v163 = v155;
      if ((sub_10030651C(v154, v155, v150, a4) & 1) == 0)
      {
        v200 = v123;
        v164 = Logger.logObject.getter();
        v165 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          *v166 = 0;
          _os_log_impl(&_mh_execute_header, v164, v165, "Archive identifier does not match expected", v166, 2u);
        }

        sub_10030635C();
        swift_allocError();
        *v167 = 4;
        swift_willThrow();
        sub_100031914(v162, v163);
        sub_100031914(v150, a4);
        v168 = v211;
        sub_100302D30(v200, v211, &dispatch thunk of ArchiveByteStream.close());

        goto LABEL_62;
      }

      sub_100031914(v162, v163);
      sub_100031914(v150, a4);
      v11 = v161;
      if ((v206 & 0x10000) == 0)
      {
        goto LABEL_43;
      }
    }

    sub_100303740(v123, v202);
    goto LABEL_59;
  }

  v62 = v199;
  v207(v199, v211, v11);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v185 = v50;
    v66 = v11;
    v67 = v65;
    v68 = swift_slowAlloc();
    v212 = v68;
    *v67 = 136446210;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v185(v62, v66);
    v72 = sub_1000026C0(v69, v71, &v212);

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v63, v64, "Failed to set symmetric key for encryption context %{public}s", v67, 0xCu);
    sub_100003C3C(v68);
  }

  else
  {

    v50(v62, v11);
  }

LABEL_29:
  swift_willThrow();

LABEL_32:
  sub_100302D30(v203, v211, &dispatch thunk of ArchiveByteStream.close());
}

uint64_t FilePath.extractUncompressedAppleArchive(to:)(uint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v85[-v8];
  v10 = __chkstk_darwin(v7);
  v96 = &v85[-v11];
  v12 = __chkstk_darwin(v10);
  v91 = &v85[-v13];
  v14 = __chkstk_darwin(v12);
  v94 = &v85[-v15];
  v16 = __chkstk_darwin(v14);
  v18 = &v85[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v85[-v20];
  __chkstk_darwin(v19);
  v23 = &v85[-v22];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v90 = v18;
  v92 = v9;
  v24 = type metadata accessor for Logger();
  v25 = sub_1000270B4(v24, qword_1004B00F8);
  v26 = *(v3 + 16);
  (v26)(v23, v101, v2);
  v97 = v26;
  v98 = v3 + 16;
  (v26)(v21, a1, v2);
  v99 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v95 = v3;
    v30 = v29;
    v88 = swift_slowAlloc();
    v102 = v88;
    *v30 = 136446466;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
    v89 = a1;
    v87 = v27;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v28;
    v33 = v32;
    v93 = v6;
    v34 = *(v95 + 8);
    v34(v23, v2);
    v35 = sub_1000026C0(v31, v33, &v102);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    a1 = v89;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v34(v21, v2);
    v39 = sub_1000026C0(v36, v38, &v102);

    *(v30 + 14) = v39;
    v40 = v87;
    _os_log_impl(&_mh_execute_header, v87, v86, "Extracting uncompressed Apple Archive at %{public}s into %{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v34 = *(v3 + 8);
    v34(v21, v2);
    v34(v23, v2);
  }

  v41 = FilePath.directoryExists()();
  if (v42)
  {

LABEL_11:
    v45 = v96;
    (v97)(v96, a1, v2);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v102 = v49;
      *v48 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v45;
      v53 = v52;
      v34(v51, v2);
      v54 = sub_1000026C0(v50, v53, &v102);

      *(v48 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v46, v47, "Output path %{public}s is not a directory or is not accessible", v48, 0xCu);
      sub_100003C3C(v49);
    }

    else
    {

      v34(v45, v2);
    }

    sub_10030635C();
    swift_allocError();
    *v55 = 3;
    return swift_willThrow();
  }

  if (!v41)
  {
    goto LABEL_11;
  }

  type metadata accessor for ArchiveByteStream();
  v43 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (!v43)
  {
    v57 = v91;
    (v97)(v91, v101, v2);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v102 = v101;
      *v60 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v34(v57, v2);
      v64 = sub_1000026C0(v61, v63, &v102);

      *(v60 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to open archive file stream for %{public}s", v60, 0xCu);
      sub_100003C3C(v101);
    }

    else
    {

      v34(v57, v2);
    }

    sub_10030635C();
    swift_allocError();
    *v84 = 0;
    return swift_willThrow();
  }

  v44 = v43;
  sub_100303740(v43, a1);
  v65 = v90;
  v66 = v97;
  (v97)(v90, v101, v2);
  (v66)(v94, a1, v2);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v100 = v44;
    v70 = v69;
    v96 = v69;
    v99 = swift_slowAlloc();
    v102 = v99;
    *v70 = 136446466;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
    LODWORD(v98) = v68;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v94;
    v97 = v67;
    v73 = v34;
    v74 = v2;
    v76 = v75;
    v73(v65, v74);
    v77 = sub_1000026C0(v71, v76, &v102);

    v78 = v96;
    *(v96 + 4) = v77;
    *(v78 + 6) = 2082;
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v81 = v80;
    v73(v72, v74);
    v82 = sub_1000026C0(v79, v81, &v102);

    *(v78 + 14) = v82;
    v83 = v97;
    _os_log_impl(&_mh_execute_header, v97, v98, "Successfully extracted uncompressed Apple Archive at %{public}s into %{public}s", v78, 0x16u);
    swift_arrayDestroy();

    v44 = v100;
  }

  else
  {

    v34(v94, v2);
    v34(v65, v2);
  }

  sub_100302D30(v44, v101, &dispatch thunk of ArchiveByteStream.close());
}

uint64_t FilePath.createAppleEncryptedArchive(at:using:permissions:compression:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  LODWORD(v105) = a4;
  LODWORD(v100) = a3;
  v106 = a2;
  v108 = a1;
  v5 = 1752459639;
  v6 = type metadata accessor for ArchiveFlags();
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v91 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ArchiveCompression();
  __chkstk_darwin(v8 - 8);
  v104 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ArchiveEncryptionContext.Profile();
  __chkstk_darwin(v10 - 8);
  v103 = &v83[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v88 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v83[-v17];
  v19 = __chkstk_darwin(v16);
  v89 = &v83[-v20];
  v21 = __chkstk_darwin(v19);
  v87 = &v83[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v83[-v24];
  __chkstk_darwin(v23);
  v27 = &v83[-v26];
  v107 = v4;
  v28 = FilePath.directoryExists()();
  if (v29)
  {

    v102 = 0;
    v30 = 0xE400000000000000;
  }

  else
  {
    v102 = 0;
    if (v28)
    {
      v5 = 0xD00000000000001ELL;
      v30 = 0x80000001004441B0;
    }

    else
    {
      v30 = 0xE400000000000000;
    }
  }

  v90 = v18;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_1000270B4(v31, qword_1004B00F8);
  v33 = *(v13 + 16);
  v33(v27, v107, v12);
  v94 = v33;
  v95 = v13 + 16;
  v33(v25, v108, v12);

  v96 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v99 = v13;
  v97 = v12;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v98 = v25;
    v38 = v37;
    v85 = swift_slowAlloc();
    v109 = v85;
    *v38 = 136315650;
    *(v38 + 4) = sub_1000026C0(v5, v30, &v109);
    *(v38 + 12) = 2082;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
    v86 = v5;
    v84 = v35;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v101 = v30;
    v42 = *(v13 + 8);
    v42(v27, v12);
    v43 = sub_1000026C0(v39, v41, &v109);

    *(v38 + 14) = v43;
    *(v38 + 22) = 2082;
    v44 = v98;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v98 = v42;
    v42(v44, v12);
    v30 = v101;
    v48 = sub_1000026C0(v45, v47, &v109);

    *(v38 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v34, v84, "Creating Apple Encrypted Archive %s %{public}s at %{public}s", v38, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v49 = *(v13 + 8);
    v49(v25, v12);
    v98 = v49;
    v49(v27, v12);
  }

  static ArchiveEncryptionContext.Profile.hkdf_sha256_aesctr_hmac__symmetric__none.getter();
  if (v105)
  {
    static ArchiveCompression.lzfse.getter();
  }

  else
  {
    static ArchiveCompression.none.getter();
  }

  type metadata accessor for ArchiveEncryptionContext();
  swift_allocObject();
  ArchiveEncryptionContext.init(profile:compressionAlgorithm:compressionBlockSize:)();
  v50 = v102;
  dispatch thunk of ArchiveEncryptionContext.setSymmetricKey(_:)();
  if (v50)
  {
  }

  else
  {
    type metadata accessor for ArchiveByteStream();
    v52 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
    if (v52)
    {
      v53 = v52;
      v101 = v30;
      v109 = _swiftEmptyArrayStorage;
      sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags);
      v106 = v53;
      sub_1000039E8(&qword_1004A6FA0);
      sub_1003063B0();
      v54 = v91;
      v55 = v93;
      v56 = v106;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v57 = static ArchiveByteStream.encryptionStream(writingTo:encryptionContext:flags:threadCount:)();
      (*(v92 + 8))(v54, v55);
      if (v57)
      {
        sub_100303030(v57, v107);

        sub_100302D30(v57, v108, &dispatch thunk of ArchiveByteStream.close());

        v80 = v56;
        v81 = v107;
      }

      else
      {

        v68 = v87;
        v69 = v97;
        v94(v87, v107, v97);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v109 = v73;
          *v72 = 136446210;
          sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
          v74 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v68;
          v77 = v76;
          (v98)(v75, v69);
          v78 = sub_1000026C0(v74, v77, &v109);

          *(v72 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v70, v71, "Failed to open encryption stream for %{public}s", v72, 0xCu);
          sub_100003C3C(v73);

          v56 = v106;
        }

        else
        {

          (v98)(v68, v69);
        }

        sub_10030635C();
        swift_allocError();
        *v82 = 0;
        swift_willThrow();
        v80 = v56;
        v81 = v107;
      }

      sub_100302D30(v80, v81, &dispatch thunk of ArchiveByteStream.close());
    }

    else
    {

      v58 = v89;
      v59 = v97;
      v94(v89, v108, v97);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v109 = v63;
        *v62 = 136446210;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        (v98)(v58, v59);
        v67 = sub_1000026C0(v64, v66, &v109);

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "Failed to open output file stream for %{public}s", v62, 0xCu);
        sub_100003C3C(v63);
      }

      else
      {

        (v98)(v58, v59);
      }

      sub_10030635C();
      swift_allocError();
      *v79 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100302D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = type metadata accessor for FilePath();
  v5 = __chkstk_darwin(v4);
  return a3(v5);
}

uint64_t sub_100303030(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v57 = a1;
  v3 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = type metadata accessor for FilePath();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  v8 = __chkstk_darwin(v6);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v51 - v10;
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v14 = type metadata accessor for ArchiveFlags();
  v62 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v56 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  v58 = a2;
  v19 = FilePath.directoryExists()();
  v61 = v11;
  v55 = v5;
  if (v20)
  {

    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  type metadata accessor for ArchiveStream();
  v63 = _swiftEmptyArrayStorage;
  v22 = sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags);
  v23 = sub_1000039E8(&qword_1004A6FA0);
  v53 = sub_1003063B0();
  v54 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = static ArchiveStream.encodeStream(writingTo:selectUsing:flags:threadCount:)();
  v25 = v62 + 8;
  v57 = *(v62 + 8);
  v57(v18, v14);
  if (v24)
  {
    v51 = v22;
    v52 = v24;
    v62 = v25;
    v26 = v59;
    v27 = *(v59 + 16);
    if (v21)
    {
      v28 = v60;
      v27(v61, v58, v60);
      v29 = 0;
    }

    else
    {
      v43 = v58;
      v28 = v60;
      v27(v13, v58, v60);
      v44 = (*(v26 + 80) + 16) & ~*(v26 + 80);
      v45 = swift_allocObject() + v44;
      v26 = v59;
      (*(v59 + 32))(v45, v13, v28);

      v27(v13, v43, v28);
      FilePath.appending(_:)();
      v29 = sub_100306930;
    }

    v46 = v55;
    (*(v26 + 56))(v55, 1, 1, v28);
    type metadata accessor for ArchiveHeader.FieldKeySet();
    static ArchiveHeader.FieldKeySet.defaultForArchive.getter();
    v63 = _swiftEmptyArrayStorage;
    v47 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v48 = v52;
    ArchiveStream.writeDirectoryContents(archiveFrom:path:keySet:selectUsing:flags:threadCount:)();
    sub_100031B5C(v29);

    sub_100031B5C(v29);
    v57(v47, v14);
    sub_100013F2C(v46, &qword_1004A9CF8);
    (*(v26 + 8))(v61, v60);
    sub_100302D30(v48, v58, &dispatch thunk of ArchiveStream.close());
  }

  else
  {
    v30 = v59;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000270B4(v31, qword_1004B00F8);
    v32 = v52;
    v33 = v60;
    (*(v30 + 16))(v52, v58, v60);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v30;
      v38 = swift_slowAlloc();
      v63 = v38;
      *v36 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v37 + 8))(v32, v33);
      v42 = sub_1000026C0(v39, v41, &v63);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to open encode stream for %{public}s", v36, 0xCu);
      sub_100003C3C(v38);
    }

    else
    {

      (*(v30 + 8))(v32, v33);
    }

    sub_10030635C();
    swift_allocError();
    *v50 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100303740(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v53 = a2;
  v2 = type metadata accessor for FilePath();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v47 = &v47 - v6;
  v7 = type metadata accessor for ArchiveFlags();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for ArchiveStream();
  v54 = &_swiftEmptyArrayStorage;
  sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags);
  sub_1000039E8(&qword_1004A6FA0);
  sub_1003063B0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v52 = v13;
  v14 = static ArchiveStream.decodeStream(readingFrom:selectUsing:flags:threadCount:)();
  v15 = *(v8 + 8);
  v15(v12, v7);
  v51 = v14;
  if (v14)
  {
    v54 = &_swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = static ArchiveStream.extractStream(extractingTo:selectUsing:flags:threadCount:)();
    v15(v12, v7);
    if (v16)
    {
      v54 = &_swiftEmptyArrayStorage;
      v17 = v48;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      static ArchiveStream.process(readingFrom:writingTo:selectUsing:flags:threadCount:)();
      v15(v17, v7);
      sub_100305D0C();

      sub_100305D0C();
    }

    else
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000270B4(v31, qword_1004B00F8);
      v33 = v49;
      v32 = v50;
      v34 = v47;
      (*(v49 + 16))(v47, v53, v50);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v54 = v38;
        *v37 = 136446210;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v34;
        v42 = v41;
        (*(v33 + 8))(v40, v32);
        v43 = sub_1000026C0(v39, v42, &v54);

        *(v37 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v35, v36, "Failed to open extractor stream for %{public}s", v37, 0xCu);
        sub_100003C3C(v38);
      }

      else
      {

        (*(v33 + 8))(v34, v32);
      }

      sub_10030635C();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
      sub_100305D0C();
    }
  }

  else
  {
    v18 = v53;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000270B4(v19, qword_1004B00F8);
    v21 = v49;
    v20 = v50;
    v22 = v5;
    (*(v49 + 16))(v5, v18, v50);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54 = v26;
      *v25 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v21 + 8))(v22, v20);
      v30 = sub_1000026C0(v27, v29, &v54);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to open decode stream for %{public}s", v25, 0xCu);
      sub_100003C3C(v26);
    }

    else
    {

      (*(v21 + 8))(v22, v20);
    }

    sub_10030635C();
    swift_allocError();
    *v44 = 0;
    return swift_willThrow();
  }
}

uint64_t FilePath.createAppleArchive(at:permissions:compression:)(uint64_t a1, int a2, int a3)
{
  v121 = a3;
  LODWORD(v127) = a2;
  v132 = a1;
  v4 = 1752459639;
  v5 = type metadata accessor for ArchiveFlags();
  v117 = *(v5 - 8);
  v118 = v5;
  __chkstk_darwin(v5);
  v115 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for ArchiveCompression();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FilePath();
  v131 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v122 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v129 = &v108 - v12;
  v13 = __chkstk_darwin(v11);
  v119 = &v108 - v14;
  v15 = __chkstk_darwin(v13);
  v111 = &v108 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v108 - v18;
  __chkstk_darwin(v17);
  v21 = &v108 - v20;
  v130 = v3;
  v22 = FilePath.directoryExists()();
  if (v23)
  {

    v120 = 0;
    v24 = 0xE400000000000000;
  }

  else
  {
    v120 = 0;
    if (v22)
    {
      v4 = 0xD00000000000001ELL;
      v24 = 0x80000001004441B0;
    }

    else
    {
      v24 = 0xE400000000000000;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000270B4(v25, qword_1004B00F8);
  v27 = (v131 + 16);
  v28 = *(v131 + 16);
  v29 = v21;
  (v28)(v21, v130, v8);
  v123 = v28;
  v124 = v27;
  (v28)(v19, v132, v8);

  v125 = v26;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v112 = v4;
  v128 = v24;
  if (v32)
  {
    v33 = v24;
    v34 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v133 = v110;
    *v34 = 136315650;
    *(v34 + 4) = sub_1000026C0(v4, v33, &v133);
    *(v34 + 12) = 2082;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
    v109 = v31;
    v35 = v29;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v108 = v30;
    v38 = v37;
    v39 = *(v131 + 8);
    v39(v35, v8);
    v40 = sub_1000026C0(v36, v38, &v133);

    *(v34 + 14) = v40;
    *(v34 + 22) = 2082;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v126 = v39;
    v39(v19, v8);
    v44 = sub_1000026C0(v41, v43, &v133);

    *(v34 + 24) = v44;
    v45 = v108;
    _os_log_impl(&_mh_execute_header, v108, v109, "Creating Apple Archive %s %{public}s at %{public}s", v34, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v46 = *(v131 + 8);
    v46(v19, v8);
    v126 = v46;
    v46(v29, v8);
  }

  type metadata accessor for ArchiveByteStream();
  v47 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  v48 = v129;
  if (v47)
  {
    v49 = v47;
    if (v121)
    {
      v50 = v113;
      static ArchiveCompression.lzfse.getter();
      v133 = _swiftEmptyArrayStorage;
      sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags);
      sub_1000039E8(&qword_1004A6FA0);
      sub_1003063B0();
      v51 = v115;
      v52 = v118;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v53 = static ArchiveByteStream.compressionStream(using:writingTo:blockSize:flags:threadCount:)();
      (*(v117 + 8))(v51, v52);
      (*(v114 + 8))(v50, v116);
      if (!v53)
      {

        v95 = v111;
        (v123)(v111, v132, v8);
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v130 = v49;
          v99 = v98;
          v100 = v8;
          v101 = swift_slowAlloc();
          v133 = v101;
          *v99 = 136446210;
          sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
          v102 = dispatch thunk of CustomStringConvertible.description.getter();
          v103 = v95;
          v105 = v104;
          v126(v103, v100);
          v106 = sub_1000026C0(v102, v105, &v133);

          *(v99 + 4) = v106;
          _os_log_impl(&_mh_execute_header, v96, v97, "Failed to open compression stream for %{public}s", v99, 0xCu);
          sub_100003C3C(v101);

          v49 = v130;
        }

        else
        {

          v126(v95, v8);
        }

        sub_10030635C();
        swift_allocError();
        *v107 = 0;
        swift_willThrow();
        v88 = v49;
        v89 = v132;
        goto LABEL_30;
      }

      v127 = v53;
      v48 = v129;
    }

    else
    {
      v127 = 0;
    }

    v65 = v120;
    sub_100303030(v64, v130);
    if (v65)
    {

      v66 = v123;
      (v123)(v48, v130, v8);
      (v66)(v122, v132, v8);
      v67 = v128;

      swift_errorRetain();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = v8;
        v71 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v133 = v125;
        *v71 = 136315906;
        v72 = sub_1000026C0(v112, v67, &v133);
        v123 = v68;
        v73 = v72;

        *(v71 + 4) = v73;
        *(v71 + 12) = 2082;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
        LODWORD(v128) = v69;
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        v130 = v49;
        v76 = v75;
        v77 = v126;
        v126(v48, v70);
        v78 = sub_1000026C0(v74, v76, &v133);
        v49 = v130;

        *(v71 + 14) = v78;
        *(v71 + 22) = 2082;
        v79 = v122;
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v81;
        v77(v79, v70);
        v83 = sub_1000026C0(v80, v82, &v133);

        *(v71 + 24) = v83;
        *(v71 + 32) = 2114;
        swift_errorRetain();
        v84 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 34) = v84;
        v86 = v123;
        v85 = v124;
        *v124 = v84;
        _os_log_impl(&_mh_execute_header, v86, v128, "Failed to create Apple Archive %s %{public}s at %{public}s: %{public}@", v71, 0x2Au);
        sub_100013F2C(v85, &qword_1004AA050);

        swift_arrayDestroy();
      }

      else
      {

        v92 = v126;
        v126(v122, v8);
        v92(v48, v8);
      }

      sub_10030635C();
      swift_allocError();
      *v93 = 2;
      swift_willThrow();

      v94 = v132;
      sub_100304CDC(v127);

      sub_100302D30(v49, v94, &dispatch thunk of ArchiveByteStream.close());
    }

    v87 = v132;
    sub_100304CDC(v127);

    v88 = v49;
    v89 = v87;
LABEL_30:
    sub_100302D30(v88, v89, &dispatch thunk of ArchiveByteStream.close());
  }

  v54 = v119;
  (v123)(v119, v132, v8);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = v8;
    v59 = swift_slowAlloc();
    v133 = v59;
    *v57 = 136446210;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v126(v54, v58);
    v63 = sub_1000026C0(v60, v62, &v133);

    *(v57 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v55, v56, "Failed to open output file stream for %{public}s", v57, 0xCu);
    sub_100003C3C(v59);
  }

  else
  {

    v126(v54, v8);
  }

  sub_10030635C();
  swift_allocError();
  *v90 = 0;
  return swift_willThrow();
}

uint64_t sub_100304CDC(uint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  result = __chkstk_darwin(v2);
  if (a1)
  {

    dispatch thunk of ArchiveByteStream.close()();
  }

  return result;
}

unint64_t sub_100305028(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v5;
  v6 = 4 * v5;
  v7 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v37 = 4 << v7;
  v29 = a4 & 0xFFFFFFFFFFFFFFLL;
  v28 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v8;
  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = 15;
  v13 = 15;
  v36 = v6;
  v31 = 4 << v10;
  while (1)
  {
    v14 = v13 >> 14;
    if (v13 >> 14 == v6)
    {
      v15 = 0;
      goto LABEL_29;
    }

    result = v13;
    if ((v13 & 0xC) == v37)
    {
      result = sub_1000C34F8(v13, a3, a4);
      v11 = v31;
    }

    v17 = result >> 16;
    v18 = a4;
    if (result >> 16 >= v34)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v18 = a4;
      v11 = v31;
      v15 = result;
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v38 = a3;
      v39 = v29;
      v15 = *(&v38 + v17);
    }

    else
    {
      result = v28;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v18 = a4;
        v11 = v31;
      }

      v15 = *(result + v17);
    }

    if ((v13 & 0xC) == v37)
    {
      result = sub_1000C34F8(v13, a3, v18);
      v11 = v31;
      v13 = result;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_26:
        if (v34 <= v13 >> 16)
        {
          goto LABEL_55;
        }

        v19 = String.UTF8View._foreignIndex(after:)();
        v11 = v31;
        v13 = v19;
        goto LABEL_28;
      }
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_28:
    v6 = v36;
LABEL_29:
    v20 = v12 >> 14;
    v21 = v12 >> 14 == v9;
    if (v12 >> 14 == v9)
    {
      v22 = 0;
      if (v14 == v6)
      {
        return v21;
      }

      goto LABEL_47;
    }

    v23 = v12 & 0xC;
    result = v12;
    if (v23 == v11)
    {
      result = sub_1000C34F8(v12, a1, a2);
      v11 = v31;
      v6 = v36;
    }

    v24 = result >> 16;
    if (result >> 16 >= v32)
    {
      goto LABEL_54;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v11 = v31;
      v6 = v36;
      v22 = result;
      if (v23 != v31)
      {
        goto LABEL_45;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v38 = a1;
      v39 = v27;
      v22 = *(&v38 + v24);
      if (v23 != v11)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = v26;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v11 = v31;
        v6 = v36;
      }

      v22 = *(result + v24);
      if (v23 != v11)
      {
LABEL_45:
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_46:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v14 == v6)
          {
            return v21;
          }

          goto LABEL_47;
        }

        goto LABEL_41;
      }
    }

    result = sub_1000C34F8(v12, a1, a2);
    v11 = v31;
    v6 = v36;
    v12 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_41:
    if (v32 <= v12 >> 16)
    {
      goto LABEL_56;
    }

    v25 = String.UTF8View._foreignIndex(after:)();
    v11 = v31;
    v6 = v36;
    v12 = v25;
    if (v14 == v36)
    {
      return v21;
    }

LABEL_47:
    v21 = 0;
    if (v20 == v9 || v15 != v22)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_10030537C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Data.Iterator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000318C0(a2, a3);
  Data.Iterator.init(_:at:)();
  v10 = *(a1 + 16);
  sub_1003069C8(&qword_1004B0880, &type metadata accessor for Data.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v10)
  {
    v11 = (a1 + 32);
    while (1)
    {
      v12 = 0;
      if (v16)
      {
        break;
      }

      v13 = *v11++;
      if (v15[14] != v13)
      {
        break;
      }

      dispatch thunk of IteratorProtocol.next()();
      if (!--v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v12 = v16;
  }

  (*(v7 + 8))(v9, v6);
  return v12;
}

uint64_t FilePath.readAppleEncryptedArchiveIdentifier()()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  type metadata accessor for ArchiveByteStream();
  if (static ArchiveByteStream.fileStream(path:mode:options:permissions:)())
  {
    type metadata accessor for ArchiveEncryptionContext();
    swift_allocObject();

    if (ArchiveEncryptionContext.init(from:)())
    {
      v8 = dispatch thunk of ArchiveEncryptionContext.archiveIdentifier.getter();

      return v8;
    }

    else
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000270B4(v19, qword_1004B00F8);
      (*(v2 + 16))(v7, v0, v1);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v30;
        *v22 = 136446210;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        (*(v2 + 8))(v7, v1);
        v26 = sub_1000026C0(v23, v25, &v31);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get encryption context for %{public}s", v22, 0xCu);
        sub_100003C3C(v30);
      }

      else
      {

        (*(v2 + 8))(v7, v1);
      }

      sub_10030635C();
      swift_allocError();
      *v28 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000270B4(v10, qword_1004B00F8);
    (*(v2 + 16))(v5, v0, v1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v2 + 8))(v5, v1);
      v18 = sub_1000026C0(v15, v17, &v31);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to open archive file stream for %{public}s", v13, 0xCu);
      sub_100003C3C(v14);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }

    sub_10030635C();
    swift_allocError();
    *v27 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100305A5C()
{
  v0 = sub_1000039E8(&qword_1004B0748);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for ArchiveHeader.EntryMessage();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ArchiveHeader.EntryMessage.searchExclude.getter();
  sub_1003069C8(&qword_1004B0878, &type metadata accessor for ArchiveHeader.EntryMessage);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    FilePath.lastComponent.getter();
    v8 = type metadata accessor for FilePath.Component();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v2, 1, v8) == 1)
    {
      sub_100013F2C(v2, &qword_1004B0748);
      FilePath.description.getter();
LABEL_11:

      return static ArchiveHeader.EntryMessageStatus.skip.getter();
    }

    v10 = FilePath.Component.description.getter();
    v12 = v11;
    (*(v9 + 8))(v2, v8);
    v13 = FilePath.description.getter();
    if (!v12)
    {
      goto LABEL_11;
    }

    if (v10 == v13 && v12 == v14)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        return static ArchiveHeader.EntryMessageStatus.skip.getter();
      }
    }
  }

  return static ArchiveHeader.EntryMessageStatus.ok.getter();
}

uint64_t sub_100305D0C()
{
  v0 = type metadata accessor for FilePath();
  __chkstk_darwin(v0);
  return dispatch thunk of ArchiveStream.close()();
}

uint64_t sub_100305F9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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

uint64_t sub_1003061CC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_100306464(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100031928(a3, a4);
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
  sub_100305F9C(v13, a3, a4, &v12);
  v10 = v4;
  sub_100031928(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_10030635C()
{
  result = qword_1004B0858;
  if (!qword_1004B0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0858);
  }

  return result;
}

unint64_t sub_1003063B0()
{
  result = qword_1004A6FA8;
  if (!qword_1004A6FA8)
  {
    sub_100003A94(&qword_1004A6FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6FA8);
  }

  return result;
}

void *sub_100306414(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100306434@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100306464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
  sub_100305F9C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10030651C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1000318C0(a3, a4);
          return sub_1003061CC(v13, a2, a3, a4) & 1;
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

unint64_t sub_100306688()
{
  result = qword_1004B0868;
  if (!qword_1004B0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0868);
  }

  return result;
}

uint64_t _s35AppleEncryptedArchiveExtractionModeOwCP(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s35AppleEncryptedArchiveExtractionModeOwet(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFFFF) >> 24 == 255)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if ((a2 + 0xFFFFFF) >> 24)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      return v3;
    }

    if (v3 == 2)
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    else
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    return (*a1 | (*(a1 + 2) << 16) | (v3 << 24)) - 0xFFFFFF;
  }

  return 0;
}

uint64_t _s35AppleEncryptedArchiveExtractionModeOwst(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFFFF) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 0xFFFFFF) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v4)
    {
      v5 = ((a2 - 1) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else if (v4)
  {
    if (v4 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t sub_1003067D8(unsigned __int16 *a1)
{
  if (*(a1 + 2))
  {
    return (*a1 | (*(a1 + 2) << 16)) - 0xFFFF;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003067FC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = ((a2 - 1) >> 16) + 1;
  }

  else
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_100306854()
{
  result = qword_1004B0870;
  if (!qword_1004B0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0870);
  }

  return result;
}

uint64_t sub_1003068A8()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100306930()
{
  type metadata accessor for FilePath();

  return sub_100305A5C();
}

uint64_t sub_1003069C8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100306A10()
{
  result = sub_100306A30();
  qword_1004B0888 = result;
  return result;
}

id sub_100306A30()
{
  v0 = sub_1000039E8(qword_1004B08D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_allocWithZone(NSDateFormatter) init];
  TimeZone.init(abbreviation:)();
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  isa = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v2, v4);
  }

  [v3 setTimeZone:isa];

  v7 = String._bridgeToObjectiveC()();
  [v3 setDateFormat:v7];

  return v3;
}

Swift::UInt64_optional __swiftcall iso8601DateToEpochMillis(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  if (!object)
  {
    goto LABEL_9;
  }

  if (qword_1004A9FA0 != -1)
  {
    swift_once();
  }

  v9 = qword_1004B0888;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 dateFromString:v10];

  if (!v11)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v8, v6, v2);
  Date.timeIntervalSince1970.getter();
  v13 = v12;
  v14 = (*(v3 + 8))(v8, v2);
  v16 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v16 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v16 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v16;
LABEL_10:
  v15 = object == 0;
LABEL_14:
  result.value = v14;
  result.is_nil = v15;
  return result;
}

uint64_t WhisperSecretDetail.secret.getter()
{
  v1 = *(v0 + 48);
  sub_100031994(v1, *(v0 + 56));
  return v1;
}

uint64_t WhisperSecretDetail.secret.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100031914(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t WhisperSecretDetail.creationDate.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t WhisperSecretDetail.updateDate.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void WhisperSecretDetail.hash(into:)()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v0 + 24))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  if (*(v0 + 56) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v0 + 72) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 64);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  if (*(v0 + 88) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *(v0 + 80);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
  }

  if (*(v0 + 104) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 96);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }
}

Swift::Int WhisperSecretDetail.hashValue.getter()
{
  Hasher.init(_seed:)();
  WhisperSecretDetail.hash(into:)();
  return Hasher._finalize()();
}

double WhisperSecretDetail.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  result = 0.0;
  *(a1 + 48) = xmmword_100376D40;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  return result;
}

uint64_t WhisperSecretDetail.init(name:metadata:version:secret:creationDate:updateDate:secretLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  return result;
}

BOOL sub_1003070E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 9) = *(a1 + 89);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[9] = *(a2 + 89);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return _s10DarwinInit19WhisperSecretDetailV2eeoiySbAC_ACtFZ_0(v10, v12);
}

Swift::Int sub_100307154()
{
  Hasher.init(_seed:)();
  WhisperSecretDetail.hash(into:)();
  return Hasher._finalize()();
}

DarwinInit::WhisperSecretDetail::CodingKeys_optional __swiftcall WhisperSecretDetail.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489288, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t WhisperSecretDetail.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 1701667182;
  v2 = 0x6144657461647075;
  if (a1 != 5)
  {
    v2 = 0x654C746572636573;
  }

  v3 = 0x746572636573;
  if (a1 != 3)
  {
    v3 = 0x6E6F697461657263;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x617461646174656DLL;
  if (a1 != 1)
  {
    v4 = 0x6E6F6973726576;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1003072CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = *a2;
  v5 = 0x6144657461647075;
  v6 = 0xEA00000000006574;
  if (v2 != 5)
  {
    v5 = 0x654C746572636573;
    v6 = 0xEC0000006874676ELL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746572636573;
  if (v2 != 3)
  {
    v8 = 0x6E6F697461657263;
    v7 = 0xEC00000065746144;
  }

  if (*a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x617461646174656DLL;
  if (v2 != 1)
  {
    v10 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
  }

  if (*a1)
  {
    v3 = v9;
  }

  else
  {
    v10 = 1701667182;
  }

  if (*a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (*a2 <= 2u)
  {
    if (*a2)
    {
      if (v4 == 1)
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x617461646174656DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E6F6973726576)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1701667182)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (*a2 > 4u)
  {
    if (v4 == 5)
    {
      v13 = 0xEA00000000006574;
      if (v11 != 0x6144657461647075)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v14 = 0x654C746572636573;
    v15 = 1752459118;
  }

  else
  {
    if (v4 == 3)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x746572636573)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v14 = 0x6E6F697461657263;
    v15 = 1702125892;
  }

  v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v14)
  {
LABEL_39:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_40;
  }

LABEL_37:
  if (v12 != v13)
  {
    goto LABEL_39;
  }

  v16 = 1;
LABEL_40:

  return v16 & 1;
}

Swift::Int sub_100307508()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100307634()
{
  String.hash(into:)();
}

Swift::Int sub_10030774C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::WhisperSecretDetail::CodingKeys_optional sub_100307874@<W0>(Swift::String *a1@<X0>, DarwinInit::WhisperSecretDetail::CodingKeys_optional *a2@<X8>)
{
  result.value = WhisperSecretDetail.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_1003078A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEA00000000006574;
  v6 = 0x6144657461647075;
  if (v2 != 5)
  {
    v6 = 0x654C746572636573;
    v5 = 0xEC0000006874676ELL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746572636573;
  if (v2 != 3)
  {
    v8 = 0x6E6F697461657263;
    v7 = 0xEC00000065746144;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x617461646174656DLL;
  if (v2 != 1)
  {
    v10 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10030798C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6144657461647075;
  if (v1 != 5)
  {
    v3 = 0x654C746572636573;
  }

  v4 = 0x746572636573;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461657263;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x617461646174656DLL;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

DarwinInit::WhisperSecretDetail::CodingKeys_optional sub_100307A70@<W0>(uint64_t a1@<X0>, DarwinInit::WhisperSecretDetail::CodingKeys_optional *a2@<X8>)
{
  result.value = WhisperSecretDetail.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100307A98(uint64_t a1)
{
  v2 = sub_1003090EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100307AD4(uint64_t a1)
{
  v2 = sub_1003090EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 WhisperSecretDetail.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100307FB4(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t static WhisperSecretDetail.fetchWhisperSecret(from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100307C0C;

  return sub_10030873C(a1);
}

uint64_t sub_100307C0C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

BOOL _s10DarwinInit19WhisperSecretDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 48);
  v27 = *(a2 + 48);
  v28 = v16;
  v17 = v16;
  v18 = v27;
  if (*(&v16 + 1) >> 60 == 15)
  {
    if (*(&v27 + 1) >> 60 == 15)
    {
      v19 = a2;
      v20 = a1;
      sub_1003092A8(&v28, v26);
      sub_1003092A8(&v27, v26);
      sub_100031914(v17, *(&v17 + 1));
      goto LABEL_30;
    }

LABEL_27:
    sub_1003092A8(&v28, v26);
    sub_1003092A8(&v27, v26);
    sub_100031914(v17, *(&v17 + 1));
    sub_100031914(v18, *(&v18 + 1));
    return 0;
  }

  if (*(&v27 + 1) >> 60 == 15)
  {
    goto LABEL_27;
  }

  v19 = a2;
  v20 = a1;
  sub_1003092A8(&v28, v26);
  sub_1003092A8(&v27, v26);
  v22 = sub_10030651C(v17, *(&v17 + 1), v18, *(&v18 + 1));
  sub_100031914(v18, *(&v18 + 1));
  sub_100031914(v17, *(&v17 + 1));
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v23 = *(v19 + 72);
  if (*(v20 + 72))
  {
    if (!*(v19 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(v20 + 64) != *(v19 + 64))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = *(v19 + 88);
  if (*(v20 + 88))
  {
    if (!*(v19 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(v20 + 80) != *(v19 + 80))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = *(v19 + 104);
  if (*(v20 + 104))
  {
    return (*(v19 + 104) & 1) != 0;
  }

  if (*(v20 + 96) != *(v19 + 96))
  {
    v25 = 1;
  }

  return (v25 & 1) == 0;
}

uint64_t sub_100307FB4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004B08C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v82 = 1;
  v80 = 1;
  v78 = 1;
  v76 = 1;
  v9 = a1[3];
  v53 = a1;
  sub_10000E2A8(a1, v9);
  sub_1003090EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v83 = v2;
    v51 = 0;
    value = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0xF000000000000000;
LABEL_4:
    sub_100003C3C(v53);
    *&v61 = v15;
    *(&v61 + 1) = v14;
    *&v62 = v13;
    *(&v62 + 1) = v12;
    v63 = v11;
    v64 = v82;
    *v65 = *v81;
    *&v65[3] = *&v81[3];
    v66 = v10;
    v67 = v16;
    v68 = value;
    v69 = v80;
    *v70 = *v79;
    *&v70[3] = *&v79[3];
    v71 = v51;
    v72 = v78;
    *v73 = *v77;
    *&v73[3] = *&v77[3];
    v74 = 0;
    v75 = v76;
    return sub_1003091E8(&v61);
  }

  LOBYTE(v61) = 0;
  *&v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v50 + 1) = v18;
  LOBYTE(v61) = 1;
  *&v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v49 + 1) = v19;
  LOBYTE(v61) = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = 0;
  v48 = v20;
  v82 = v21 & 1;
  LOBYTE(v54) = 3;
  sub_10025AA8C();
  v22 = v83;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v83 = v22;
  if (v22)
  {
    (*(v6 + 8))(v8, v5);
    v51 = 0;
    value = 0;
    v10 = 0;
    v16 = 0xF000000000000000;
    v14 = *(&v50 + 1);
    v15 = v50;
    v12 = *(&v49 + 1);
    v13 = v49;
    v11 = v48;
    goto LABEL_4;
  }

  v23 = v61;
  sub_100031914(0, 0xF000000000000000);
  LOBYTE(v61) = 4;
  v24 = v83;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = v24;
  if (v24)
  {
    (*(v6 + 8))(v8, v5);
    v51 = 0;
    value = 0;
LABEL_11:
    v14 = *(&v50 + 1);
    v15 = v50;
    v10 = v23;
    v12 = *(&v49 + 1);
    v13 = v49;
    v16 = *(&v23 + 1);
    v11 = v48;
    goto LABEL_4;
  }

  v84 = iso8601DateToEpochMillis(_:)(*&v25);
  value = v84.value;
  is_nil = v84.is_nil;

  v80 = is_nil;
  LOBYTE(v61) = 5;
  v28 = v83;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = v28;
  if (v28)
  {
    (*(v6 + 8))(v8, v5);
    v51 = 0;
    goto LABEL_11;
  }

  v47 = *(&v23 + 1);
  v10 = v23;
  v85 = iso8601DateToEpochMillis(_:)(*&v29);
  v51 = v85.value;
  v31 = v85.is_nil;

  v78 = v31;
  v60 = 6;
  v32 = v83;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = v32;
  if (v32)
  {
    (*(v6 + 8))(v8, v5);
    v14 = *(&v50 + 1);
    v15 = v50;
    v12 = *(&v49 + 1);
    v13 = v49;
    v16 = v47;
    v11 = v48;
    goto LABEL_4;
  }

  v35 = v34;
  v36 = v33;
  (*(v6 + 8))(v8, v5);
  v35 &= 1u;
  v76 = v35;
  v54 = v50;
  v55 = v49;
  v37 = v47;
  *&v56 = v48;
  v46 = v82;
  BYTE8(v56) = v82;
  *&v57 = v23;
  *(&v57 + 1) = v47;
  v39 = v51;
  v38 = value;
  *&v58 = value;
  v45 = v80;
  BYTE8(v58) = v80;
  *v59 = v51;
  v40 = v78;
  v59[8] = v78;
  *&v59[16] = v36;
  v59[24] = v35;
  sub_100309270(&v54, &v61);
  sub_100003C3C(v53);
  v61 = v50;
  v62 = v49;
  v63 = v48;
  v64 = v46;
  v66 = v23;
  v67 = v37;
  v68 = v38;
  v69 = v45;
  v71 = v39;
  v72 = v40;
  v74 = v36;
  v75 = v35;
  result = sub_1003091E8(&v61);
  v41 = *v59;
  a2[4] = v58;
  a2[5] = v41;
  *(a2 + 89) = *&v59[9];
  v42 = v55;
  *a2 = v54;
  a2[1] = v42;
  v43 = v57;
  a2[2] = v56;
  a2[3] = v43;
  return result;
}

uint64_t sub_100308538(uint64_t a1)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100309140();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    goto LABEL_4;
  }

  v11 = v14;
  v12[0] = v15[0];
  *(v12 + 9) = *(v15 + 9);
  v9[0] = v12[2];
  v9[1] = v12[3];
  v9[2] = v12[4];
  v10 = v13;
  if (*(&v13 + 1) >> 60 == 15)
  {
    sub_100309194();
    swift_allocError();
    *v3 = 0xD00000000000002ALL;
    v3[1] = 0x80000001004441D0;
    swift_willThrow();
    sub_1003091E8(v9);
LABEL_4:

    return a1;
  }

  a1 = v10;
  sub_1000318C0(v10, *(&v13 + 1));
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000270B4(v5, qword_1004B00F8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully decoded response into Whisper JSON", v8, 2u);
  }

  sub_1003091E8(v9);
  return a1;
}

uint64_t sub_10030873C(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for URL();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100308864, 0, 0);
}

uint64_t sub_100308864()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = sub_1001862DC(_swiftEmptyArrayStorage);
  *(v0 + 16) = xmmword_1003F2EE0;
  *(v0 + 32) = xmmword_1003F2EF0;
  *(v0 + 48) = 1;
  v6 = *(v3 + 16);
  *(v0 + 120) = v6;
  *(v0 + 128) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.addHeaders(additionalHTTPHeaders:)(v5);

  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_1003089E4;
  v8 = *(v0 + 112);

  return sub_1001AA578(v8, 3, 0x8AC7230489E80000, 0, 0, v0 + 16, 1, 1);
}

uint64_t sub_1003089E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[18] = a1;
  v6[19] = a2;
  v6[20] = v3;

  if (v3)
  {
    v7 = sub_100308DCC;
  }

  else
  {

    v7 = sub_100308B04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100308B04()
{
  v28 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_1000270B4(v5, qword_1004B00F8);
  v1(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    sub_100309218();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000026C0(v14, v16, &v27);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully fetched secret from %s", v12, 0xCu);
    sub_100003C3C(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[20];
  v19 = sub_100308538(v0[18]);
  v21 = v20;
  v22 = v0[19];
  if (v18)
  {
    sub_100031928(v0[18], v22);

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v19;
    sub_100031928(v0[18], v22);

    v26 = v0[1];

    return v26(v25, v21);
  }
}

uint64_t sub_100308DCC()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_100308E68()
{
  result = qword_1004B0890;
  if (!qword_1004B0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0890);
  }

  return result;
}

unint64_t sub_100308EC0()
{
  result = qword_1004B0898;
  if (!qword_1004B0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0898);
  }

  return result;
}

unint64_t sub_100308F18()
{
  result = qword_1004B08A0;
  if (!qword_1004B08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B08A0);
  }

  return result;
}

unint64_t sub_100308F70()
{
  result = qword_1004B08A8;
  if (!qword_1004B08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B08A8);
  }

  return result;
}

__n128 sub_100308FC4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100308FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10030904C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1003090EC()
{
  result = qword_1004B08B0;
  if (!qword_1004B08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B08B0);
  }

  return result;
}

unint64_t sub_100309140()
{
  result = qword_1004B08B8;
  if (!qword_1004B08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B08B8);
  }

  return result;
}

unint64_t sub_100309194()
{
  result = qword_1004B08C0;
  if (!qword_1004B08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B08C0);
  }

  return result;
}

unint64_t sub_100309218()
{
  result = qword_1004AAE30;
  if (!qword_1004AAE30)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAE30);
  }

  return result;
}

uint64_t sub_1003092A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AE138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Either<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v42 = a1;
  v43 = a2;
  v40 = *(a4 - 8);
  v7 = __chkstk_darwin(a1);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v9 - 8);
  __chkstk_darwin(v7);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v11;
  v12 = type metadata accessor for Either();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  v20 = __chkstk_darwin(TupleTypeMetadata2);
  v22 = &v34 - v21;
  v23 = *(v20 + 48);
  v24 = *(v13 + 16);
  v24(&v34 - v21, v42, v12);
  v24(&v22[v23], v43, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24(v18, v22, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = v39;
      v31 = v34;
      (*(v39 + 32))(v34, &v22[v23], a3);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v30 + 8);
      v32(v31, a3);
      v32(v18, a3);
      goto LABEL_9;
    }

    (*(v39 + 8))(v18, a3);
    goto LABEL_7;
  }

  v24(v16, v22, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v40 + 8))(v16, v41);
LABEL_7:
    v28 = 0;
    v13 = v38;
    v12 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v26 = v40;
  v25 = v41;
  v27 = v35;
  (*(v40 + 32))(v35, &v22[v23], v41);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v26 + 8);
  v29(v27, v25);
  v29(v16, v25);
LABEL_9:
  (*(v13 + 8))(v22, v12);
  return v28 & 1;
}