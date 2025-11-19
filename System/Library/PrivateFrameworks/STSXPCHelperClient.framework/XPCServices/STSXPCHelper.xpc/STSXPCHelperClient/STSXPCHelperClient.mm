void sub_100002540(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_100002550(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

STSWifiAwareConfiguration *sub_1000025D4(uint64_t a1, void *a2, BOOL a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  objc_opt_self();
  v8 = [STSWifiAwareConfiguration alloc];
  v9 = v7;
  v10 = v6;
  if (v8)
  {
    v19.receiver = v8;
    v19.super_class = STSWifiAwareConfiguration;
    v11 = objc_msgSendSuper2(&v19, "init");
    v8 = v11;
    if (v11)
    {
      v11->_publisher = a3;
      objc_storeStrong(&v11->_serviceName, a2);
      if (v10)
      {
        objc_storeStrong(&v8->_securityInfo, v10[1]);
        v12 = v10[2];
      }

      else
      {
        securityInfo = v8->_securityInfo;
        v8->_securityInfo = 0;

        v12 = 0;
      }

      objc_storeStrong(&v8->_channelInfo, v12);
      if (v10)
      {
        objc_storeStrong(&v8->_transportKey, v10[3]);
        v13 = v10[4];
      }

      else
      {
        transportKey = v8->_transportKey;
        v8->_transportKey = 0;

        v13 = 0;
      }

      objc_storeStrong(&v8->_peerDHInfo, v13);
      if (v10)
      {
        objc_storeStrong(&v8->_serviceSpecificInfo, v10[5]);
        v14 = v10[6];
      }

      else
      {
        serviceSpecificInfo = v8->_serviceSpecificInfo;
        v8->_serviceSpecificInfo = 0;

        v14 = 0;
      }

      objc_storeStrong(&v8->_portNumber, v14);
    }
  }

  return v8;
}

void sub_100002BE4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

_BYTE *sub_100002C74(_BYTE *a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = STSISO18013Handler;
    v6 = objc_msgSendSuper2(&v11, "init");
    a1 = v6;
    if (v6)
    {
      objc_storeWeak(v6 + 2, v5);
      a1[8] = a3;
      a1[11] = 0;
      v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
      v8 = v7;
      if (v5 && v5[13] == 1)
      {
        v9 = [v7 BOOLForKey:@"DisableEncryption"] ^ 1;
      }

      else
      {
        v9 = 1;
      }

      a1[9] = v9;
    }
  }

  return a1;
}

void *sub_100002D44(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[5];
    result[5] = 0;

    v3[3] = a2;
    return sub_100002D90(v3, v5);
  }

  return result;
}

void *sub_100002D90(void *a1, double a2)
{
  if (a1)
  {
    v4 = a1;
    sub_10003B8EC(a2);
    v5 = *(v3 + 1688);
    if (objc_opt_class() && (sub_10003B8C8(v8), v9 = *(v2 + 1680), objc_opt_class()))
    {
      v10 = v4[5];
      if (!v10)
      {
        v28 = *(v4 + 11);
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler idvSession]", 1017, v4, @"Creating presentment session, mode=%ld and isAcwg = %ld", v6, v7, v4[3]);
        v13 = v4[3];
        if (v13)
        {
          v14 = 0;
          if (*(v4 + 11))
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }
        }

        else
        {
          v15 = *(v4 + 9) ^ 1;
          v14 = 1;
        }

        sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSISO18013Handler idvSession]", 1037, v4, @"encMode=%lu, authPolicy=%lu", v11, v12, v15);
        v16 = [objc_alloc(*(v3 + 1688)) initWithSessionEncryptionMode:v15 readerAuthenticationPolicy:v14];
        v17 = v16;
        if (!v13)
        {
          [v16 setElementFallbackModes:2];
        }

        v18 = v4[3];
        if (v18 == 1)
        {
          if (*(v4 + 11))
          {
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }

          [v17 setMessageEncodingFormat:v19];
          v18 = v4[3];
        }

        if (v18)
        {
          v29 = @"ua";
          v20 = &v29;
        }

        else
        {
          v30 = @"identity";
          v20 = &v30;
        }

        v21 = [NSArray arrayWithObjects:v20 count:1];
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSISO18013Handler idvSession]", 1058, v4, @"partitionList=%@, dcOption=%@", v22, v23, v21);
        v24 = [objc_alloc(*(v2 + 1680)) initWithPartitions:v21 presentmentType:0 options:v17];
        v25 = v4[5];
        v4[5] = v24;

        v10 = v4[5];
      }

      a1 = v10;
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler idvSession]", 1012, v4, @"not implemented", v6, v7, v27);
      a1 = 0;
    }
  }

  return a1;
}

void sub_100002FCC(id *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    obj = a4;
    v7 = a3;
    v8 = a2;
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSISO18013Handler setConnectionHandoverDeviceEngagement:nfcHandoverRequest:nfcHandoverSelect:]", 132, a1, &stru_100059C08, v9, v10, v11);
    objc_storeWeak(a1 + 6, v8);

    objc_storeWeak(a1 + 7, v7);
    objc_storeWeak(a1 + 8, obj);
  }
}

void sub_100003088(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v8 = a3;
  if (a1)
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSISO18013Handler setUnifiedAccessIKM:endpointIdentifier:]", 141, a1, &stru_100059C08, v6, v7, v9);
    objc_storeStrong(a1 + 10, a2);
    objc_storeStrong(a1 + 11, a3);
  }
}

void sub_100003128(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v9 = sub_10001C008(ISOSessionEstablishment, v5);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_10001C594(ISOSessionData, v5);
    }

    v11 = *(a1 + 24);
    if (!v11)
    {
      if (v9)
      {
        if (*(a1 + 9))
        {
          v17 = v9[1];

          if (!v17)
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler processMDocRequest:callback:]", 159, a1, @"Missing reader key", v7, v8, v39);
            v40 = NSLocalizedDescriptionKey;
            v41 = off_100069A98;
            v32 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            v33 = 11;
            goto LABEL_34;
          }
        }
      }

      if (!*(a1 + 96) && v10)
      {
        v18 = @"No valid reader key before Session Data";
        v19 = 164;
LABEL_33:
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler processMDocRequest:callback:]", v19, a1, v18, v7, v8, v39);
        v40 = NSLocalizedDescriptionKey;
        v41 = off_100069A50;
        v32 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v33 = 2;
LABEL_34:
        v34 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:v33 userInfo:v32];

        (*(v6 + 2))(v6, 0, 0, v34, 1);
LABEL_42:

        goto LABEL_43;
      }

      v11 = *(a1 + 24);
    }

    if (v11 != 1 || [*(a1 + 80) length])
    {
      if (v9)
      {
        v12 = v9;
        v13 = v6;
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSISO18013Handler _processSessionEstablishment:callback:]", 193, a1, @"%@", v14, v15, v12);
        if (*(a1 + 24))
        {
          v16 = *(a1 + 96);
          *(a1 + 96) = 0;
        }

        else
        {
          v16 = v12[1];
          v28 = [NSData dataWithCOSEKey:v16];
          v29 = *(a1 + 96);
          *(a1 + 96) = v28;
        }

        v30 = sub_1000036F4(a1, *(a1 + 96));
        v31 = sub_10001C53C(NSData, v12);
        sub_1000039D0(a1, v31, v13);
      }

      else if (v10)
      {
        v10 = v10;
        v20 = v6;
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler _processSessionData:callback:]", 206, a1, @"SessionData=%@", v21, v22, v10);
        v23 = sub_10001C880(v10);
        if (v23 && (*(a1 + 10) & 1) == 0)
        {
          v25 = v23 == 20 || (v23 & 0xFFFFFFFFFFFFFFFELL) == 10;
          *(a1 + 10) = v25;
        }

        v26 = v10[1];

        if (v26)
        {
          v27 = sub_10001CBFC(NSData, v10);
          sub_1000039D0(a1, v27, v20);
        }

        else
        {
          if (*(a1 + 10))
          {
            v40 = NSLocalizedDescriptionKey;
            v41 = off_100069AC8;
            v36 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            v37 = 17;
          }

          else
          {
            v40 = NSLocalizedDescriptionKey;
            v41 = off_100069A98;
            v36 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            v37 = 11;
          }

          v38 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:v37 userInfo:v36];

          (*(v20 + 2))(v20, 0, 0, v38, 1);
        }
      }

      else
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler processMDocRequest:callback:]", 181, a1, @"Invalid Session Establishment or Session Data", v7, v8, v39);
        v40 = NSLocalizedDescriptionKey;
        v41 = off_100069A98;
        v35 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v10 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:11 userInfo:v35];

        (*(v6 + 2))(v6, 0, 0, v10, 1);
      }

      goto LABEL_42;
    }

    v18 = @"Missing IKM";
    v19 = 171;
    goto LABEL_33;
  }

LABEL_43:
}

id sub_1000036F4(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 11) == 1)
    {
      v4 = objc_alloc_init(NSData);
      v5 = *(a1 + 9);
      *(a1 + 9) = v4;

      v6 = *(a1 + 9);
LABEL_5:
      a1 = v6;
      goto LABEL_6;
    }

    v6 = *(a1 + 9);
    if (v6)
    {
      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v9 = objc_loadWeakRetained(a1 + 8);
    v10 = objc_loadWeakRetained(a1 + 7);
    v11 = objc_opt_new();
    v12 = [WeakRetained cborEncodeToBstrCbor];
    [v11 addObject:v12];

    if (!*(a1 + 3))
    {
      if (!v3)
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler generateSessionTranscriptBytesWithReaderKey:]", 901, a1, @"Missing reader ephemeral key; default to zero-length data", v13, v14, v26);
        v3 = objc_alloc_init(NSData);
      }

      v15 = [v3 cborEncodeToBstrCbor];
      [v11 addObject:v15];
    }

    if ([v9 length])
    {
      v16 = v10;
      if ([v10 length])
      {
        [CBOR cborWithData:v10];
      }

      else
      {
        +[CBOR cborNil];
      }
      v18 = ;
      v19 = [CBOR cborWithData:v9];
      v27[0] = v19;
      v27[1] = v18;
      v20 = [NSArray arrayWithObjects:v27 count:2];

      v21 = [CBOR cborWithArray:v20];
      [v11 addObject:v21];

      v10 = v16;
    }

    else
    {
      v17 = +[CBOR cborNil];
      [v11 addObject:v17];
    }

    v22 = [CBOR cborWithArray:v11];
    v23 = [NSData dataWithCBOR:v22];

    v24 = [v23 encodeToBstrCbor];
    v25 = *(a1 + 9);
    *(a1 + 9) = v24;

    a1 = *(a1 + 9);
  }

LABEL_6:

  return a1;
}

void sub_1000039D0(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  sub_10003B880(v8);
  v9 = *(v3 + 1664);
  if (objc_opt_class())
  {
    v10 = [objc_alloc(*(v3 + 1664)) initWithSessionEstablishment:v6 sessionTranscript:a1[9]];
    v12 = v10;
    if (a1[3] == 1)
    {
      [v10 setSessionEncryptionIntermediateKeyMaterial:a1[10]];
      [v12 setRequiredPublicKeyIdentifier:a1[11]];
    }

    v13 = sub_100002D90(a1, v11);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003C5C;
    v15[3] = &unk_1000588D0;
    v15[4] = a1;
    v16 = v7;
    [v13 interpretRequest:v12 completion:v15];
  }

  else
  {
    v17 = NSLocalizedDescriptionKey;
    v18 = off_100069A48;
    v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:1 userInfo:v14];

    (*(v7 + 2))(v7, 0, 0, v12, 1);
  }
}

void sub_100003BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = a2;
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler configureForACWGEngagement:]", 228, a1, @"isAcwg = %ld", a7, a8, a2);
    if (*(a1 + 11) != v8)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler configureForACWGEngagement:]", 230, a1, @" isAcwg param does not match stored value.", v10, v11, v15);
      v12 = *(a1 + 40);
      *(a1 + 40) = 0;

      *(a1 + 11) = v8;
      v14 = sub_100002D90(a1, v13);
    }
  }
}

void sub_100003C5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == -5104 || objc_msgSend(v7, "code") == -5105)
    {
      v68 = NSUnderlyingErrorKey;
      v69 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v9 = 14;
    }

    else
    {
      v66 = NSUnderlyingErrorKey;
      v67 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v9 = 10;
    }

    v33 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:v9 userInfo:v8];

    v34 = *(*(a1 + 40) + 16);
    goto LABEL_11;
  }

  if (![v5 count])
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler _interpretPresentmentRequest:callback:]_block_invoke", 274, *(a1 + 32), @"DCP returns 0 proposals", v10, v11, v53);
    v35 = *(a1 + 40);
    *&v71 = NSLocalizedDescriptionKey;
    v70[0] = off_100069A90;
    v36 = [NSDictionary dictionaryWithObjects:v70 forKeys:&v71 count:1];
    v33 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v36];

    v34 = *(v35 + 16);
LABEL_11:
    v34();
    goto LABEL_26;
  }

  v12 = objc_alloc_init(NSMutableArray);
  v13 = *(a1 + 32);
  v14 = v5;
  v60 = v5;
  v61 = v14;
  v59 = a1;
  v64 = v12;
  if (v13)
  {
    v15 = [v14 firstObject];
    v56 = v15;
    if (v15)
    {
      v16 = v15;
      v55 = [v15 readerAnalytics];
      v17 = [ReaderAnalyticsData alloc];
      v18 = [v55 isTrusted];
      v19 = [v55 untrustedIdentifier];
      v20 = [v55 untrustedOrganization];
      v21 = [v55 untrustedIssuerIdentifier];
      v22 = [v55 untrustedIssuerOrganization];
      obja = sub_10000DBB4(v17, v18, v19, v20, v21, v22);

      v23 = [v16 readerMetadata];
      v57 = [ISO18013ReaderAuthInfo alloc];
      v24 = [v23 identifier];
      v25 = [v23 organization];
      v26 = [v23 organizationalUnit];
      v54 = [v23 iconData];
      v27 = [v23 iconURL];
      v28 = [v23 iconMediaType];
      v29 = [v23 privacyPolicyURL];
      v30 = [v23 merchantCategoryCode];
      v31 = [v16 readerAuthCertificateData];
      v58 = sub_10000DFE0(&v57->super.isa, v24, v25, v26, v54, v27, v28, v29, v30, v31, obja);
      v32 = v58;

      v14 = v61;
    }

    else
    {
      v58 = 0;
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v14;
    v37 = [obj countByEnumeratingWithState:&v71 objects:v70 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v72;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v72 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v71 + 1) + 8 * i);
          v42 = objc_opt_new();
          v43 = [v41 elements];
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_100007610;
          v65[3] = &unk_1000589C0;
          v65[4] = v42;
          [v43 enumerateKeysAndObjectsUsingBlock:v65];

          v44 = [STSISO18013CredRequest alloc];
          v45 = [v41 credentialIdentifier];
          v46 = [v41 authACL];
          v47 = [v41 docType];
          v48 = sub_10000D838(&v44->super.super.isa, v45, v42, v46, v47);

          [v64 addObject:v48];
        }

        v38 = [obj countByEnumeratingWithState:&v71 objects:v70 count:16];
      }

      while (v38);
    }
  }

  else
  {
    v58 = 0;
  }

  v33 = v64;

  v49 = v58;
  v50 = *(v59 + 40);
  if (*(*(v59 + 32) + 10))
  {
    *&v71 = NSLocalizedDescriptionKey;
    v70[0] = off_100069AC8;
    v51 = [NSDictionary dictionaryWithObjects:v70 forKeys:&v71 count:1];
    v52 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:17 userInfo:v51];

    (*(v50 + 16))(v50, v64, v49, v52, 0);
  }

  else
  {
    (*(v50 + 16))(*(v59 + 40), v64, v49, 0, 0);
  }

  v5 = v60;

  v7 = 0;
LABEL_26:
}

void sub_100004344(void *a1, void *a2, void *a3)
{
  v84 = a2;
  v82 = a3;
  if (a1)
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSISO18013Handler interpretAndRespondToExchangeCommand:callback:]", 373, a1, @"encryptedRequestData = %@", v5, v6, v84);
    v105 = 0;
    v106 = &v105;
    v107 = 0x3032000000;
    v108 = sub_1000050D0;
    v109 = sub_1000050E0;
    v110 = 0;
    v99 = 0;
    v100 = &v99;
    v101 = 0x3032000000;
    v102 = sub_1000050D0;
    v103 = sub_1000050E0;
    v104 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = sub_1000050D0;
    v97 = sub_1000050E0;
    v98 = 0;
    v7 = dispatch_semaphore_create(0);
    v9 = sub_100002D90(a1, v8);
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_1000050E8;
    v89[3] = &unk_1000588F8;
    v91 = &v105;
    v92 = &v93;
    dsema = v7;
    v90 = dsema;
    [v9 interpretGenericDataRequest:v84 completion:v89];

    v10 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(dsema, v10))
    {
      v126 = NSLocalizedDescriptionKey;
      *v120 = off_100069A78;
      v13 = [NSDictionary dictionaryWithObjects:v120 forKeys:&v126 count:1];
      v14 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:7 userInfo:v13];

      v15 = v94[5];
      v94[5] = v14;
    }

    else
    {
      v18 = v94[5];
      if (!v18)
      {
LABEL_5:
        sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSISO18013Handler interpretAndRespondToExchangeCommand:callback:]", 400, a1, @"decryptedData %@", v11, v12, v106[5]);
        if (v94[5])
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler interpretAndRespondToExchangeCommand:callback:]", 403, a1, @"error=%@", v16, v17, v94[5]);
          v82[2](v82, 0, v94[5]);
LABEL_53:

          _Block_object_dispose(&v93, 8);
          _Block_object_dispose(&v99, 8);

          _Block_object_dispose(&v105, 8);
          goto LABEL_54;
        }

        v21 = v106[5];
        if (!v21)
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler interpretAndRespondToExchangeCommand:callback:]", 407, a1, @"Nothing decrypted", v16, v17, v78);
          v126 = NSLocalizedDescriptionKey;
          *v120 = off_100069A90;
          v43 = [NSDictionary dictionaryWithObjects:v120 forKeys:&v126 count:1];
          v44 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v43];

          v82[2](v82, 0, v44);
LABEL_52:

          goto LABEL_53;
        }

        v81 = v21;
        if (os_variant_has_internal_ui())
        {
          v22 = [v81 length];
          v23 = v81;
          v24 = [v81 bytes];
          [v81 length];
          sub_100024A04(OS_LOG_TYPE_INFO, 0, "[STSISO18013Handler _extractContentFromTag97:]", 314, "%s %lu bytes", v25, v26, v27, "apduPayload=");
          if (v22)
          {
            v28 = 0;
            do
            {
              v29 = 0;
              v30 = &v120[__sprintf_chk(v120, 0, 0x30uLL, "%04lX: ", v28)];
              do
              {
                v31 = __sprintf_chk(v30, 0, 0xFFFFFFFFFFFFFFFFLL, "0x%02X ", v24[v28++]);
                if (v29 > 6)
                {
                  break;
                }

                v30 += v31;
                ++v29;
              }

              while (v28 < v22);
              sub_100024A04(OS_LOG_TYPE_INFO, 0, "[STSISO18013Handler _extractContentFromTag97:]", 314, "%s", v32, v33, v34, v120);
            }

            while (v28 < v22);
          }
        }

        v35 = v81;
        v36 = [v81 bytes];
        v37 = [v81 length];
        if (v37 >= 2)
        {
          while (1)
          {
            v40 = v36[1];
            v41 = v37 - 2;
            v42 = v37 - 2 >= v40;
            v37 = v37 - 2 - v40;
            if (!v42)
            {
              sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler _extractContentFromTag97:]", 330, a1, @"Not enough room for TLV: %ld expected %d", v38, v39, v41);
              goto LABEL_35;
            }

            if (*v36 == 151)
            {
              break;
            }

            v36 += v40 + 2;
            if (v37 <= 1)
            {
              goto LABEL_35;
            }
          }

          if (v40 == 2)
          {
            v45 = v36[2];
            v46 = v36[3];
            sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler _extractContentFromTag97:]", 353, a1, @"Byte1 :%d, Byte2 = %d", v38, v39, v45);
            if (v45)
            {
              if (v45 == 1)
              {
                if (v46 >= 6)
                {
                  v49 = 6;
                }

                else
                {
                  v49 = v46;
                }

                v50 = off_100058890[v49];
              }

              else
              {
                v50 = @"Invalid Error";
              }

              sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler _extractContentFromTag97:]", 359, a1, @"Success reported in Exchange status %d:%@", v47, v48, v46);
              v52 = 0;
            }

            else
            {
              if (v46 >= 0xE)
              {
                v74 = 14;
              }

              else
              {
                v74 = v46;
              }

              v50 = off_100058818[v74];
              sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler _extractContentFromTag97:]", 356, a1, @"Error reported in Exchange status %d:%@", v75, v76, v46);
              v126 = NSLocalizedDescriptionKey;
              *v120 = off_100069AE8;
              v77 = [NSDictionary dictionaryWithObjects:v120 forKeys:&v126 count:1];
              v52 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:21 userInfo:v77];
            }

LABEL_36:
            v53 = v94[5];
            v94[5] = v52;

            if (v94[5])
            {
              sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler interpretAndRespondToExchangeCommand:callback:]", 419, a1, @"Error extracting Tag97", v54, v55, v79);
              v56 = &unk_100042914;
            }

            else
            {
              v56 = &unk_100042910;
            }

            v44 = [NSData dataWithBytes:v56 length:4];
            *v120 = 0;
            v121 = v120;
            v122 = 0x3032000000;
            v123 = sub_1000050D0;
            v124 = sub_1000050E0;
            v125 = 0;
            v58 = sub_100002D90(a1, v57);
            v85[0] = _NSConcreteStackBlock;
            v85[1] = 3221225472;
            v85[2] = sub_100005184;
            v85[3] = &unk_1000588F8;
            v87 = &v99;
            v88 = v120;
            v59 = dsema;
            v86 = v59;
            [v58 buildGenericDataResponse:v44 completion:v85];

            v60 = dispatch_time(0, 5000000000);
            if (dispatch_semaphore_wait(v59, v60))
            {
              v119 = NSLocalizedDescriptionKey;
              v126 = off_100069A78;
              v63 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v119 count:1];
              v64 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:7 userInfo:v63];

              v65 = *(v121 + 5);
              *(v121 + 5) = v64;
            }

            else
            {
              v68 = *(v121 + 5);
              if (!v68)
              {
                goto LABEL_42;
              }

              if ([v68 code] == -5005)
              {
                v113 = NSUnderlyingErrorKey;
                v114 = *(v121 + 5);
                v65 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
                [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:19 userInfo:v65];
              }

              else
              {
                v111 = NSUnderlyingErrorKey;
                v112 = *(v121 + 5);
                v65 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
                [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v65];
              }
              v69 = ;

              v70 = *(v121 + 5);
              *(v121 + 5) = v69;
            }

LABEL_42:
            sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSISO18013Handler interpretAndRespondToExchangeCommand:callback:]", 450, a1, @"encryptedResponse %@", v61, v62, v100[5]);
            if (*(v121 + 5))
            {
              sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler interpretAndRespondToExchangeCommand:callback:]", 453, a1, @"error=%@", v66, v67, *(v121 + 5));
              v82[2](v82, 0, v94[5]);
            }

            else
            {
              v71 = v100[5];
              if (v71)
              {
                v82[2](v82, v71, v94[5]);
              }

              else
              {
                sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler interpretAndRespondToExchangeCommand:callback:]", 457, a1, @"Nothing encrypted", v66, v67, v80);
                v119 = NSLocalizedDescriptionKey;
                v126 = off_100069A90;
                v72 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v119 count:1];
                v73 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v72];

                v82[2](v82, 0, v73);
              }
            }

            _Block_object_dispose(v120, 8);
            goto LABEL_52;
          }

          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler _extractContentFromTag97:]", 341, a1, @"Invalid address length : %d", v38, v39, v36[1]);
        }

LABEL_35:
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler _extractContentFromTag97:]", 362, a1, @"Tag97 not found", v38, v39, v78);
        v126 = NSLocalizedDescriptionKey;
        *v120 = off_100069AE0;
        v51 = [NSDictionary dictionaryWithObjects:v120 forKeys:&v126 count:1];
        v52 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:20 userInfo:v51];

        goto LABEL_36;
      }

      if ([v18 code] == -5005)
      {
        v117 = NSUnderlyingErrorKey;
        v118 = v94[5];
        v15 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:19 userInfo:v15];
      }

      else
      {
        v115 = NSUnderlyingErrorKey;
        v116 = v94[5];
        v15 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v15];
      }
      v19 = ;

      v20 = v94[5];
      v94[5] = v19;
    }

    goto LABEL_5;
  }

LABEL_54:
}

void sub_100005078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose((v41 - 168), 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000050D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000050E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005184(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void *sub_100005220(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_1000050D0;
    v43 = sub_1000050E0;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_1000050D0;
    v37 = sub_1000050E0;
    v38 = 0;
    v4 = dispatch_semaphore_create(0);
    v6 = sub_100002D90(v2, v5);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000056CC;
    v29[3] = &unk_1000588F8;
    v31 = &v39;
    v32 = &v33;
    v7 = v4;
    v30 = v7;
    [v6 generateTransportKeyForSpecification:1 completion:v29];

    v8 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v7, v8))
    {
      v47 = NSLocalizedDescriptionKey;
      v48 = off_100069A78;
      v9 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v10 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:7 userInfo:v9];

      v11 = v34[5];
      v34[5] = v10;
    }

    else
    {
      v12 = v34[5];
      if (!v12)
      {
        goto LABEL_9;
      }

      v45[0] = NSLocalizedDescriptionKey;
      v45[1] = NSUnderlyingErrorKey;
      v46[0] = @"Key generation error";
      v46[1] = v12;
      v11 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
      v13 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:9 userInfo:v11];
      v14 = v34[5];
      v34[5] = v13;
    }

    if (v34[5])
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler generateEphemeralDeviceCOSEKey:]", 494, v2, @"error=%@", v15, v16, v34[5]);
      v2 = 0;
      if (a2)
      {
        *a2 = v34[5];
      }

      goto LABEL_16;
    }

LABEL_9:
    v17 = [COSEKey alloc];
    v18 = [v17 initWithData:v40[5]];
    if ([v18 type] == 2)
    {
      v21 = [NSData dataWithCOSEKey:v18];
      v22 = v40[5];
      v40[5] = v21;

      sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSISO18013Handler generateEphemeralDeviceCOSEKey:]", 508, v2, @"DeviceKey=%@", v23, v24, v18);
      v2 = v40[5];
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler generateEphemeralDeviceCOSEKey:]", 501, v2, @"Unexpected key type generated, key=%@", v19, v20, v18);
      if (a2)
      {
        v47 = NSLocalizedDescriptionKey;
        v48 = off_100069A98;
        v25 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v26 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:11 userInfo:v25];

        v27 = v26;
        v2 = 0;
        *a2 = v26;
      }

      else
      {
        v2 = 0;
      }
    }

LABEL_16:
    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v39, 8);
  }

  return v2;
}

void sub_10000569C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000056CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005768(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v9 = a3;
  if (a1)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSISO18013Handler processCredentialSelect:callback:]", 520, a1, &stru_100059C08, v7, v8, v24[0]);
    if (v6)
    {
      sub_10003B8A4(v10);
      v11 = *(v3 + 1672);
      if (objc_opt_class())
      {
        v12 = objc_alloc(*(v3 + 1672));
        v13 = v6[1];
        v14 = v6[2];
        v15 = v6[3];
        WeakRetained = objc_loadWeakRetained(a1 + 2);
        v17 = WeakRetained;
        if (WeakRetained)
        {
          v18 = *(WeakRetained + 5);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        v20 = [v12 initWithCredentialIdentifier:v13 elementsToPresent:v14 authData:v15 seAccessEndpoint:v19];

        v22 = sub_100002D90(a1, v21);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100005B04;
        v24[3] = &unk_100058970;
        v24[4] = a1;
        v25 = v9;
        [v22 buildResponseForSelection:v20 completion:v24];
      }

      else
      {
        v28 = NSLocalizedDescriptionKey;
        v29 = off_100069A48;
        v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v20 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:1 userInfo:v23];

        (*(v9 + 2))(v9, 0, v20);
      }
    }

    else
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100005A2C;
      v26[3] = &unk_100058920;
      v27 = v9;
      sub_100005A40(a1, 20, v26);
      v20 = v27;
    }
  }
}

void sub_100005A40(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v7 = sub_100002D90(a1, v6);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000077E8;
    v8[3] = &unk_100058998;
    v8[4] = a1;
    v10 = a2;
    v9 = v5;
    [v7 buildErrorResponseWithStatus:0 completion:v8];
  }
}

void sub_100005B04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  sub_10002483C(OS_LOG_TYPE_INFO, 1, "[STSISO18013Handler processCredentialSelect:callback:]_block_invoke_2", 546, *(a1 + 32), @"In idvSession:buildResponseForSelection:completion .response = %@ error = %@", v7, v8, v5);
  if (v6)
  {
    v17 = NSUnderlyingErrorKey;
    v18 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v9];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100005CA8;
    v14[3] = &unk_100058948;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v15 = v10;
    v16 = v12;
    v13 = v10;
    sub_100005A40(v11, 20, v14);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id sub_100005CBC(uint64_t a1, void *a2, double a3)
{
  if (a1)
  {
    sub_10003B838(a3);
    v6 = *(v3 + 1696);
    if (objc_opt_class())
    {
      v7 = [objc_alloc(*(v3 + 1696)) initWithRole:0 curve:0 variant:*(a1 + 24) != 0];
      v8 = *(a1 + 32);
      *(a1 + 32) = v7;

      v9 = [*(a1 + 32) publicKey];
      v10 = [v9 length] >> 1;

      v11 = [*(a1 + 32) publicKey];
      v12 = [v11 subdataWithRange:{0, v10}];

      v13 = [*(a1 + 32) publicKey];
      v14 = [v13 subdataWithRange:{v10, v10}];

      v15 = [[COSEKey alloc] initEC2WithAlgorithm:0 curveIdentifier:1 x:v12 y:v14 d:0 keyOperations:0 keyIdentifier:0];
      v16 = [NSData dataWithCOSEKey:v15];
      v17 = sub_10000A080(v15);
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSISO18013Handler generateEphemeralReaderKey:]", 595, a1, @"EC2 type ReaderKey=%@", v18, v19, v17);
    }

    else
    {
      v24 = NSLocalizedDescriptionKey;
      v25 = off_100069A48;
      v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v21 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:1 userInfo:v20];

      v22 = v21;
      v16 = 0;
      *a2 = v21;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id sub_100005F08(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    v8 = sub_10000A080(v6);
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler generateEphemeralReaderKeyBasedOfDeviceCOSEKey:error:]", 608, a1, @"deviceCOSEKey=%@", v9, v10, v8);

    sub_10003B85C(v11);
    v12 = *(v3 + 1696);
    if (objc_opt_class())
    {
      if ([v7 type] == 2)
      {
        v13 = [v7 ecCurveIdentifier];
        v14 = [v13 intValue];

        v15 = v14 - 1;
        if (v15 >= 3)
        {
          v16 = [v7 ecCurveIdentifier];
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler generateEphemeralReaderKeyBasedOfDeviceCOSEKey:error:]", 632, a1, @"Unsupported EC Curve Identifier %@. ", v17, v18, v16);
LABEL_19:

          goto LABEL_20;
        }

        goto LABEL_12;
      }

      if ([v7 type] == 1)
      {
        v19 = [v7 okpCurveIdentifier];
        v20 = [v19 intValue];

        if (v20 == 4)
        {
          v15 = 3;
        }

        else
        {
          if (v20 != 5)
          {
            v16 = [v7 okpCurveIdentifier];
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler generateEphemeralReaderKeyBasedOfDeviceCOSEKey:error:]", 647, a1, @"Unsupported OKP Curve Identifier %@. ", v45, v46, v16);
            goto LABEL_19;
          }

          v15 = 4;
        }

LABEL_12:
        v24 = [objc_alloc(*(v3 + 1696)) initWithRole:0 curve:v15 variant:*(a1 + 24) != 0];
        v25 = *(a1 + 32);
        *(a1 + 32) = v24;

        if ([v7 type] == 2)
        {
          v26 = [*(a1 + 32) publicKey];
          v27 = [v26 length] >> 1;

          v28 = [*(a1 + 32) publicKey];
          v29 = [v28 subdataWithRange:{0, v27}];

          v30 = [*(a1 + 32) publicKey];
          v31 = [v30 subdataWithRange:{v27, v27}];

          v32 = [COSEKey alloc];
          v33 = [v7 ecCurveIdentifier];
          v34 = [v32 initEC2WithAlgorithm:0 curveIdentifier:objc_msgSend(v33 x:"intValue") y:v29 d:v31 keyOperations:0 keyIdentifier:{0, 0}];

          v35 = sub_10000A080(v34);
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSISO18013Handler generateEphemeralReaderKeyBasedOfDeviceCOSEKey:error:]", 675, a1, @"EC2 type ReaderKey=%@", v36, v37, v35);

          a1 = [NSData dataWithCOSEKey:v34];
        }

        else
        {
          if ([v7 type] != 1)
          {
            a1 = 0;
            goto LABEL_21;
          }

          v38 = [COSEKey alloc];
          v39 = [v7 okpCurveIdentifier];
          v40 = [v39 intValue];
          v41 = [*(a1 + 32) publicKey];
          v29 = [v38 initOKPWithAlgorithm:0 curveIdentifier:v40 x:v41 d:0 keyOperations:0 keyIdentifier:0];

          v42 = sub_10000A080(v29);
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSISO18013Handler generateEphemeralReaderKeyBasedOfDeviceCOSEKey:error:]", 684, a1, @"OKP type ReaderKey=%@", v43, v44, v42);

          a1 = [NSData dataWithCOSEKey:v29];
        }

        goto LABEL_21;
      }

      v21 = [v7 type];
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler generateEphemeralReaderKeyBasedOfDeviceCOSEKey:error:]", 652, a1, @"Unsupported Curve Identifier with type %d. ", v22, v23, v21);
    }

LABEL_20:
    v51 = NSLocalizedDescriptionKey;
    v52 = off_100069A48;
    v47 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v48 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:1 userInfo:v47];

    v49 = v48;
    a1 = 0;
    *a3 = v48;
  }

LABEL_21:

  return a1;
}

void sub_1000063BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = sub_10001C594(ISOSessionData, v7);
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler processMDocResponse:deviceCOSEKey:callback:]", 701, a1, @"SessionData=%@", v11, v12, v10);
    v13 = sub_10001C880(v10);
    if (v13)
    {
      v14 = v13;
      v17 = [[NSNumber alloc] initWithUnsignedInteger:v13];
      if (v14 != 20)
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler processMDocResponse:deviceCOSEKey:callback:]", 711, a1, @"response contains failure status: %lu", v15, v16, v14);
        v18 = sub_1000069EC(a1, v7);
        v9[2](v9, v7, v17, v18, 0);
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }
    }

    else
    {
      v17 = 0;
    }

    if (*(a1 + 9) != 1)
    {
      if (v10)
      {
        v24 = v10[1];
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler processMDocResponse:deviceCOSEKey:callback:]", 757, a1, @"Encryption not enabled data: %@", v26, v27, v25);

      if (v10)
      {
        v28 = v10[1];
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      v9[2](v9, v29, 0, 0, 0);

      goto LABEL_28;
    }

    v60 = v8;
    v18 = [[COSEKey alloc] initWithData:v8];
    v19 = sub_10000A080(v18);
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSISO18013Handler processMDocResponse:deviceCOSEKey:callback:]", 719, a1, @"DeviceKey=%@", v20, v21, v19);

    v22 = objc_opt_new();
    if ([v18 type] == 2)
    {
      v23 = [v18 ecCurveX];
      [v22 appendData:v23];

      [v18 ecCurveY];
    }

    else
    {
      [v18 okpCurveX];
    }
    v30 = ;
    [v22 appendData:v30];

    v31 = *(a1 + 32);
    v63 = 0;
    v32 = v31;
    v59 = v22;
    v33 = [v32 setRemoteKey:v22 error:&v63];
    v34 = v63;

    if (v33)
    {
      v58 = v17;
      v37 = *(a1 + 32);
      v38 = *(a1 + 72);
      v62 = v34;
      v39 = v38;
      v40 = v37;
      v41 = [v40 deriveSessionKeysFromSessionTranscript:v39 error:&v62];
      v42 = v62;

      if (v41)
      {
        v45 = *(a1 + 32);
        if (v10)
        {
          v46 = v10[1];
        }

        else
        {
          v46 = 0;
        }

        v47 = v46;
        v61 = v42;
        v48 = [v45 decryptData:v47 error:&v61];
        v49 = v61;

        if (v49)
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler processMDocResponse:deviceCOSEKey:callback:]", 746, a1, @"error=%@", v50, v51, v49);
          v64 = NSLocalizedDescriptionKey;
          v65 = off_100069A90;
          v52 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          v53 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v52];

          v54 = 0;
        }

        else
        {
          v54 = sub_1000069EC(a1, v48);
          v53 = 0;
        }

        v8 = v60;
        v17 = v58;
        (v9)[2](v9, v48, v58, v54, v53);

        goto LABEL_26;
      }

      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler processMDocResponse:deviceCOSEKey:callback:]", 737, a1, @"error=%@", v43, v44, v42);
      v64 = NSLocalizedDescriptionKey;
      v65 = off_100069A90;
      v57 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v56 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v57];

      v34 = v42;
      v8 = v60;
      v17 = v58;
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler processMDocResponse:deviceCOSEKey:callback:]", 731, a1, @"error=%@", v35, v36, v34);
      v64 = NSLocalizedDescriptionKey;
      v65 = off_100069A90;
      v55 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v56 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v55];

      v8 = v60;
    }

    (v9)[2](v9, 0, 0, 0, v56);

LABEL_26:
    goto LABEL_27;
  }

LABEL_29:
}

id sub_1000069EC(void *a1, uint64_t a2)
{
  v3 = [CBOR decodeFromData:a2];
  v6 = v3;
  if (v3)
  {
    v7 = [v3 dictionary];
    v8 = [CBOR cborWithUTF8String:@"version"];
    v9 = [v7 objectForKey:v8];

    if (v9 && [v9 type] == 3 && (objc_msgSend(v9, "string"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"1.0"), v12, (v13 & 1) != 0))
    {
      v14 = [v6 dictionary];
      v15 = [CBOR cborWithUTF8String:@"status"];
      v16 = [v14 objectForKey:v15];

      if (v16 && ([v16 isWholeNumber] & 1) != 0)
      {
        v19 = [v16 numeric];
      }

      else
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler _extractDeviceResponseStatus:]", 1106, a1, @"Invalid DeviceResponse status", v17, v18, v21);
        v19 = 0;
      }
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler _extractDeviceResponseStatus:]", 1100, a1, @"Invalid DeviceResponse version", v10, v11, v21);
      v19 = 0;
    }
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler _extractDeviceResponseStatus:]", 1094, a1, @"Decode failure", v4, v5, v21);
    v19 = 0;
  }

  return v19;
}

id sub_100006BBC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = [[COSEKey alloc] initWithData:v8];

  if ([v9 type] == 2 || objc_msgSend(v9, "type") == 1)
  {
    v10 = objc_opt_new();
    if ([v9 type] == 2)
    {
      v11 = [v9 ecCurveX];
      [v10 appendData:v11];

      [v9 ecCurveY];
    }

    else
    {
      [v9 okpCurveX];
    }
    v12 = ;
    [v10 appendData:v12];

    v13 = a1[4];
    v46 = 0;
    v14 = v13;
    v15 = [v14 setRemoteKey:v10 error:&v46];
    v16 = v46;

    if (v15)
    {
      v19 = a1[4];
      v20 = a1[9];
      v45 = v16;
      v21 = v20;
      v22 = v19;
      v23 = [v22 deriveSessionKeysFromSessionTranscript:v21 error:&v45];
      v24 = v45;

      if (v23)
      {
        v27 = a1[4];
        v44 = v24;
        v28 = v27;
        v29 = [v28 encryptData:v7 error:&v44];
        v30 = v44;

        v31 = v29;
        *a4 = v29;
        if (v30)
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler _encryptWithDeviceCOSEKey:inputData:encryptedData:]", 795, a1, @"error=%@", v32, v33, v30);
          v47 = NSLocalizedDescriptionKey;
          v48 = off_100069A90;
          v34 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v35 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v34];
        }

        else
        {
          v35 = 0;
        }

        v16 = v35;
        v37 = v16;
      }

      else
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler _encryptWithDeviceCOSEKey:inputData:encryptedData:]", 789, a1, @"error=%@", v25, v26, v24);
        v47 = NSLocalizedDescriptionKey;
        v48 = off_100069A90;
        v42 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v37 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v42];

        v16 = v24;
      }
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler _encryptWithDeviceCOSEKey:inputData:encryptedData:]", 785, a1, @"error=%@", v17, v18, v16);
      v47 = NSLocalizedDescriptionKey;
      v48 = off_100069A90;
      v36 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v37 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v36];
    }
  }

  else
  {
    v38 = [v9 type];
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler _encryptWithDeviceCOSEKey:inputData:encryptedData:]", 769, a1, @"Unsupported key type=%d", v39, v40, v38);
    v47 = NSLocalizedDescriptionKey;
    v48 = off_100069A90;
    v41 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v37 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:10 userInfo:v41];
  }

  return v37;
}

void sub_100007080(_BYTE *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    if (![v10 length] || !objc_msgSend(v11, "length"))
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler generateSessionEstablishment:readerCOSEKey:deviceCOSEKey:callback:]", 813, a1, @"Missing required keys", v13, v14, v27);
      v29 = NSLocalizedDescriptionKey;
      v30 = off_100069A68;
      v21 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v20 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:5 userInfo:v21];

      v12[2](v12, 0, v20);
LABEL_14:

      goto LABEL_15;
    }

    v15 = sub_1000036F4(a1, v10);
    v18 = [[COSEKey alloc] initWithData:v10];
    if (a1[9])
    {
      v28 = 0;
      v19 = sub_100006BBC(a1, v11, v9, &v28);
      v20 = v28;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler generateSessionEstablishment:readerCOSEKey:deviceCOSEKey:callback:]", 826, a1, @"Session encryption disabled", v16, v17, v27);
      v20 = v9;
    }

    if ([v20 length])
    {
      v22 = sub_10001C230([ISOSessionEstablishment alloc], v18, v20);
      v23 = [v22 description];
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSISO18013Handler generateSessionEstablishment:readerCOSEKey:deviceCOSEKey:callback:]", 834, a1, @"ISOSessionEstablishment=%@", v24, v25, v23);

      v26 = sub_10001C53C(NSData, v22);

      v19 = 0;
LABEL_13:
      (v12)[2](v12, v26, v19);

      goto LABEL_14;
    }

    v19 = 0;
LABEL_12:
    v26 = 0;
    goto LABEL_13;
  }

LABEL_15:
}

void sub_100007348(_BYTE *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    if (![v11 length])
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler generateSessionData:status:deviceCOSEKey:callback:]", 852, a1, @"Missing required keys", v13, v14, v22);
      v23 = NSLocalizedDescriptionKey;
      v24 = off_100069A68;
      v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v16 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:5 userInfo:v19];

      v12[2](v12, 0, v16);
LABEL_18:

      goto LABEL_19;
    }

    if (a1[9] == 1 && [v9 length])
    {
      v22 = 0;
      v15 = sub_100006BBC(a1, v11, v9, &v22);
      v16 = v22;
      if (v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = v9;
    }

    v17 = [v16 length];
    if (v10 || v17)
    {
      if (v10)
      {
        v20 = [v10 unsignedIntegerValue];
      }

      else
      {
        v20 = 0;
      }

      v21 = sub_10001C7DC([ISOSessionData alloc], v16, v20);
      v18 = sub_10001CBFC(NSData, v21);

      v15 = 0;
      goto LABEL_17;
    }

    v15 = 0;
LABEL_11:
    v18 = 0;
LABEL_17:
    (v12)[2](v12, v18, v15);

    goto LABEL_18;
  }

LABEL_19:
}

void sub_10000759C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    *(a1 + 40) = 0;

    objc_storeWeak((a1 + 48), 0);
    objc_storeWeak((a1 + 64), 0);
    objc_storeWeak((a1 + 56), 0);
    v3 = *(a1 + 72);
    *(a1 + 72) = 0;

    v4 = *(a1 + 96);
    *(a1 + 96) = 0;

    *(a1 + 10) = 0;
  }
}

void sub_100007610(uint64_t a1, void *a2, void *a3)
{
  v17 = a1;
  v18 = a2;
  v4 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 intentToRetain] == 1)
        {
          v12 = 1;
        }

        else if ([v11 intentToRetain] == 2)
        {
          v12 = 2;
        }

        else if ([v11 intentToRetain] == 3)
        {
          v12 = 3;
        }

        else
        {
          v12 = 0;
        }

        v13 = [ISO18013RequestElement alloc];
        v14 = [v11 elementIdentifier];
        v15 = sub_10000D6B4(v13, v14, v12);

        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [v5 copy];
  [*(v17 + 32) setObject:v16 forKeyedSubscript:v18];
}

void sub_1000077E8(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (a3)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSISO18013Handler generateSessionDataErrorResponse:completion:]_block_invoke", 1074, *(a1 + 32), @"Error in building DeviceResponse: %@", v5, v6, a3);
  }

  v7 = sub_10001C7DC([ISOSessionData alloc], v9, *(a1 + 48));
  v8 = sub_10001CBFC(NSData, v7);
  (*(*(a1 + 40) + 16))();
}

_BYTE *sub_100007948(_BYTE *result, char a2)
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = ReaderPeripheral;
    result = objc_msgSendSuper2(&v3, "initWithWorkQueue:callbackQueue:");
    if (result)
    {
      result[136] = a2;
    }
  }

  return result;
}

id sub_1000079A4(id result, uint64_t a2)
{
  if (result)
  {
    v2.receiver = result;
    v2.super_class = ReaderPeripheral;
    return objc_msgSendSuper2(&v2, "writeData:toUUID:", a2, @"00000007-A123-48CE-896B-4C76973373E6");
  }

  return result;
}

void *sub_100008DD4()
{
  objc_opt_self();
  v0 = [ISOKey alloc];
  if (!v0)
  {
    goto LABEL_5;
  }

  v10.receiver = v0;
  v10.super_class = ISOKey;
  v1 = objc_msgSendSuper2(&v10, "init");
  if (!v1)
  {
    goto LABEL_7;
  }

  ccrng();
  v2 = ccec_cp_256();
  v3 = [[NSMutableData alloc] initWithLength:(32 * *v2) | 0x10];
  v4 = [v3 mutableBytes];
  v1[3] = v4;
  *v4 = v2;
  key = ccec_generate_key();
  if (key)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOKey initWithRandomEC]", 72, v1, @"Random key generaiton error: %d", v6, v7, key);

LABEL_5:
    v1 = 0;
    goto LABEL_7;
  }

  v8 = v1[2];
  v1[1] = 0;
  v1[2] = v3;

  *(v1 + 32) = 1;
LABEL_7:

  return v1;
}

id sub_100008EF8(id a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (a1)
  {
    if (!v3)
    {
      v14 = @"Invalid X963 key input";
      v15 = 205;
      goto LABEL_10;
    }

    v18.receiver = a1;
    v18.super_class = ISOKey;
    a1 = objc_msgSendSuper2(&v18, "init");
    if (a1)
    {
      v7 = [v6 length] - 1;
      v8 = ccec_cp_256();
      if (v7 == (16 * *v8) || (v8 = ccec_cp_384(), v7 == (16 * *v8)) || (v8 = ccec_cp_521(), v7 == (16 * *v8)))
      {
        v9 = v8;
        v10 = [[NSMutableData alloc] initWithLength:24 * *v8 + 16];
        v11 = [v10 mutableBytes];
        *(a1 + 3) = v11;
        *v11 = v9;
        [v6 length];
        [v6 bytes];
        if (!ccec_x963_import_pub())
        {
          v17 = *(a1 + 2);
          *(a1 + 1) = 0;
          *(a1 + 2) = v10;

          *(a1 + 32) = 0;
          goto LABEL_12;
        }

        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOKey initWithECPublicKeyX963:]", 235, a1, @"Key import error: x963 EC key not supported", v12, v13, v18.receiver);

        goto LABEL_11;
      }

      v14 = @"Key import error: x963 EC key not supported";
      v15 = 220;
LABEL_10:
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOKey initWithECPublicKeyX963:]", v15, a1, v14, v4, v5, v18.receiver);
LABEL_11:

      a1 = 0;
    }
  }

LABEL_12:

  return a1;
}

const __CFData *sub_1000090A0(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    error = 0;
    v8 = SecKeyCopyExternalRepresentation(*(a1 + 16), &error);
    v11 = v8;
    if (error)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOKey publicKey]", 335, a1, @"publicKey error: %@", v9, v10, error);
      CFRelease(error);
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }

    goto LABEL_14;
  }

  if (v2)
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    if (*(a1 + 32) == 1)
    {
      v3 = *(a1 + 24);
      v4 = [NSMutableData alloc];
      v5 = *v3;
      v6 = [v4 initWithLength:((cczp_bitlen() + 7) >> 2) | 1];
      v7 = v6;
    }

    else
    {
      v12 = [NSMutableData alloc];
      v13 = **(a1 + 24);
      v6 = [v12 initWithLength:((cczp_bitlen() + 7) >> 2) | 1];
      v7 = v6;
      v14 = *(a1 + 24);
    }

    [(__CFData *)v6 mutableBytes];
    ccec_export_pub();
    if (!v7)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISOKey publicKey]", 324, a1, @"Fail to get public key", v15, v16, v18);
    }
  }

LABEL_14:

  return v7;
}

id sub_10000921C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  if (a3 == 2)
  {
    CC_SHA512([v4 bytes], objc_msgSend(v4, "length"), md);
    v5 = 64;
  }

  else if (a3 == 1)
  {
    CC_SHA384([v4 bytes], objc_msgSend(v4, "length"), md);
    v5 = 48;
  }

  else
  {
    if (!a3)
    {
      CC_SHA256([v4 bytes], objc_msgSend(v4, "length"), md);
    }

    v5 = 32;
  }

  v6 = [NSData dataWithBytes:md length:v5];

  return v6;
}

void *sub_10000935C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a3;
  objc_opt_self();
  if (v7)
  {
    v9 = v7[1];
    switch(v9)
    {
      case 2:
        if (a5)
        {
          v23 = off_100069B28;
          v41 = NSLocalizedFailureReasonErrorKey;
          v42 = @"Not implemented";
          v24 = &v42;
          v25 = &v41;
LABEL_19:
          v26 = [NSDictionary dictionaryWithObjects:v24 forKeys:v25 count:1];
          *a5 = [NSError errorWithDomain:v23 code:2 userInfo:v26];

          goto LABEL_20;
        }

        break;
      case 1:
LABEL_20:
        v15 = 0;
        goto LABEL_21;
      case 0:
        goto LABEL_5;
      default:
        if (a5)
        {
          v23 = off_100069B28;
          v39 = NSLocalizedFailureReasonErrorKey;
          v40 = @"Compute shared secret failure: Invalid key type";
          v24 = &v40;
          v25 = &v39;
          goto LABEL_19;
        }

        break;
    }

    v15 = 0;
    goto LABEL_22;
  }

LABEL_5:
  if (!v8 || v8[1] || (v16 = v8[3]) == 0)
  {
    v10 = sub_1000090A0(v8);
    v11 = [v10 length] - 1;
    v12 = ccec_cp_256();
    v13 = *v12;
    if (v11 == (24 * *v12) || (v12 = ccec_cp_384(), v13 = *v12, v11 == (24 * *v12)) || (v12 = ccec_cp_521(), v13 = *v12, v11 == (24 * *v12)))
    {
      v14 = v12;
      v15 = [[NSMutableData alloc] initWithLength:(32 * v13) | 0x10];
      v16 = [v15 mutableBytes];
      *v16 = v14;
      [v10 length];
      [v10 bytes];
      v17 = ccec_import_pub();
      v18 = v17;
      if (!a5 || !v17)
      {

        if (!v18)
        {
          goto LABEL_29;
        }

LABEL_21:
        a5 = 0;
        goto LABEL_22;
      }

      v19 = off_100069B28;
      v47 = NSLocalizedFailureReasonErrorKey;
      v20 = [NSString stringWithFormat:@"Compute shared secret failure: fail to read public key"];
      v48 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v22 = [NSError errorWithDomain:v19 code:2 userInfo:v21];
    }

    else
    {
      if (!a5)
      {
        v15 = 0;
        goto LABEL_14;
      }

      v37 = off_100069B28;
      v49 = NSLocalizedFailureReasonErrorKey;
      v20 = [NSString stringWithFormat:@"Compute shared secret failure: fail to read public key"];
      v50 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v22 = [NSError errorWithDomain:v37 code:2 userInfo:v21];
      v15 = 0;
    }

    *a5 = v22;

LABEL_14:
    goto LABEL_21;
  }

  v15 = 0;
LABEL_29:
  if (v7 && !v7[1])
  {
    v28 = v7[3];
  }

  else
  {
    v28 = 0;
  }

  if (*v16 == *v28)
  {
    v38 = 8 * **v16;
    v32 = [[NSMutableData alloc] initWithLength:v38];
    ccrng();
    [v32 mutableBytes];
    v33 = ccecdh_compute_shared_secret();
    if (v33)
    {
      if (a5)
      {
        v34 = off_100069B28;
        v43 = NSLocalizedFailureReasonErrorKey;
        v35 = [NSString stringWithFormat:@"Compute shared secret failure: %d", v33];
        v44 = v35;
        v36 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        *a5 = [NSError errorWithDomain:v34 code:2 userInfo:v36];

        a5 = 0;
      }
    }

    else
    {
      a5 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v32 bytes], v38);
    }
  }

  else if (a5)
  {
    v29 = off_100069B28;
    v45 = NSLocalizedFailureReasonErrorKey;
    v30 = [NSString stringWithFormat:@"Compute shared secret failure: curve point mismatch"];
    v46 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    *a5 = [NSError errorWithDomain:v29 code:2 userInfo:v31];

    goto LABEL_21;
  }

LABEL_22:

  return a5;
}

void *sub_1000098D0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  objc_opt_self();
  if (a4 == 2)
  {
    v10 = 64;
    ccsha512_di();
  }

  else if (a4 == 1)
  {
    v10 = 48;
    ccsha384_di();
  }

  else
  {
    if (a4)
    {
      if (!a5)
      {
        goto LABEL_15;
      }

      v16 = off_100069B28;
      v20 = NSLocalizedFailureReasonErrorKey;
      v11 = [NSString stringWithFormat:@"x963 KDF failure: invalid algorithm - %ld", a4];
      v21 = v11;
      v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      *a5 = [NSError errorWithDomain:v16 code:2 userInfo:v14];
      goto LABEL_13;
    }

    v10 = 64;
    ccsha256_di();
  }

  v11 = [[NSMutableData alloc] initWithLength:v10];
  [v8 length];
  [v8 bytes];
  [v9 length];
  [v9 bytes];
  [v11 mutableBytes];
  v12 = ccansikdf_x963();
  if (v12)
  {
    if (a5)
    {
      v13 = off_100069B28;
      v14 = [NSString stringWithFormat:@"x963 KDF failure: %d", v12, NSLocalizedFailureReasonErrorKey];
      v19 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *a5 = [NSError errorWithDomain:v13 code:2 userInfo:v15];

LABEL_13:
      a5 = 0;
    }
  }

  else
  {
    a5 = [NSData dataWithData:v11];
  }

LABEL_15:

  return a5;
}

void *sub_100009B7C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  objc_opt_self();
  switch(a5)
  {
    case 2:
      v23 = a7;
      ccsha512_di();
      goto LABEL_7;
    case 1:
      v23 = a7;
      ccsha384_di();
      goto LABEL_7;
    case 0:
      v23 = a7;
      ccsha256_di();
LABEL_7:
      v15 = [[NSMutableData alloc] initWithLength:a6];
      [v12 length];
      [v12 bytes];
      [v13 length];
      v24 = v13;
      [v13 bytes];
      [v14 length];
      [v14 bytes];
      [v15 mutableBytes];
      v16 = cchkdf();
      if (v16)
      {
        if (v23)
        {
          v17 = off_100069B28;
          v25 = NSLocalizedFailureReasonErrorKey;
          v18 = [NSString stringWithFormat:@"HKDF failure: %d", v16];
          v26 = v18;
          v19 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *v23 = [NSError errorWithDomain:v17 code:3 userInfo:v19];
        }

        a7 = 0;
      }

      else
      {
        v15 = v15;
        a7 = v15;
      }

      v13 = v24;
      goto LABEL_13;
  }

  if (a7)
  {
    v21 = off_100069B28;
    v27 = NSLocalizedFailureReasonErrorKey;
    v15 = [NSString stringWithFormat:@"HKDF failure: invalid algorithm - %ld", a5];
    v28 = v15;
    v22 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *a7 = [NSError errorWithDomain:v21 code:2 userInfo:v22];

    a7 = 0;
LABEL_13:
  }

  return a7;
}

id sub_10000A080(id a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_51;
  }

  v2 = objc_opt_new();
  has_internal_ui = os_variant_has_internal_ui();
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
  v5 = [v4 BOOLForKey:@"debug.log-crypto-params"];
  v6 = [v1 type];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_44;
      }

      [v2 setObject:@"OKP" forKeyedSubscript:@"KTYType"];
      v11 = [v1 okpCurveIdentifier];

      if (v11)
      {
        v12 = [v1 okpCurveIdentifier];
        [v2 setObject:v12 forKeyedSubscript:@"okpCurveIdentifier"];
      }

      v13 = [v1 okpCurveX];

      if (v13)
      {
        if ((has_internal_ui & v5) == 1)
        {
          v14 = [v1 okpCurveX];
          v15 = [v14 debugDescription];
        }

        else
        {
          v35 = [NSString alloc];
          v14 = [v1 okpCurveX];
          v15 = [v35 initWithFormat:@"REDACTED, size=%lu", objc_msgSend(v14, "length")];
        }

        v36 = v15;
        [v2 setObject:v15 forKeyedSubscript:@"okpCurveX"];
      }

      v37 = [v1 okpCurveD];

      if (!v37)
      {
        goto LABEL_44;
      }

      if ((has_internal_ui & v5) == 1)
      {
        v8 = [v1 okpCurveD];
        v9 = [v8 debugDescription];
        v10 = @"okpCurveD";
        goto LABEL_41;
      }

      v38 = [NSString alloc];
      v31 = [v1 okpCurveD];
      v32 = [v38 initWithFormat:@"REDACTED, size=%lu", objc_msgSend(v31, "length")];
      v33 = @"okpCurveD";
      goto LABEL_43;
    }

    v21 = @"Reserved";
  }

  else
  {
    if (v6 == 2)
    {
      [v2 setObject:@"EC2" forKeyedSubscript:@"KTYType"];
      v16 = [v1 ecCurveIdentifier];

      if (v16)
      {
        v17 = [v1 ecCurveIdentifier];
        [v2 setObject:v17 forKeyedSubscript:@"ecCurveIdentifier"];
      }

      v18 = [v1 ecCurveX];

      if (v18)
      {
        if ((has_internal_ui & v5) == 1)
        {
          v19 = [v1 ecCurveX];
          v20 = [v19 debugDescription];
        }

        else
        {
          v22 = [NSString alloc];
          v19 = [v1 ecCurveX];
          v20 = [v22 initWithFormat:@"REDACTED, size=%lu", objc_msgSend(v19, "length")];
        }

        v23 = v20;
        [v2 setObject:v20 forKeyedSubscript:@"ecCurveX"];
      }

      v24 = [v1 ecCurveY];

      if (v24)
      {
        if ((has_internal_ui & v5) == 1)
        {
          v25 = [v1 ecCurveY];
          v26 = [v25 debugDescription];
        }

        else
        {
          v27 = [NSString alloc];
          v25 = [v1 ecCurveY];
          v26 = [v27 initWithFormat:@"REDACTED, size=%lu", objc_msgSend(v25, "length")];
        }

        v28 = v26;
        [v2 setObject:v26 forKeyedSubscript:@"ecCurveY"];
      }

      v29 = [v1 ecCurveD];

      if (!v29)
      {
        goto LABEL_44;
      }

      if ((has_internal_ui & v5) == 1)
      {
        v8 = [v1 ecCurveD];
        v9 = [v8 debugDescription];
        v10 = @"ecCurveD";
        goto LABEL_41;
      }

      v30 = [NSString alloc];
      v31 = [v1 ecCurveD];
      v32 = [v30 initWithFormat:@"REDACTED, size=%lu", objc_msgSend(v31, "length")];
      v33 = @"ecCurveD";
LABEL_43:
      [v2 setObject:v32 forKeyedSubscript:v33];

      goto LABEL_44;
    }

    if (v6 != 3)
    {
      if (v6 != 4)
      {
        goto LABEL_44;
      }

      [v2 setObject:@"Symmetric" forKeyedSubscript:@"KTYType"];
      v7 = [v1 symmetricKey];

      if (!v7)
      {
        goto LABEL_44;
      }

      if ((has_internal_ui & v5) == 1)
      {
        v8 = [v1 symmetricKey];
        v9 = [v8 debugDescription];
        v10 = @"symmetricKey";
LABEL_41:
        [v2 setObject:v9 forKeyedSubscript:v10];

        goto LABEL_44;
      }

      v34 = [NSString alloc];
      v31 = [v1 symmetricKey];
      v32 = [v34 initWithFormat:@"REDACTED, size=%lu", objc_msgSend(v31, "length")];
      v33 = @"symmetricKey";
      goto LABEL_43;
    }

    v21 = @"RSA";
  }

  [v2 setObject:v21 forKeyedSubscript:@"KTYType"];
LABEL_44:
  v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 algorithm]);
  [v2 setObject:v39 forKeyedSubscript:@"algo"];

  v40 = [v1 identifier];

  if (v40)
  {
    v41 = [v1 identifier];
    v42 = [v41 debugDescription];
    [v2 setObject:v42 forKeyedSubscript:@"identifier"];
  }

  v43 = [v1 operations];
  v44 = [v43 count];

  if (v44)
  {
    v45 = [v1 operations];
    [v2 setObject:v45 forKeyedSubscript:@"operations"];
  }

  v46 = [v1 baseInitializationVector];

  if (v46)
  {
    v47 = [v1 baseInitializationVector];
    v48 = [v47 debugDescription];
    [v2 setObject:v48 forKeyedSubscript:@"baseInitializationVector"];
  }

  v1 = [v2 debugDescription];

LABEL_51:

  return v1;
}

STSCHWiFiAwareSecurityInfo *sub_10000A72C(void *a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_12;
  }

  v7 = [v5 cipherSuite];
  v8 = [v7 count];

  if (!v8)
  {
    goto LABEL_12;
  }

  v62 = a3;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = [v6 cipherSuite];
    v12 = [v11 objectAtIndexedSubscript:v10];
    if ([v12 integerValue] == 3)
    {
      v13 = [v6 dhInfo];
      v14 = [v13 objectAtIndexedSubscript:v10];
      v15 = [v14 publicKeyGroup];

      if (v15 != 19)
      {
        goto LABEL_8;
      }

      sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISOKey(WifiSecurity) generateInfoWithPeerSecurityInfo:nanPublisher:]", 1190, a1, @"Found NCS_PK_2WDH_128 with matching key group %lu", v16, v17, 19);
      v11 = [v6 dhInfo];
      [v11 objectAtIndexedSubscript:v10];
      v9 = v12 = v9;
    }

LABEL_8:
    ++v10;
    v18 = [v6 cipherSuite];
    v19 = [v18 count];
  }

  while (v10 < v19);
  if (!v9)
  {
LABEL_12:
    v29 = 0;
    goto LABEL_28;
  }

  v20 = [ISOKey alloc];
  v21 = [v9 publicKey];
  v22 = sub_100008EF8(v20, v21);

  v66 = 0;
  v24 = sub_10000935C(ISOKey, a1, v22, v23, &v66);
  v25 = v66;
  if (v25)
  {
    v28 = v25;
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOKey(WifiSecurity) generateInfoWithPeerSecurityInfo:nanPublisher:]", 1205, a1, @"Share secret compute failed: %@", v26, v27, v25);
    v29 = 0;
  }

  else
  {
    v65 = 0;
    v30 = sub_1000098D0(ISOKey, v24, 0, 0, &v65);
    v31 = v65;
    if (v31)
    {
      v28 = v31;
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOKey(WifiSecurity) generateInfoWithPeerSecurityInfo:nanPublisher:]", 1214, a1, @"Sym key hash generation failed: %@", v32, v33, v31);
      v29 = 0;
    }

    else
    {
      v61 = v30;
      v34 = [@"OWE Key Generation" dataUsingEncoding:4];
      v35 = [NSMutableData alloc];
      if (v62)
      {
        v36 = sub_1000090A0(a1);
        v37 = [v35 initWithData:v36];

        v38 = v37;
        v39 = v22;
      }

      else
      {
        v40 = sub_1000090A0(v22);
        v41 = [v35 initWithData:v40];

        v38 = v41;
        v39 = a1;
      }

      v42 = sub_1000090A0(v39);
      [v38 appendData:v42];

      v64[0] = [v9 publicKeyGroup];
      v64[1] = [v9 publicKeyGroup] >> 8;
      [v38 appendBytes:v64 length:2];
      v63 = 0;
      v30 = v61;
      v60 = v34;
      v43 = sub_100009B7C(ISOKey, v61, v38, v34, 0, 32, &v63);
      v44 = v63;
      v28 = v44;
      v59 = v38;
      if (v44 || !v43)
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOKey(WifiSecurity) generateInfoWithPeerSecurityInfo:nanPublisher:]", 1235, a1, @"HKDF error: %@", v45, v46, v44);
        v29 = 0;
        v51 = v43;
      }

      else
      {
        v58 = v43;
        v47 = [NSMutableData alloc];
        if (v62)
        {
          v48 = sub_1000090A0(a1);
          v49 = [v47 initWithData:v48];

          v50 = v22;
        }

        else
        {
          v52 = sub_1000090A0(v22);
          v49 = [v47 initWithData:v52];

          v50 = a1;
        }

        v53 = sub_1000090A0(v50);
        [v49 appendData:v53];

        sub_10000921C(ISOKey, v49, 0);
        v55 = v54 = v49;
        v56 = [v55 subdataWithRange:{0, 16}];
        v51 = v58;
        v29 = [[STSCHWiFiAwareSecurityInfo alloc] initWithPMK:v58 pmkID:v56];

        v30 = v61;
      }
    }
  }

LABEL_28:

  return v29;
}

void *sub_10000AC2C(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_6;
  }

  v17.receiver = a1;
  v17.super_class = ISOOriginInfo;
  a1 = objc_msgSendSuper2(&v17, "init");
  if (a1)
  {
    if ([v3 type] == 5)
    {
      v4 = [v3 dictionary];
      v5 = [CBOR cborWithUTF8String:@"cat"];
      v6 = [v4 objectForKeyedSubscript:v5];
      a1[1] = [v6 longLongValue];

      v7 = [v3 dictionary];
      v8 = [CBOR cborWithUTF8String:@"type"];
      v9 = [v7 objectForKeyedSubscript:v8];
      a1[2] = [v9 longLongValue];

      v10 = [v3 dictionary];
      v11 = [CBOR cborWithUTF8String:@"details"];
      v12 = [v10 objectForKeyedSubscript:v11];
      v13 = [v12 dictionary];
      v14 = a1[3];
      a1[3] = v13;

      goto LABEL_5;
    }

LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

LABEL_5:
  a1 = a1;
  v15 = a1;
LABEL_7:

  return v15;
}

id sub_10000B060(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [CBOR cborWithUTF8String:@"cat"];
  v16[0] = v3;
  if (v2)
  {
    v4 = v2[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [CBOR cborWithUnsignedInteger:v4];
  v17[0] = v5;
  v6 = [CBOR cborWithUTF8String:@"type"];
  v16[1] = v6;
  if (v2)
  {
    v7 = v2[2];
  }

  else
  {
    v7 = 0;
  }

  v8 = [CBOR cborWithUnsignedInteger:v7];
  v17[1] = v8;
  v9 = [CBOR cborWithUTF8String:@"details"];
  v16[2] = v9;
  if (v2)
  {
    v10 = v2[3];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [CBOR cborWithDictionary:v11];
  v17[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  v14 = [CBOR cborWithDictionary:v13];

  return v14;
}

id *sub_10000B228(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_5;
  }

  v25.receiver = a1;
  v25.super_class = STSXPClientNotification;
  v10 = objc_msgSendSuper2(&v25, "init");
  a1 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  objc_storeWeak(v10 + 3, v8);
  objc_storeStrong(a1 + 7, a4);
  *(a1 + 3) = 0;
  v11 = v7;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPClientNotification setupConnectWithXPCServiceEndpoint:]", 337, a1, @"Connect to handover notification listener", v12, v13, v24);
  v14 = [[NSXPCConnection alloc] initWithListenerEndpoint:v11];
  v15 = a1[8];
  a1[8] = v14;

  v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STSXPCClientNotificationListenerProtocol];
  v17 = objc_opt_class();
  v18 = [NSSet setWithObjects:v17, objc_opt_class(), 0];
  [v16 setClasses:v18 forSelector:"processCredentialRequestList:readerAuthInfo:" argumentIndex:0 ofReply:0];

  [a1[8] setRemoteObjectInterface:v16];
  v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STSXPCClientNotificationListenerCallbackProtocol];
  v20 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v19 setClasses:v20 forSelector:"sendCredentialSelect:callback:" argumentIndex:0 ofReply:0];

  [a1[8] setExportedInterface:v19];
  [a1[8] setExportedObject:a1];
  objc_initWeak(location, a1);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000D244;
  v33[3] = &unk_100058B20;
  objc_copyWeak(&v34, location);
  [a1[8] setInvalidationHandler:v33];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000D3E4;
  v31[3] = &unk_100058B20;
  objc_copyWeak(&v32, location);
  [a1[8] setInterruptionHandler:v31];
  [a1[8] _setQueue:a1[7]];
  [a1[8] resume];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000D46C;
  v26[3] = &unk_100058A58;
  v26[4] = a1;
  v26[5] = &v27;
  v21 = sub_10000C0E0(a1, v26);
  [v21 dummyStart];

  LODWORD(v21) = *(v28 + 24);
  _Block_object_dispose(&v27, 8);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(location);

  if (v21 == 1)
  {
LABEL_4:
    a1 = a1;
    v22 = a1;
  }

  else
  {
LABEL_5:
    v22 = 0;
  }

  return v22;
}

void sub_10000B5C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_10000B65C(os_unfair_lock_s *a1)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10000B6F0;
    v2[3] = &unk_100058A08;
    v2[4] = a1;
    os_unfair_lock_lock(a1 + 3);
    (sub_10000B6F0)(v2);
    os_unfair_lock_unlock(a1 + 3);
  }
}

void *sub_10000B6F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = result[4];
  if (v9)
  {
    if (*(v9 + 9))
    {
      return result;
    }

    *(v9 + 9) = 1;
    v10 = result[4];
  }

  else
  {
    v10 = 0;
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPClientNotification invalidate]_block_invoke", 66, v10, @"Invalidate client notification", a7, a8, v13);
  v11 = v8[4];
  if (v11)
  {
    v12 = *(v11 + 64);
  }

  else
  {
    v12 = 0;
  }

  return [v12 invalidate];
}

void sub_10000B784(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10000B818;
    v4[3] = &unk_100058A30;
    v4[4] = a1;
    v3 = sub_10000B85C(a1, v4);
    [v3 transactionStarted:a2];
  }
}

id sub_10000B85C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v9 = sub_10000D224;
    v10 = &unk_100058AF8;
    v11 = a1;
    v12 = &v13;
    v4 = v8;
    os_unfair_lock_lock((a1 + 12));
    v9(v4);
    os_unfair_lock_unlock((a1 + 12));

    if (*(v14 + 24) == 1)
    {
      v17 = NSLocalizedDescriptionKey;
      v18 = off_100069A60;
      v5 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v6 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:4 userInfo:v5];

      v3[2](v3, v6);
      a1 = 0;
    }

    else
    {
      a1 = [*(a1 + 64) remoteObjectProxyWithErrorHandler:v3];
    }

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void sub_10000BA44(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000BB04;
    v8[3] = &unk_100058A30;
    v8[4] = a1;
    v5 = a3;
    v6 = a2;
    v7 = sub_10000B85C(a1, v8);
    [v7 processCredentialRequestList:v6 readerAuthInfo:v5];
  }
}

void sub_10000BB48(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000BC08;
    v8[3] = &unk_100058A30;
    v8[4] = a1;
    v5 = a3;
    v6 = a2;
    v7 = sub_10000B85C(a1, v8);
    [v7 transactionEndedWithIdentifier:v6 error:v5];
  }
}

void sub_10000BC4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10000BCE0;
    v4[3] = &unk_100058A30;
    v4[4] = a1;
    v3 = sub_10000B85C(a1, v4);
    [v3 alternativeCarrierConnectedWithStatus:a2];
  }
}

void sub_10000BD24(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10000BDB8;
    v4[3] = &unk_100058A30;
    v4[4] = a1;
    v3 = sub_10000B85C(a1, v4);
    [v3 alternativeCarrierDisconnectedWithStatus:a2];
  }
}

void sub_10000BDFC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v10 = a4;
  if (a1)
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSXPClientNotification alternativeCarrierReceivedData:dataPending:completion:]", 113, a1, @"data: %@", v8, v9, v7);
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_10000BFBC;
    v17[4] = sub_10000BFCC;
    v18 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000BFD4;
    v16[3] = &unk_100058A58;
    v16[4] = a1;
    v16[5] = v17;
    v11 = sub_10000C0E0(a1, v16);
    [v11 receivedRawDataFromAlternativeCarrier:v7 dataPending:a3];

    v12 = a1[7];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C2C4;
    block[3] = &unk_100058A80;
    v14 = v10;
    v15 = v17;
    dispatch_async(v12, block);

    _Block_object_dispose(v17, 8);
  }
}

void sub_10000BFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BFBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000BFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPClientNotification alternativeCarrierReceivedData:dataPending:completion:]_block_invoke", 134, *(a1 + 32), @"XPC Error: %@", a7, a8, a2);
  v13 = NSLocalizedDescriptionKey;
  v14 = off_100069A60;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:4 userInfo:v9];

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

id sub_10000C0E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_10000D204;
  v11 = &unk_100058AF8;
  v12 = a1;
  v13 = &v14;
  v4 = v9;
  os_unfair_lock_lock((a1 + 12));
  v10(v4);
  os_unfair_lock_unlock((a1 + 12));

  if (*(v15 + 24) == 1)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = off_100069A60;
    v5 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v6 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:4 userInfo:v5];

    v3[2](v3, v6);
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 64) synchronousRemoteObjectProxyWithErrorHandler:v3];
  }

  _Block_object_dispose(&v14, 8);

  return v7;
}

void sub_10000C2E0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = sub_10000BFBC;
    v22[4] = sub_10000BFCC;
    v23 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000C4B8;
    v21[3] = &unk_100058A58;
    v21[4] = a1;
    v21[5] = v22;
    v16 = sub_10000C0E0(a1, v21);
    [v16 iso18013DecryptedDeviceResponse:v11 sessionDataStatus:v12 mDocResponseStatus:v13 error:v14];

    if (v15)
    {
      v17 = *(a1 + 56);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000C5C4;
      v18[3] = &unk_100058A80;
      v19 = v15;
      v20 = v22;
      dispatch_async(v17, v18);
    }

    _Block_object_dispose(v22, 8);
  }
}

void sub_10000C4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPClientNotification iso18013ReaderReceived:sessionDataStatus:mDocResponseStatus:error:completion:]_block_invoke", 150, *(a1 + 32), @"XPC error: %@", a7, a8, a2);
  v13 = NSLocalizedDescriptionKey;
  v14 = off_100069A60;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:4 userInfo:v9];

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_10000C5E0(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000C6A0;
    v8[3] = &unk_100058A30;
    v8[4] = a1;
    v5 = a3;
    v6 = a2;
    v7 = sub_10000B85C(a1, v8);
    [v7 connectionEstablishedWithSTSReaderCryptarch:v6 sessionTranscriptBytes:v5];
  }
}

void sub_10000C8E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_10000C904(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPClientNotification sendRawDataToAlternativeCarrier:callback:]_block_invoke", 188, *(a1 + 32), @"Lost of ref. to self", v4, v5, v10);
    v7 = *(a1 + 40);
    v11 = NSLocalizedDescriptionKey;
    v12 = off_100069A50;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v8];

    (*(v7 + 16))(v7, v9);
  }
}

uint64_t sub_10000D204(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 9);
  }

  *(*(*(result + 40) + 8) + 24) = v1 & 1;
  return result;
}

uint64_t sub_10000D224(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 9);
  }

  *(*(*(result + 40) + 8) + 24) = v1 & 1;
  return result;
}

void sub_10000D244(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "STSXPClientNotification xpcInvalidated", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_10000D330(WeakRetained, 1, WeakRetained[8]);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000D3BC;
    v5[3] = &unk_100058A08;
    v5[4] = v4;
    os_unfair_lock_lock(v4 + 3);
    sub_10000D3BC(v5);
    os_unfair_lock_unlock(v4 + 3);
  }
}

void sub_10000D330(id *a1, uint64_t a2, void *a3)
{
  [a3 processIdentifier];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSXPClientNotification didInvalidateXPC:connection:]", 383, a1, @"Invalidated=%d, connection(PID)=%d", v5, v6, a2);
  WeakRetained = objc_loadWeakRetained(a1 + 3);
  v8 = WeakRetained;
  if (a2)
  {
    [WeakRetained xpcInvalidated];
  }

  else
  {
    [WeakRetained xpcInterrupted];
  }
}

void sub_10000D3BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 9) = 1;
    v2 = *(a1 + 32);
    if (v2)
    {
      objc_storeStrong((v2 + 64), 0);
    }
  }
}

void sub_10000D3E4(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "STSXPClientNotification xpcInterrupted", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v2, &v5);
  os_activity_scope_leave(&v5);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_10000D330(WeakRetained, 0, WeakRetained[8]);
  }
}

id *sub_10000D538(id *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = STSCredentialRequest;
    v7 = objc_msgSendSuper2(&v9, "init");
    a1 = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, a3);
    }
  }

  return a1;
}

_WORD *sub_10000D6B4(_WORD *a1, void *a2, __int16 a3)
{
  v6 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = ISO18013RequestElement;
    v7 = objc_msgSendSuper2(&v9, "init");
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 2, a2);
      a1[4] = a3;
    }
  }

  return a1;
}

id *sub_10000D838(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = sub_10000D538(a1, 0, a2);
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 3, a3);
      objc_storeStrong(v14 + 4, a4);
      objc_storeStrong(v14 + 6, a5);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void *sub_10000DBB4(void *a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = ReaderAnalyticsData;
    v15 = objc_msgSendSuper2(&v25, "init");
    a1 = v15;
    if (v15)
    {
      *(v15 + 8) = a2;
      v16 = [v11 copy];
      v17 = a1[2];
      a1[2] = v16;

      v18 = [v12 copy];
      v19 = a1[3];
      a1[3] = v18;

      v20 = [v13 copy];
      v21 = a1[4];
      a1[4] = v20;

      v22 = [v14 copy];
      v23 = a1[5];
      a1[5] = v22;
    }
  }

  return a1;
}

id *sub_10000DFE0(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v25 = a5;
  v29 = a5;
  v28 = a6;
  v26 = a7;
  v27 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  if (a1)
  {
    v33.receiver = a1;
    v33.super_class = ISO18013ReaderAuthInfo;
    v22 = objc_msgSendSuper2(&v33, "init");
    a1 = v22;
    if (v22)
    {
      objc_storeStrong(v22 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, v25);
      objc_storeStrong(a1 + 5, a6);
      objc_storeStrong(a1 + 6, v26);
      objc_storeStrong(a1 + 7, a8);
      objc_storeStrong(a1 + 8, a9);
      objc_storeStrong(a1 + 9, a10);
      objc_storeStrong(a1 + 10, a11);
    }
  }

  return a1;
}

id *sub_10000E574(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = STSBluetoothSession;
    v12 = objc_msgSendSuper2(&v21, "init");
    a1 = v12;
    if (v12)
    {
      v12[3] = a3;
      objc_storeWeak(v12 + 2, v9);
      objc_storeWeak(a1 + 5, v10);
      if (v11)
      {
        v13 = v11;
        v14 = a1[4];
        a1[4] = v13;
      }

      else
      {
        v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INTERACTIVE, 0);
        v16 = dispatch_queue_create("STSBluetoothSession", v15);
        v17 = a1[4];
        a1[4] = v16;
      }

      v18 = dispatch_queue_create("LE queue", 0);
      v19 = a1[11];
      a1[11] = v18;

      *(a1 + 3) = 0;
    }
  }

  return a1;
}

id sub_10000E6A4(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v51 = a3;
  v50 = a5;
  if (a1)
  {
    objc_initWeak(&location, a1);
    os_unfair_lock_lock((a1 + 12));
    *(a1 + 8) = 0;
    os_unfair_lock_unlock((a1 + 12));
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 1, "[STSBluetoothSession beginWithUUID:targetAddress:l2CapEnable:readerIdentCharacteristic:]", 70, a1, @"uuid: %@  target:%@  l2cap:%d", v10, v11, v9);
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10000EDE8;
    v66[3] = &unk_100058B48;
    objc_copyWeak(&v67, &location);
    v12 = objc_retainBlock(v66);
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10000F010;
    v64[3] = &unk_100058B48;
    objc_copyWeak(&v65, &location);
    v13 = objc_retainBlock(v64);
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10000F4DC;
    v62[3] = &unk_100058B70;
    objc_copyWeak(&v63, &location);
    v14 = objc_retainBlock(v62);
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_10000F688;
    v57[3] = &unk_100058B98;
    v15 = v50;
    v58 = v15;
    v16 = v12;
    v59 = v16;
    v17 = v13;
    v60 = v17;
    v18 = v14;
    v61 = v18;
    v49 = objc_retainBlock(v57);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10000F698;
    v52[3] = &unk_100058BC0;
    v53 = v15;
    v19 = v16;
    v54 = v19;
    v20 = v17;
    v55 = v20;
    v21 = v18;
    v56 = v21;
    v22 = objc_retainBlock(v52);
    v23 = [v9 length];
    v24 = *(a1 + 24);
    if (v23)
    {
      if (v24 <= 1)
      {
        if (v24)
        {
          if (v24 != 1)
          {
            goto LABEL_21;
          }

          v25 = [ReaderPeripheral alloc];
          v26 = *(a1 + 88);
          v27 = *(a1 + 32);
          v28 = sub_100007948(v25, a4);
          objc_storeStrong((a1 + 56), v28);

          v29 = *(a1 + 56);
          v30 = (v22[2])(v22, v29, v9, v51);

LABEL_19:
          if (v30)
          {
            a1 = 0;
            goto LABEL_22;
          }

LABEL_21:
          v69 = NSLocalizedDescriptionKey;
          v70 = off_100069A50;
          v47 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          a1 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v47];

          goto LABEL_22;
        }

LABEL_14:
        v36 = [ReaderCentral alloc];
        v37 = *(a1 + 88);
        v38 = *(a1 + 32);
        v39 = [(ISO18013_3_Central *)v36 initWithWorkQueue:v37 callbackQueue:v38];
        objc_storeStrong((a1 + 48), v39);

        v40 = *(a1 + 48);
        v30 = (v49[2])(v49, v40, v51, v9);

        goto LABEL_19;
      }

      if (v24 != 2)
      {
        if (v24 != 3)
        {
          goto LABEL_21;
        }

        v31 = [ISOPeripheral alloc];
        v32 = *(a1 + 88);
        v33 = *(a1 + 32);
        v34 = sub_100017430(v31, a4);
        objc_storeStrong((a1 + 72), v34);

        v35 = *(a1 + 72);
        v30 = (v22[2])(v22, v35, v9, v51);

        goto LABEL_19;
      }

LABEL_18:
      v42 = [ISOCentral alloc];
      v43 = *(a1 + 88);
      v44 = *(a1 + 32);
      v45 = [(ISO18013_3_Central *)v42 initWithWorkQueue:v43 callbackQueue:v44];
      objc_storeStrong((a1 + 64), v45);

      v46 = *(a1 + 64);
      v30 = (v49[2])(v49, v46, v51, v9);

      goto LABEL_19;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        goto LABEL_18;
      }

      if (v24 != 3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (!v24)
      {
        goto LABEL_14;
      }

      if (v24 != 1)
      {
        goto LABEL_21;
      }
    }

    v69 = NSLocalizedDescriptionKey;
    v70 = off_100069A68;
    v41 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    a1 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:5 userInfo:v41];

LABEL_22:
    objc_destroyWeak(&v63);

    objc_destroyWeak(&v65);
    objc_destroyWeak(&v67);
    objc_destroyWeak(&location);
  }

  return a1;
}

void sub_10000EDE8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 3);
    LOBYTE(v4[2]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_unlock(v4 + 3);
    v5 = sub_100024AE0();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BT_Connected", &unk_10005485E, buf, 2u);
    }

    v6 = +[NSDate now];
    v7 = objc_loadWeakRetained(&v4[10]);
    [v7 altCarrierConnectedWithStatus:a2];

    v8 = *&v4[6]._os_unfair_lock_opaque;
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v17[0] = @"transactionStartEventTime";
      v17[1] = @"transportType";
      *buf = v6;
      v19 = &off_10005F538;
      v9 = [NSDictionary dictionaryWithObjects:buf forKeys:v17 count:2];
      v10 = +[STSAnalyticsLogger sharedCALogger];
      [v10 postISOTransactionEvent:v9 prepOnly:1];

      v8 = *&v4[6]._os_unfair_lock_opaque;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v11 = *&v4[16]._os_unfair_lock_opaque;
        goto LABEL_15;
      }

      if (v8 == 3)
      {
        v11 = *&v4[18]._os_unfair_lock_opaque;
        goto LABEL_15;
      }
    }

    else
    {
      if (!v8)
      {
        v11 = *&v4[12]._os_unfair_lock_opaque;
        goto LABEL_15;
      }

      if (v8 == 1)
      {
        v11 = *&v4[14]._os_unfair_lock_opaque;
LABEL_15:
        v16 = 0;
        v12 = v11;
        v13 = [v12 getBluetoothStatusDict:&v16];
        v14 = v16;

        if (v13)
        {
          v15 = +[STSAnalyticsLogger sharedCALogger];
          [v15 postISOBTStatusEvent:v13];
        }
      }
    }
  }
}

void sub_10000F010(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_22;
  }

  os_unfair_lock_lock(WeakRetained + 3);
  *(v4 + 8) = 0;
  os_unfair_lock_unlock((v4 + 12));
  v5 = 0;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v23 = NSLocalizedDescriptionKey;
      v24 = STSBluetoothErrorDescriptions;
      v8 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v9 = [NSError errorWithDomain:@"BluetoothDomain" code:0 userInfo:v8];

      v21[0] = NSLocalizedDescriptionKey;
      v21[1] = NSUnderlyingErrorKey;
      *&buf = @"Bluetooth specific error";
      *(&buf + 1) = v9;
      v10 = [NSDictionary dictionaryWithObjects:&buf forKeys:v21 count:2];
      v5 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v10];

      goto LABEL_12;
    }

    if (a2 == 5)
    {
      v21[0] = NSLocalizedDescriptionKey;
      *&buf = off_100069AB8;
      v6 = [NSDictionary dictionaryWithObjects:&buf forKeys:v21 count:1];
      v7 = 15;
      goto LABEL_10;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v21[0] = NSLocalizedDescriptionKey;
      *&buf = off_100069AC0;
      v6 = [NSDictionary dictionaryWithObjects:&buf forKeys:v21 count:1];
      v7 = 16;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v21[0] = NSLocalizedDescriptionKey;
      *&buf = off_100069A78;
      v6 = [NSDictionary dictionaryWithObjects:&buf forKeys:v21 count:1];
      v7 = 7;
LABEL_10:
      v5 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:v7 userInfo:v6];
    }
  }

LABEL_12:
  sub_10000F44C(v4, v5);
  v11 = sub_100024AE0();
  if (os_signpost_enabled(v11))
  {
    v12 = [v5 description];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BT_Disconnected", "error=%@", &buf, 0xCu);
  }

  v13 = objc_loadWeakRetained((v4 + 40));
  [v13 altCarrierDisconnectedWithStatus:a2];

  if ((*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v14 = +[NSDate now];
    v18 = @"transactionEndEventTime";
    v19 = @"errorCode";
    v20[0] = v14;
    if (v5)
    {
      v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 code]);
    }

    else
    {
      v15 = &off_10005F520;
    }

    v20[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:&v18 count:2];
    if (v5)
    {
    }

    v17 = [STSAnalyticsLogger sharedCALogger:v18];
    [v17 postISOTransactionEvent:v16 prepOnly:0];
  }

LABEL_22:
}

void sub_10000F44C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 12));
    v3 = *(a1 + 80);
    objc_setProperty_nonatomic_copy(a1, v4, 0, 80);
    os_unfair_lock_unlock((a1 + 12));
    if (v3)
    {
      v3[2](v3, v5);
    }
  }
}

void sub_10000F4DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_10000F44C(WeakRetained, 0);
  if (WeakRetained)
  {
    v5 = v3;
    v6 = [v5 length];
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSBluetoothSession _forwardReceivedDataToNotificationListener:]", 56, WeakRetained, @"Recv %ld bytes", v7, v8, v6);
    v9 = objc_loadWeakRetained(WeakRetained + 5);
    [v9 altCarrierReceived:v5 status:0];

    if ((WeakRetained[3] | 2) != 2)
    {
      v10 = +[STSAnalyticsLogger sharedCALogger];
      v14[0] = @"btL2Cap";
      v14[1] = @"btCentral";
      v15[0] = &__kCFBooleanFalse;
      v15[1] = &__kCFBooleanFalse;
      v11 = v15;
      v12 = v14;
      goto LABEL_5;
    }
  }

  else
  {
  }

  v10 = +[STSAnalyticsLogger sharedCALogger];
  v16[0] = @"btL2Cap";
  v16[1] = @"btCentral";
  v17[0] = &__kCFBooleanFalse;
  v17[1] = &__kCFBooleanTrue;
  v11 = v17;
  v12 = v16;
LABEL_5:
  v13 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:2];
  [v10 postISOTransactionEvent:v13 prepOnly:1];
}

void sub_10000F6AC(id *a1, uint64_t a2)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 4);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    sub_10000BD24(v7, 1);

    [a1[8] invalidateAndUpdateStateSignal:a2];
    v8 = a1[8];
    a1[8] = 0;

    [a1[9] invalidateAndUpdateStateSignal:a2];
    v9 = a1[9];
    a1[9] = 0;

    [a1[6] invalidateAndUpdateStateSignal:a2];
    v10 = a1[6];
    a1[6] = 0;

    [a1[7] invalidateAndUpdateStateSignal:a2];
    v11 = a1[7];
    a1[7] = 0;
  }
}

uint64_t sub_10000F780()
{
  objc_opt_self();
  v0 = [ISO18013_3_Central alloc];
  v1 = dispatch_queue_create("LE queue", 0);
  v2 = dispatch_get_global_queue(33, 0);
  v3 = [(ISO18013_3_Central *)v0 initWithWorkQueue:v1 callbackQueue:v2];

  v4 = [(ISO18013_3_Central *)v3 hardwareAvailable];
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (v4 == 2);
  }

  return v5;
}

void sub_10000FE50(id a1)
{
  qword_100069B98 = objc_opt_new();

  _objc_release_x1();
}

id sub_100012840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 40);
  sub_100024938(OS_LOG_TYPE_INFO, 0, "+[CALogger postCAEventFor:eventInput:]_block_invoke", 20, @"Posting for %@ = %@", a6, a7, a8, *(a1 + 32));
  v9 = *(a1 + 40);

  return v9;
}

void sub_1000128F8(id a1)
{
  qword_100069BD8 = objc_opt_new();

  _objc_release_x1();
}

id sub_100013C24(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = WifiP2PController;
    a1 = objc_msgSendSuper2(&v13, "init");
    if (a1)
    {
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 11);
        *(a1 + 11) = v7;
      }

      else
      {
        v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);
        v10 = dispatch_queue_create("WifiP2PController", v9);
        v11 = *(a1 + 11);
        *(a1 + 11) = v10;
      }

      objc_storeWeak(a1 + 2, v5);
    }
  }

  return a1;
}

id sub_100013D10(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    *v9 = 0u;
    memset(v10, 0, sizeof(v10));
    v5 = inet_ntop(30, [v3 bytes], v9, 0x2Eu);
    if (v5)
    {
      a1 = [NSString stringWithCString:v5 encoding:4];
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[WifiP2PController ipAddrStringFromData:]", 75, a1, @"Invalidate address=%@", v6, v7, v4);
      a1 = 0;
    }
  }

  return a1;
}

id sub_100013E04(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    *v8 = 0;
    v9 = 0;
    v4 = if_indextoname(a2, v8);
    if (v4)
    {
      a1 = [NSString stringWithCString:v4 encoding:4];
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[WifiP2PController interfaceNameFromIndex:]", 87, v3, @"Invalid interface index=%d", v5, v6, a2);
      a1 = 0;
    }
  }

  return a1;
}

void sub_100013ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 32);
  if (v10 && (*(v10 + 10) & 1) != 0)
  {
    return;
  }

  if ([*(a1 + 40) furtherServiceDiscoveryRequired])
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController _startDataSessionWithDiscoveryResult:]_block_invoke", 149, *(a1 + 32), @"Further discovery required", v11, v12, v53);
  }

  if ([*(a1 + 40) datapathSupported])
  {
    v15 = [*(a1 + 40) datapathSecurityRequired];
    v18 = *(a1 + 32);
    if (!v15)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController _startDataSessionWithDiscoveryResult:]_block_invoke", 180, v18, @"Discovery datapath without security", v16, v17, v53);
      v26 = [[WiFiAwareDataSession alloc] initWithDiscoveryResult:*(a1 + 40) serviceType:1 serviceSpecificInfo:0];
      sub_100014234(*(a1 + 32), v26);
      goto LABEL_16;
    }

    if (v18)
    {
      v19 = v18[4];
    }

    else
    {
      v19 = 0;
    }

    v20 = [v19 passphrase];

    v23 = *(a1 + 32);
    if (v20)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController _startDataSessionWithDiscoveryResult:]_block_invoke", 159, v23, @"Discovery datapath with passphrase", v21, v22, v53);
      v24 = *(a1 + 32);
      if (v24)
      {
        v25 = *(v24 + 32);
      }

      else
      {
        v25 = 0;
      }

      v26 = [v25 passphrase];
      v27 = [[WiFiAwareDataSession alloc] initWithDiscoveryResult:*(a1 + 40) serviceType:1 serviceSpecificInfo:0 passphrase:v26];
      sub_100014234(*(a1 + 32), v27);
LABEL_13:

LABEL_16:
LABEL_17:
      v31 = *(a1 + 32);
      if (v31)
      {
        v32 = *(v31 + 72);
      }

      else
      {
        v32 = 0;
      }

      [v32 setDelegate:?];
      v33 = *(a1 + 32);
      if (v33)
      {
        v34 = *(v33 + 72);
      }

      else
      {
        v34 = 0;
      }

      [v34 start];
      v28 = *(a1 + 32);
      v29 = @"Subscriber started data session...";
      v30 = 189;
      goto LABEL_22;
    }

    if (v23)
    {
      v35 = v23[4];
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    v37 = [v36 datapathPmk];
    if (v37)
    {
      v38 = v37;
      v39 = *(a1 + 32);
      if (v39)
      {
        v40 = *(v39 + 32);
      }

      else
      {
        v40 = 0;
      }

      v41 = [v40 datapathPmkID];

      if (v41)
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController _startDataSessionWithDiscoveryResult:]_block_invoke", 167, *(a1 + 32), @"Discovery datapath with PMK", v42, v43, v53);
        v44 = [WiFiAwareDataSession alloc];
        v45 = *(a1 + 32);
        v46 = *(a1 + 40);
        if (v45)
        {
          v45 = v45[4];
        }

        v26 = v45;
        v27 = [v26 datapathPmk];
        v47 = *(a1 + 32);
        if (v47)
        {
          v47 = v47[4];
        }

        v48 = v47;
        v49 = [v48 datapathPmkID];
        v50 = [v44 initWithDiscoveryResult:v46 serviceType:1 serviceSpecificInfo:0 pmk:v27 pmkID:v49];
        sub_100014234(*(a1 + 32), v50);

        goto LABEL_13;
      }
    }

    else
    {
    }

    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController _startDataSessionWithDiscoveryResult:]_block_invoke", 176, *(a1 + 32), @"Datapth required security but missing related configuration. Invalidating suscriber", v42, v43, v53);
    v51 = *(a1 + 32);
    if (v51)
    {
      v52 = *(v51 + 64);
    }

    else
    {
      v52 = 0;
    }

    [v52 stop];
    goto LABEL_17;
  }

  v28 = *(a1 + 32);
  v29 = @"Endpoint does not support datapath";
  v30 = 153;
LABEL_22:

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController _startDataSessionWithDiscoveryResult:]_block_invoke", v30, v28, v29, v13, v14, a9);
}

void sub_100014234(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_100014244(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001430C;
    block[3] = &unk_100058D90;
    block[4] = a1;
    v11 = v6;
    v10 = v5;
    dispatch_async(v8, block);
  }
}

void sub_10001430C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (!v9 || v9[8] != 1)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startPublisherWithConfiguration:completionHandler:]_block_invoke", 202, v9, @"config=%@", a7, a8, *(a1 + 40));
    v15 = [WiFiAwarePublishConfiguration alloc];
    v16 = *(a1 + 40);
    if (v16)
    {
      v16 = v16[2];
    }

    v17 = v16;
    v14 = [v15 initWithServiceName:v17];

    v18 = *(a1 + 40);
    if (v18)
    {
      v18 = v18[3];
    }

    v19 = v18;
    v20 = [v19 passphrase];

    if (v20)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startPublisherWithConfiguration:completionHandler:]_block_invoke", 212, *(a1 + 32), @"Enabling passhprase security", v21, v22, v100);
      v23 = [WiFiAwarePublishDatapathSecurityConfiguration alloc];
      v24 = +[NSArray array];
      v25 = *(a1 + 40);
      if (v25)
      {
        v25 = v25[3];
      }

      v26 = v25;
      v27 = [v26 passphrase];
      v103 = v27;
      v28 = [NSArray arrayWithObjects:&v103 count:1];
      v29 = [v23 initWithPMKList:v24 passphraseList:v28];
LABEL_12:
      v30 = v29;

      goto LABEL_13;
    }

    v67 = *(a1 + 40);
    if (v67)
    {
      v68 = *(v67 + 48);
      if (v68)
      {
        v69 = v68;
        v70 = *(a1 + 40);
        if (v70)
        {
          v70 = v70[5];
        }

        v71 = v70;

        if (v71)
        {
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startPublisherWithConfiguration:completionHandler:]_block_invoke", 217, *(a1 + 32), @"Enabling cipher suite security", v72, v73, v100);
          v74 = *(a1 + 40);
          if (v74)
          {
            v74 = v74[6];
          }

          v75 = v74;
          sub_100014B64(*(a1 + 32), v75);

          v77 = *(a1 + 32);
          v76 = *(a1 + 40);
          if (v76)
          {
            v76 = v76[5];
          }

          v78 = v76;
          v79 = *(a1 + 32);
          if (v79)
          {
            v79 = v79[5];
          }

          v101 = 0;
          v102 = 0;
          v80 = v79;
          v81 = sub_100014B74(v77, 1, v78, v80, &v102, &v101);
          v30 = v102;
          v31 = v101;

          if (!v81)
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[WifiP2PController startPublisherWithConfiguration:completionHandler:]_block_invoke", 227, *(a1 + 32), @"Security info derivation failed", v82, v83, v100);
            v85 = *(a1 + 48);
            v104[0] = NSLocalizedDescriptionKey;
            v105[0] = off_100069A88;
            v86 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:1];
            v42 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:9 userInfo:v86];

            v66 = *(v85 + 16);
            goto LABEL_45;
          }

          v84 = [[WiFiAwarePublishDatapathSecurityConfiguration alloc] initWithPMK:v30 andPMKID:v31];

          v30 = v84;
LABEL_13:
          v31 = [[WiFiAwarePublishDatapathConfiguration alloc] initWithServiceType:1 securityConfiguration:v30];
          v32 = *(a1 + 40);
          if (v32)
          {
            v32 = v32[8];
          }

          v33 = v32;
          v34 = [v33 unsignedShortValue];

          if (v34)
          {
            v35 = [[WiFiAwarePublishDatapathServiceSpecificInfo alloc] initWithProtocolType:0 servicePort:v34];
            [v31 setServiceSpecificInfo:v35];
          }

          [v14 setDatapathConfiguration:v31];
          v36 = *(a1 + 40);
          if (v36)
          {
            v36 = v36[7];
          }

          v37 = v36;
          v38 = [v37 length];

          if (v38)
          {
            v39 = objc_opt_new();
            v40 = *(a1 + 40);
            if (v40)
            {
              v40 = v40[7];
            }

            v41 = v40;
            [v39 setBlob:v41];

            [v14 setServiceSpecificInfo:v39];
          }

          [v14 setAuthenticationType:0];
          v42 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.sts"];
          if ([v42 BOOLForKey:@"DisableWifiFastDiscovery"])
          {
            sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startPublisherWithConfiguration:completionHandler:]_block_invoke", 267, *(a1 + 32), @"Fast discovery disabled", v43, v44, v100);
          }

          else
          {
            v45 = *(a1 + 40);
            if (v45)
            {
              v45 = v45[4];
            }

            v46 = v45;

            if (v46)
            {
              v47 = objc_alloc_init(WiFiAwareFastDiscoveryConfiguration);
              v48 = *(a1 + 40);
              if (v48)
              {
                v48 = v48[4];
              }

              v49 = v48;
              v50 = [v49 channelNumber];
              [v47 setInstantCommunicationChannel:v50];

              v51 = *(a1 + 40);
              if (v51)
              {
                v51 = v51[4];
              }

              v52 = v51;
              v53 = [v52 supportedBands];
              [v47 setPeerBandInformation:{objc_msgSend(v53, "unsignedCharValue")}];

              [v14 setFastDiscoveryConfiguration:v47];
            }
          }

          v54 = *(a1 + 40);
          if (v54)
          {
            v54 = v54[2];
          }

          v55 = v54;
          sub_100014EB4(*(a1 + 32), v55);

          v56 = [[WiFiAwarePublisher alloc] initWithConfiguration:v14];
          v57 = *(a1 + 32);
          if (v57)
          {
            objc_storeStrong((v57 + 48), v56);
          }

          v58 = *(a1 + 32);
          if (v58)
          {
            v59 = *(v58 + 48);
          }

          else
          {
            v59 = 0;
          }

          [v59 setDelegate:?];
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startPublisherWithConfiguration:completionHandler:]_block_invoke", 282, *(a1 + 32), @"Starting P2P publisher", v60, v61, v100);
          v62 = *(a1 + 32);
          if (v62)
          {
            v63 = *(v62 + 48);
          }

          else
          {
            v63 = 0;
          }

          [v63 start];
          v64 = *(a1 + 32);
          if (v64)
          {
            *(v64 + 8) = 1;
          }

          v65 = *(a1 + 48);
          if (!v65)
          {
            goto LABEL_46;
          }

          v66 = *(v65 + 16);
LABEL_45:
          v66();
LABEL_46:

          goto LABEL_47;
        }
      }
    }

    v87 = *(a1 + 40);
    if (v87)
    {
      v87 = v87[3];
    }

    v88 = v87;
    v89 = [v88 datapathPmk];
    if ([v89 length])
    {
      v90 = *(a1 + 40);
      if (v90)
      {
        v90 = v90[3];
      }

      v91 = v90;
      v92 = [v91 datapathPmkID];
      v93 = [v92 length];

      if (v93)
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startPublisherWithConfiguration:completionHandler:]_block_invoke", 233, *(a1 + 32), @"Enabling explicit PMK", v94, v95, v100);
        v96 = [WiFiAwarePublishDatapathSecurityConfiguration alloc];
        v97 = *(a1 + 40);
        if (v97)
        {
          v97 = v97[3];
        }

        v24 = v97;
        v26 = [v24 datapathPmk];
        v98 = *(a1 + 40);
        if (v98)
        {
          v98 = v98[3];
        }

        v27 = v98;
        v28 = [v27 datapathPmkID];
        v29 = [v96 initWithPMK:v26 andPMKID:v28];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v30 = 0;
    goto LABEL_13;
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startPublisherWithConfiguration:completionHandler:]_block_invoke", 197, v9, @"Publisher has previously started", a7, a8, v99);
  v10 = *(a1 + 48);
  v106 = NSLocalizedDescriptionKey;
  v107 = off_100069B08;
  v11 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
  v12 = [NSError errorWithDomain:@"WifiDomain" code:1 userInfo:v11];

  v104[0] = NSLocalizedDescriptionKey;
  v104[1] = NSUnderlyingErrorKey;
  v105[0] = @"Wifi specific error";
  v105[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:2];
  v14 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v13];

  (*(v10 + 16))(v10, v14);
LABEL_47:
}

void sub_100014B64(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

uint64_t sub_100014B74(void *a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v13 = [ISOKey alloc];
    v14 = [v12 publicKey];
    v15 = sub_100008EF8(v13, v14);

    v52 = 0;
    v16 = sub_10000935C(ISOKey, v11, v15, 0, &v52);
    v17 = v52;
    if (v17)
    {
      v20 = v17;
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[WifiP2PController _derviveWifiKeysAsPublisher:transportKey:peerDHInfo:outPMK:outPMkId:]", 405, a1, @"Share secret compute failed: %@", v18, v19, v17);
      v53 = 0;
    }

    else
    {
      v48 = a5;
      v51 = 0;
      v21 = sub_1000098D0(ISOKey, v16, 0, 0, &v51);
      v22 = v51;
      if (v22)
      {
        v20 = v22;
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[WifiP2PController _derviveWifiKeysAsPublisher:transportKey:peerDHInfo:outPMK:outPMkId:]", 414, a1, @"Sym key hash generation failed: %@", v23, v24, v22);
        v53 = 0;
      }

      else
      {
        v43 = a6;
        v25 = [@"OWE Key Generation" dataUsingEncoding:4];
        if (a2)
        {
          v26 = v11;
        }

        else
        {
          v26 = v15;
        }

        if (a2)
        {
          v27 = v15;
        }

        else
        {
          v27 = v11;
        }

        v28 = sub_1000090A0(v26);
        v29 = sub_1000090A0(v27);
        v47 = v28;
        v30 = [[NSMutableData alloc] initWithData:v28];
        v46 = v29;
        [v30 appendData:v29];
        v50[0] = [v12 publicKeyGroup];
        v50[1] = [v12 publicKeyGroup] >> 8;
        [v30 appendBytes:v50 length:2];
        v49 = 0;
        v44 = v25;
        v45 = v21;
        v31 = sub_100009B7C(ISOKey, v21, v30, v25, 0, 32, &v49);
        v32 = v49;
        v20 = v32;
        if (v32)
        {
          v35 = 1;
        }

        else
        {
          v35 = v31 == 0;
        }

        v36 = !v35;
        if (v35)
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[WifiP2PController _derviveWifiKeysAsPublisher:transportKey:peerDHInfo:outPMK:outPMkId:]", 436, a1, @"HKDF error: %@", v33, v34, v32);
        }

        else
        {
          v37 = v31;
          *v48 = v31;
          v38 = [[NSMutableData alloc] initWithData:v47];
          [v38 appendData:v46];
          sub_10000921C(ISOKey, v38, 0);
          v40 = v39 = v36;
          *v43 = [v40 subdataWithRange:{0, 16}];

          v36 = v39;
        }

        v53 = v36;

        v21 = v45;
      }
    }

    v41 = v53;
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

void sub_100014EB4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_100014EC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014F8C;
    block[3] = &unk_100058D90;
    block[4] = a1;
    v11 = v6;
    v10 = v5;
    dispatch_async(v8, block);
  }
}

void sub_100014F8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[4];
  if (v9 && v9[9] == 1)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startSubscriberWithConfiguration:completionHandler:]_block_invoke", 294, v9, @"Subscribed has previously started...", a7, a8, v67);
    v10 = a1[6];
    v70 = NSLocalizedDescriptionKey;
    v71 = off_100069A50;
    v11 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v12 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v11];

    (*(v10 + 16))(v10, v12);
    goto LABEL_46;
  }

  v13 = [WiFiAwareSubscribeConfiguration alloc];
  v14 = a1[5];
  if (v14)
  {
    v14 = v14[2];
  }

  v15 = v14;
  v12 = [v13 initWithServiceName:v15];

  [v12 setAuthenticationType:0];
  v16 = a1[5];
  if (v16)
  {
    v16 = v16[4];
  }

  v17 = v16;

  if (v17)
  {
    v19 = a1[4];
    v18 = a1[5];
    if (v18)
    {
      v18 = v18[4];
    }

    v20 = v18;
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startSubscriberWithConfiguration:completionHandler:]_block_invoke", 304, v19, @"%@", v21, v22, v20);

    v23 = objc_alloc_init(WiFiAwareFastDiscoveryConfiguration);
    v24 = a1[5];
    if (v24)
    {
      v24 = v24[4];
    }

    v25 = v24;
    v26 = [v25 channelNumber];
    [v23 setInstantCommunicationChannel:v26];

    v27 = a1[5];
    if (v27)
    {
      v27 = v27[4];
    }

    v28 = v27;
    v29 = [v28 supportedBands];
    [v23 setPeerBandInformation:{objc_msgSend(v29, "unsignedCharValue")}];

    [v12 setFastDiscoveryConfiguration:v23];
  }

  v30 = a1[5];
  if (v30)
  {
    v30 = v30[2];
  }

  v31 = v30;
  sub_100014EB4(a1[4], v31);

  v32 = [[WiFiAwareSubscriber alloc] initWithConfiguration:v12];
  v33 = a1[4];
  if (v33)
  {
    objc_storeStrong((v33 + 64), v32);
  }

  v34 = a1[4];
  if (v34)
  {
    v35 = *(v34 + 64);
  }

  else
  {
    v35 = 0;
  }

  [v35 setDelegate:?];
  v36 = a1[5];
  if (v36)
  {
    v36 = v36[6];
  }

  v37 = v36;
  sub_100014B64(a1[4], v37);

  v38 = a1[5];
  if (v38)
  {
    v38 = v38[3];
  }

  v39 = v38;
  sub_1000154E4(a1[4], v39);

  v42 = a1[5];
  if (v42)
  {
    v43 = *(v42 + 40);
    if (v43)
    {
      v44 = v43;
      v45 = a1[5];
      if (v45)
      {
        v46 = *(v45 + 48);
        if (v46)
        {
          v47 = v46;
          v48 = a1[5];
          if (v48)
          {
            v48 = v48[3];
          }

          v49 = v48;

          if (v49)
          {
            goto LABEL_40;
          }

          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startSubscriberWithConfiguration:completionHandler:]_block_invoke", 321, a1[4], @"Derive PMK from peer DH info", v40, v41, v67);
          v51 = a1[4];
          v50 = a1[5];
          if (v50)
          {
            v50 = v50[5];
          }

          v52 = v50;
          v53 = a1[4];
          if (v53)
          {
            v53 = v53[5];
          }

          v68 = 0;
          v69 = 0;
          v54 = v53;
          v55 = sub_100014B74(v51, 0, v52, v54, &v69, &v68);
          v44 = v69;
          v56 = v68;

          if (!v55)
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[WifiP2PController startSubscriberWithConfiguration:completionHandler:]_block_invoke", 330, a1[4], @"Security info derivation failed", v57, v58, v67);
            v64 = a1[6];
            v70 = NSLocalizedDescriptionKey;
            v71 = off_100069A88;
            v65 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
            v66 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:9 userInfo:v65];

            (*(v64 + 16))(v64, v66);
            goto LABEL_46;
          }

          v59 = [[STSCHWiFiAwareSecurityInfo alloc] initWithPMK:v44 pmkID:v56];
          sub_1000154E4(a1[4], v59);
        }
      }
    }
  }

LABEL_40:
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController startSubscriberWithConfiguration:completionHandler:]_block_invoke", 337, a1[4], @"Starting P2P subscriber", v40, v41, v67);
  v60 = a1[4];
  if (v60)
  {
    v61 = *(v60 + 64);
  }

  else
  {
    v61 = 0;
  }

  [v61 start];
  v62 = a1[4];
  if (v62)
  {
    *(v62 + 9) = 1;
  }

  v63 = a1[6];
  if (v63)
  {
    (*(v63 + 16))(v63, 0);
  }

LABEL_46:
}

void sub_1000154E4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_1000154F4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015570;
    block[3] = &unk_100058A08;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_100015570(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_20;
  }

  if (*(v2 + 8) == 1)
  {
    v3 = *(v2 + 56);
    if (v3 && (v4 = *(v2 + 48), [v4 terminateDataSession:v3 completionHandler:0], v4, (v2 = *(a1 + 32)) == 0))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(v2 + 48);
    }

    [v5 stop];
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_20;
    }

    *(v6 + 8) = 0;
    v2 = *(a1 + 32);
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  if (*(v2 + 10) == 1)
  {
    [*(v2 + 72) stop];
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_20;
    }

    *(v7 + 10) = 0;
    v2 = *(a1 + 32);
    if (!v2)
    {
      goto LABEL_20;
    }
  }

  if (*(v2 + 9) != 1 || ([*(v2 + 64) stop], (v8 = *(a1 + 32)) != 0) && (*(v8 + 9) = 0, (v2 = *(a1 + 32)) != 0))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
LABEL_20:
    WeakRetained = 0;
  }

  v10 = WeakRetained;
  if (objc_opt_respondsToSelector())
  {
    [v10 wifiP2PControllerDidStop];
  }

  sub_1000154E4(*(a1 + 32), 0);
  sub_100014B64(*(a1 + 32), 0);
}

WifiP2PControllerProperties *sub_1000156AC()
{
  objc_opt_self();
  v3 = +[WiFiAwareDeviceCapabilities currentDeviceCapabilities];
  if (v3)
  {
    v4 = objc_alloc_init(WifiP2PControllerProperties);
    v5 = [v3 operatingChannel];
    v6 = v5;
    if (v4)
    {
      objc_storeStrong(&v4->_operatingChannel, v5);

      v4->_supportedBandsBitmap = [v3 supportedBands];
      v7 = [v3 supportedCipherSuites];
      objc_storeStrong(&v4->_supportedCiphterSuites, v7);

      v4->_operatingClass = 81;
    }

    else
    {

      [v3 supportedBands];
      [v3 supportedCipherSuites];
    }
  }

  else
  {
    sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "+[WifiP2PController hardwareProperties]", 378, @"Capabilities not available", v0, v1, v2, v9);
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10001588C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 10) = 1;
  }

  return result;
}

void sub_100015A4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ipv6LinkLocalAddress];
  v26 = sub_100013D10(v2, v3);

  v4 = sub_100013E04(*(a1 + 32), [*(a1 + 48) localInterfaceIndex]);
  v7 = v4;
  if (v26)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[WifiP2PController dataSession:confirmedForPeerDataAddress:serviceSpecificInfo:]_block_invoke", 475, *(a1 + 32), @"Can't establish datapath, stopping data set session", v5, v6, v25);
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 72);
    }

    else
    {
      v10 = 0;
    }

    [v10 stop];
  }

  else
  {
    v11 = [NSString stringWithFormat:@"%@%%%@", v26, v4];
    v13 = v11;
    v14 = *(a1 + 32);
    if (v14)
    {
      objc_setProperty_nonatomic_copy(v14, v12, v13, 80);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      WeakRetained = objc_loadWeakRetained((v17 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v19 servicePort]);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = v21[10];
    }

    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController dataSession:confirmedForPeerDataAddress:serviceSpecificInfo:]_block_invoke", 487, v21, @"MAC=%@, interface=%@, IPv6 Addr=%@, port=%@", v15, v16, v26);
    v23 = *(a1 + 32);
    if (v23)
    {
      v24 = *(v23 + 80);
    }

    else
    {
      v24 = 0;
    }

    [WeakRetained wifiP2PController:v23 didConnectTo:v24 port:v20];
  }
}

uint64_t sub_100015D08(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 10) = 0;
  }

  return result;
}

void sub_100015E04(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && (*(v3 + 10) = 0, (v4 = *(a1 + 32)) != 0) && (objc_setProperty_nonatomic_copy(v4, a2, 0, 80), (v5 = *(a1 + 32)) != 0))
  {
    WeakRetained = objc_loadWeakRetained((v5 + 16));
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    WeakRetained = 0;
  }

  v8 = [NSString stringWithFormat:@"termination reason=%ld", *(a1 + 40)];
  v15 = @"P2PError";
  v16 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v10 = [NSError errorWithDomain:@"WifiDomain" code:2 userInfo:v9];

  v13 = NSUnderlyingErrorKey;
  v14 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v11];

  [WeakRetained wifiP2PControllerDidDisconnect:v7 error:v12];
}

void sub_100016094(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  if (objc_opt_respondsToSelector())
  {
    [v4 wifiP2PController:*(a1 + 32) didStart:0];
  }
}

void sub_1000161F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  [v3 stop];
  v4 = *(a1 + 32);
  if (v4 && (*(v4 + 8) = 0, (v5 = *(a1 + 32)) != 0))
  {
    WeakRetained = objc_loadWeakRetained((v5 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = *(a1 + 32);
    v8 = [NSString stringWithFormat:@"error=%ld", *(a1 + 40)];
    v15 = @"P2PError";
    v16 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [NSError errorWithDomain:@"WifiDomain" code:2 userInfo:v9];

    v13 = NSUnderlyingErrorKey;
    v14 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v11];

    [WeakRetained wifiP2PController:v7 didStart:v12];
  }
}

uint64_t sub_10001649C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 8) = 0;
  }

  return result;
}

void sub_1000166E8(uint64_t a1)
{
  sub_1000168CC(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) initiatorDataAddress];
  v4 = [v3 ipv6LinkLocalAddress];
  v27 = sub_100013D10(v2, v4);

  v5 = sub_100013E04(*(a1 + 32), *(a1 + 56));
  v8 = v5;
  if (v27)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[WifiP2PController publisher:dataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:]_block_invoke", 585, *(a1 + 32), @"Can't establish datapath, force terminate", v6, v7, v26);
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 48);
    }

    else
    {
      v11 = 0;
    }

    [v11 terminateDataSession:*(a1 + 40) completionHandler:0];
  }

  else
  {
    v12 = [NSString stringWithFormat:@"%@%%%@", v27, v5];
    v14 = v12;
    v15 = *(a1 + 32);
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v13, v14, 80);
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      WeakRetained = objc_loadWeakRetained((v18 + 16));
    }

    else
    {
      WeakRetained = 0;
    }

    v20 = *(a1 + 48);
    if (v20)
    {
      v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v20 servicePort]);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = v22[10];
    }

    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController publisher:dataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:]_block_invoke", 596, v22, @"MAC=%@, interface=%@, IPv6 Addr=%@, port=%@", v16, v17, v27);
    v24 = *(a1 + 32);
    if (v24)
    {
      v25 = *(v24 + 80);
    }

    else
    {
      v25 = 0;
    }

    [WeakRetained wifiP2PController:v24 didConnectTo:v25 port:v21];
  }
}

void sub_1000168CC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_1000169D4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, a2, 0, 80);
    v3 = *(a1 + 32);
  }

  sub_1000168CC(v3, 0);
  v4 = *(a1 + 32);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
    WeakRetained = 0;
  }

  v7 = [NSString stringWithFormat:@"termination reason=%ld", *(a1 + 40)];
  v14 = @"P2PError";
  v15 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9 = [NSError errorWithDomain:@"WifiDomain" code:2 userInfo:v8];

  v12 = NSUnderlyingErrorKey;
  v13 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v11 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v10];

  [WeakRetained wifiP2PControllerDidDisconnect:v6 error:v11];
}

void sub_100016D30(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 9) = 0, (v3 = *(a1 + 32)) != 0))
  {
    WeakRetained = objc_loadWeakRetained((v3 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 32);
    v6 = [NSString stringWithFormat:@"error=%ld", *(a1 + 40)];
    v13 = @"P2PError";
    v14 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [NSError errorWithDomain:@"WifiDomain" code:2 userInfo:v7];

    v11 = NSUnderlyingErrorKey;
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v9];

    [WeakRetained wifiP2PController:v5 didStart:v10];
  }
}

void sub_100016FC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 10) == 1)
  {
    [*(v1 + 72) stop];
    v4 = *(a1 + 32);
    if (v4 && (*(v4 + 10) = 0, (v5 = *(a1 + 32)) != 0) && (objc_setProperty_nonatomic_copy(v5, v3, 0, 80), (v6 = *(a1 + 32)) != 0))
    {
      WeakRetained = objc_loadWeakRetained((v6 + 16));
      v8 = *(a1 + 32);
    }

    else
    {
      v8 = 0;
      WeakRetained = 0;
    }

    v15 = NSLocalizedDescriptionKey;
    v16 = STSWifiErrorDescriptions;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [NSError errorWithDomain:@"WifiDomain" code:0 userInfo:v9];

    v13[0] = NSLocalizedDescriptionKey;
    v13[1] = NSUnderlyingErrorKey;
    v14[0] = @"Wifi specific error";
    v14[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    v12 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v11];

    [WeakRetained wifiP2PControllerDidDisconnect:v8 error:v12];
  }
}

uint64_t sub_100017380(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 9) = 0;
  }

  return result;
}

_BYTE *sub_100017430(_BYTE *result, char a2)
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = ISOPeripheral;
    result = objc_msgSendSuper2(&v3, "initWithWorkQueue:callbackQueue:");
    if (result)
    {
      result[136] = a2;
    }
  }

  return result;
}

id sub_10001748C(id result, uint64_t a2)
{
  if (result)
  {
    v2.receiver = result;
    v2.super_class = ISOPeripheral;
    return objc_msgSendSuper2(&v2, "writeData:toUUID:", a2, @"00000003-A123-48CE-896B-4C76973373E6");
  }

  return result;
}

HTTPServerProtocolH1 *sub_10001790C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  objc_opt_self();
  v10 = [HTTPServerProtocolH1 alloc];
  v11 = v9;
  v12 = v8;
  v13 = v7;
  if (v10)
  {
    v16.receiver = v10;
    v16.super_class = HTTPServerProtocolH1;
    v14 = objc_msgSendSuper2(&v16, "init");
    v10 = v14;
    if (v14)
    {
      objc_storeWeak(&v14->_connectionHandle, v11);
      objc_storeWeak(&v10->_responseHandler, v12);
      objc_storeStrong(&v10->_workQueue, a4);
    }
  }

  return v10;
}

void sub_100017A1C(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    a1[6] = 0;

    a1[7] = 0;
    v3 = a1[3];
    if (v3 && dispatch_data_get_size(v3))
    {

      sub_100017AB4(a1);
    }

    else
    {

      sub_100017F98(a1);
    }
  }
}

void sub_100017AB4(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 24);
  if (!v2 || !dispatch_data_get_size(v2))
  {
    goto LABEL_27;
  }

  v3 = *(a1 + 48);
  if (!v3 || (v4 = *(a1 + 56), v3, v4 < 1))
  {
    buffer_ptr = 0;
    size_ptr = 0;
    v5 = dispatch_data_create_map(*(a1 + 24), &buffer_ptr, &size_ptr);
    v6 = [NSData dataWithBytesNoCopy:buffer_ptr length:size_ptr freeWhenDone:0];
    v7 = [@"\r\n\r\n" dataUsingEncoding:4];
    v8 = [v6 rangeOfData:v7 options:0 range:{0, objc_msgSend(v6, "length")}];
    v10 = v9;

    if (v8 == 0x7FFFFFFFFFFFFFFFLL && !v10)
    {

      goto LABEL_27;
    }

    v11 = [NSString alloc];
    v12 = v8 + v10;
    v13 = [v6 subdataWithRange:{0, v12}];
    v14 = [v11 initWithData:v13 encoding:4];

    v15 = [v6 length] - v12;
    v16 = *(a1 + 24);
    if (v15 < 1)
    {
      subrange = 0;
    }

    else
    {
      subrange = dispatch_data_create_subrange(v16, v12, v15);
      v16 = *(a1 + 24);
    }

    *(a1 + 24) = subrange;

    block = _NSConcreteStackBlock;
    v43 = 3221225472;
    v44 = sub_100018604;
    v45 = &unk_100058E30;
    v46 = a1;
    [v14 enumerateLinesUsingBlock:&block];
    v18 = [*(a1 + 48) valueForHTTPHeaderField:@"Content-Length"];
    v19 = v18;
    if (v18)
    {
      *(a1 + 56) = [v18 integerValue];
    }

    else
    {
      v20 = [*(a1 + 48) valueForHTTPHeaderField:@"Connection"];
      v21 = [v20 caseInsensitiveCompare:@"close"];

      if (v21)
      {
        *(a1 + 56) = 0;
      }

      else
      {
        *(a1 + 56) = -1;
      }
    }
  }

  if (!*(a1 + 48))
  {
    goto LABEL_27;
  }

  v22 = *(a1 + 56);
  if (v22 == -1)
  {
    if (*(a1 + 8) == 1)
    {
      v29 = *(a1 + 24);
      goto LABEL_31;
    }

LABEL_27:
    if ((*(a1 + 8) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));

      if (WeakRetained)
      {
        v31 = *(a1 + 40);
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1000185FC;
        v41[3] = &unk_100058A08;
        v41[4] = a1;
        dispatch_async(v31, v41);
      }
    }

    return;
  }

  if (!v22)
  {
LABEL_34:
    v34 = 0;
    goto LABEL_35;
  }

  v23 = *(a1 + 24);
  if (!v23 || dispatch_data_get_size(v23) < v22)
  {
    goto LABEL_27;
  }

  v24 = *(a1 + 24);
  if (v22 > dispatch_data_get_size(v24))
  {
    v22 = dispatch_data_create_subrange(v24, 0, v22);
    v25 = *(a1 + 24);
    v26 = *(a1 + 56);
    size = dispatch_data_get_size(v25);
    v28 = dispatch_data_create_subrange(v25, v26, size - v26);
    goto LABEL_32;
  }

  v29 = v24;
LABEL_31:
  v22 = v29;
  v28 = 0;
LABEL_32:
  v32 = *(a1 + 24);
  *(a1 + 24) = v28;

  if (!v22)
  {
    goto LABEL_34;
  }

  buffer_ptr = 0;
  size_ptr = 0;
  v33 = dispatch_data_create_map(v22, &buffer_ptr, &size_ptr);
  v34 = [NSData dataWithBytes:buffer_ptr length:size_ptr];

LABEL_35:
  [*(a1 + 48) setHTTPBody:v34];
  v35 = objc_loadWeakRetained((a1 + 32));
  v36 = objc_loadWeakRetained((a1 + 16));
  if (objc_opt_respondsToSelector())
  {
    [v35 processRequest:*(a1 + 48) connection:v36];
  }

  else if (objc_opt_respondsToSelector())
  {
    v39 = [v35 responseForRequest:*(a1 + 48)];
    sub_100018058(a1, v39, 0);
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[HTTPServerProtocolH1 _requestFinish]", 173, a1, @"Unexpected state; dropping input", v37, v38, v41[0]);
    if ((*(a1 + 8) & 1) == 0 && v36)
    {
      v40 = *(a1 + 40);
      block = _NSConcreteStackBlock;
      v43 = 3221225472;
      v44 = sub_100018128;
      v45 = &unk_100058A08;
      v46 = a1;
      dispatch_async(v40, &block);
    }
  }
}

void sub_100017F98(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      if ((*(a1 + 8) & 1) == 0)
      {
        v4 = WeakRetained[2];
        completion[0] = _NSConcreteStackBlock;
        completion[1] = 3221225472;
        completion[2] = sub_100018860;
        completion[3] = &unk_100058E58;
        completion[4] = a1;
        nw_connection_receive(v4, 1u, 0x203A0u, completion);
      }
    }
  }
}

void sub_100018058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    sub_100018130(a1, v5, v6);
    if ((*(a1 + 8) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));

      if (WeakRetained)
      {
        v8 = *(a1 + 40);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000185F4;
        block[3] = &unk_100058A08;
        block[4] = a1;
        dispatch_async(v8, block);
      }
    }
  }
}

void sub_100018130(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v43 = WeakRetained;
      v44 = v6;
      v45 = v5;
      v9 = v5;
      v10 = [v9 response];
      v11 = [v10 statusCode];
      v12 = [v9 response];
      v13 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [v12 statusCode]);
      v14 = [NSString stringWithFormat:@"HTTP/1.1 %ld %@\r\n", v11, v13];

      v42 = v14;
      v15 = [v14 dataUsingEncoding:4];
      v41 = [v15 _createDispatchData];

      v16 = [v9 response];
      v17 = [v16 allHeaderFields];

      v18 = +[NSMutableString string];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v50 objects:v49 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v51;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v51 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v50 + 1) + 8 * i);
            v25 = [v19 objectForKeyedSubscript:v24];
            [v18 appendFormat:@"%@: %@\r\n", v24, v25];
          }

          v21 = [v19 countByEnumeratingWithState:&v50 objects:v49 count:16];
        }

        while (v21);
      }

      [v18 appendFormat:@"\r\n"];
      v26 = v41;
      v27 = [v18 dataUsingEncoding:4];
      v28 = [v27 _createDispatchData];

      concat = dispatch_data_create_concat(v26, v28);
      if ([v9 bodyType] == 1)
      {
        v30 = concat;

        v31 = [v9 bodyData];
        v32 = [v31 _createDispatchData];

        concat = dispatch_data_create_concat(v30, v32);
        v26 = v30;
      }

      else
      {
        [v9 bodyType];
      }

      v34 = *(a1 + 8) == 1 && *(a1 + 24) == 0;
      v6 = v44;
      v5 = v45;
      v8 = v43;
      v35 = [v9 response];
      v36 = [v35 allHeaderFields];

      v37 = [v36 objectForKeyedSubscript:@"Connection"];
      v38 = v37;
      if (v34)
      {
        v39 = 1;
      }

      else if (v37)
      {
        v39 = [v37 caseInsensitiveCompare:@"close"] == 0;
      }

      else
      {
        v39 = 0;
      }

      v40 = v43[2];
      completion[0] = _NSConcreteStackBlock;
      completion[1] = 3221225472;
      completion[2] = sub_100018938;
      completion[3] = &unk_100058E80;
      v48 = v39;
      completion[4] = a1;
      completion[5] = v43;
      v47 = v44;
      nw_connection_send(v40, concat, _nw_content_context_default_stream, v39, completion);
    }

    else
    {
      if (!v6)
      {
LABEL_25:

        goto LABEL_26;
      }

      *&v50 = NSLocalizedDescriptionKey;
      v49[0] = off_100069A50;
      v33 = [NSDictionary dictionaryWithObjects:v49 forKeys:&v50 count:1];
      concat = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v33];

      (*(v6 + 2))(v6, 0, concat);
    }

    goto LABEL_25;
  }

LABEL_26:
}

uint64_t sub_100018604(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v24 = v3;
  if (v4 && *(v4 + 48))
  {
    if (![v3 length])
    {
      goto LABEL_16;
    }

    v5 = [v24 rangeOfString:@":"];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL || v6 != 1)
    {
      __assert_rtn("[HTTPServerProtocolH1 _requestParse]_block_invoke", "HTTPServerProtocolH1.m", 313, "delimRange.location != NSNotFound && delimRange.length == 1");
    }

    v7 = v5;
    v8 = [v24 substringToIndex:v5];
    v9 = +[NSCharacterSet whitespaceCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];

    v11 = [v24 substringFromIndex:v7 + 1];
    v12 = +[NSCharacterSet whitespaceCharacterSet];
    v13 = [v11 stringByTrimmingCharactersInSet:v12];

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 48);
    }

    else
    {
      v15 = 0;
    }

    [v15 addValue:v13 forHTTPHeaderField:v10];
  }

  else
  {
    v16 = +[NSCharacterSet whitespaceCharacterSet];
    v10 = [v24 componentsSeparatedByCharactersInSet:v16];

    if ([v10 count] != 3)
    {
      __assert_rtn("[HTTPServerProtocolH1 _requestParse]_block_invoke", "HTTPServerProtocolH1.m", 298, "[pieces count] == 3");
    }

    v13 = [v10 objectAtIndexedSubscript:0];
    v17 = [v10 objectAtIndexedSubscript:1];
    v18 = [NSURL URLWithString:v17];
    v19 = [NSMutableURLRequest requestWithURL:v18];
    v20 = *(a1 + 32);
    if (v20)
    {
      objc_storeStrong((v20 + 48), v19);
    }

    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = *(v21 + 48);
    }

    else
    {
      v22 = 0;
    }

    [v22 setHTTPMethod:v13];
  }

LABEL_16:

  return _objc_release_x1();
}

void sub_100018860(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  data2 = a2;
  v9 = a3;
  v10 = a5;
  if (data2)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    if (v12)
    {
      concat = dispatch_data_create_concat(v12, data2);
      v14 = *(a1 + 32);
      v15 = *(v14 + 24);
      *(v14 + 24) = concat;
    }

    else
    {
      v16 = data2;
      v15 = *(v11 + 24);
      *(v11 + 24) = v16;
    }
  }

  if (v10 || a4)
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      *(v17 + 8) = 1;
    }
  }

  sub_100017AB4(*(a1 + 32));
}

uint64_t sub_100018938(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  v12 = v3;
  if (v3 || (*(a1 + 56) & 1) != 0)
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[HTTPServerProtocolH1 _writeResponse:completion:]_block_invoke", 476, *(a1 + 32), @"Ending connection, error=%@", v4, v5, v3);
    v7 = *(a1 + 40);
    if (v7)
    {
      v7 = v7[2];
    }

    v8 = v7;
    nw_connection_cancel(v8);

    v6 = v12;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    if (v6)
    {
      v10 = nw_error_copy_cf_error(v6);
      v9 = *(a1 + 48);
    }

    else
    {
      v10 = 0;
    }

    (*(v9 + 16))(v9, *(a1 + 40), v10);
  }

  return _objc_release_x1();
}

id sub_100018A70(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [[NSMutableData alloc] initWithData:v3];

    [v4 appendData:v2];
    v2 = [v4 copy];
  }

  return v2;
}

uint64_t sub_100018BC0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (!a1)
  {
    goto LABEL_16;
  }

  os_unfair_lock_lock((a1 + 12));
  v8 = *(a1 + 8);
  os_unfair_lock_unlock((a1 + 12));
  if (v8 == 1)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[BLESender writeData:usingSender:]", 71, a1, @"Sender already invalidated. ", v9, v10, v21);
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v11 = [v6 length];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[BLESender writeData:usingSender:]", 77, a1, @"LE: writing %lu bytes", v12, v13, v11);
  objc_storeStrong((a1 + 40), a2);
  v14 = objc_retainBlock(v7);
  v15 = *(a1 + 48);
  *(a1 + 48) = v14;

  v16 = sub_100024AE0();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BT_SendData", &unk_10005485E, buf, 2u);
  }

  if (*(a1 + 24))
  {
    sub_100018DE0(a1);
  }

  else if (!*(a1 + 16) || !sub_10001902C(a1))
  {
    v19 = sub_100024AE0();
    if (os_signpost_enabled(v19))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BT_SendData", "Write failure", v22, 2u);
    }

    goto LABEL_16;
  }

  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v17 = sub_100024AE0();
  if (os_signpost_enabled(v17))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BT_SendData", "Success", v23, 2u);
  }

  v18 = 1;
LABEL_17:

  return v18;
}

void sub_100018DE0(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 12));
  v23 = 0;
  v2 = *(a1 + 10) - 1;
  v3 = sub_1000194A8(a1, 0, v2, &v23);
  v4 = 0;
  v5 = [*(a1 + 40) length] != 0;
  while (1)
  {
    v6 = sub_10001945C(v23);
    v7 = sub_100018A70(v3, v6);

    v8 = [*(a1 + 24) outputStream];
    v9 = [v8 write:objc_msgSend(v7 maxLength:{"bytes"), objc_msgSend(v7, "length")}];

    if (v9 <= 0)
    {
      break;
    }

    v4 += [v3 length];
    v21 = sub_1000194A8(a1, v4, v2, &v23);

    v14 = v21;
    if (v21)
    {
      if (v4 != v5)
      {
        v3 = v21;
        if (*(a1 + 8) != 1)
        {
          continue;
        }
      }
    }

    goto LABEL_11;
  }

  if (*(a1 + 8) == 1)
  {
    v15 = @"LE: L2CAP Tx Invalidated";
    v16 = OS_LOG_TYPE_INFO;
    v17 = 174;
  }

  else
  {
    v15 = @"LE: L2CAP write error";
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 176;
  }

  sub_10002483C(v16, 0, "[BLESender sendL2CAPData]", v17, a1, v15, v10, v11, v21);

  v14 = v3;
LABEL_11:
  if (v4 == v5)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[BLESender sendL2CAPData]", 181, a1, @"LE: Done TX", v12, v13, v14);
    v18 = *(a1 + 40);
    *(a1 + 40) = 0;

    os_unfair_lock_unlock((a1 + 12));
    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[BLESender sendL2CAPData]", 186, a1, @"Failed to TX.. buffer full .. returning true", v12, v13, v14);
    v19 = [*(a1 + 40) subdataWithRange:{v4, objc_msgSend(*(a1 + 40), "length") - v4}];
    v20 = *(a1 + 40);
    *(a1 + 40) = v19;

    os_unfair_lock_unlock((a1 + 12));
  }
}

uint64_t sub_10001902C(uint64_t a1)
{
  v20 = 0;
  v2 = *(a1 + 10) - 1;
  v3 = sub_1000194A8(a1, 0, v2, &v20);
  v4 = 0;
  if (!v3)
  {
    goto LABEL_19;
  }

  LODWORD(v5) = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = [v3 length];
    if ((v6 & 1) != 0 || (v7 & 1) != 0 || !v8)
    {
      break;
    }

    v11 = sub_10001945C(v20);
    v12 = sub_100018A70(v3, v11);

    os_unfair_lock_lock((a1 + 12));
    v7 = *(a1 + 8);
    if (v7)
    {
      v6 = 0;
    }

    else
    {
      if (((*(*(a1 + 48) + 16))() & 1) == 0)
      {
        v16 = [*(a1 + 40) subdataWithRange:{v5, objc_msgSend(*(a1 + 40), "length") - v5}];
        v17 = *(a1 + 40);
        *(a1 + 40) = v16;

        v6 = 0;
LABEL_13:

        v3 = 0;
        v4 = 1;
        goto LABEL_14;
      }

      v5 = v5 + [v3 length];
      v13 = sub_1000194A8(a1, v5, v2, &v20);

      if (!v13)
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[BLESender sendTruncatedData]", 227, a1, @"LE: Done TX", v14, v15, v19);
        v3 = *(a1 + 40);
        *(a1 + 40) = 0;
        v6 = 1;
        goto LABEL_13;
      }

      v6 = 0;
      v4 = 1;
      v3 = v13;
    }

LABEL_14:
    os_unfair_lock_unlock((a1 + 12));
  }

  while (v3);
  if (v7)
  {
    v4 = 1;
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[BLESender sendTruncatedData]", 236, a1, @"LE: Tx Invalidated", v9, v10, v19);
  }

  else if (v6)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

LABEL_19:

  return v4 & 1;
}

void *sub_100019224(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[BLESender invalidate]", 101, result, &stru_100059C08, a7, a8, v10);
    os_unfair_lock_lock(v8 + 3);
    *(v8 + 8) = 1;
    os_unfair_lock_unlock(v8 + 3);
    v9 = *(v8 + 4);

    return dispatch_semaphore_signal(v9);
  }

  return result;
}

BOOL sub_10001929C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 12));
  v2 = [*(a1 + 40) length] != 0;
  os_unfair_lock_unlock((a1 + 12));
  return v2;
}

void sub_10001934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 12));
  v10 = *(a1 + 8);
  v11 = [*(a1 + 40) length];
  os_unfair_lock_unlock((a1 + 12));
  if (v10 == 1)
  {
    v14 = @"Session invalidated";
    v15 = 133;
LABEL_10:

    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[BLESender spaceIsAvailable]", v15, a1, v14, v12, v13, a9);
    return;
  }

  if (!v11)
  {
    v14 = @"Data unavailable";
    v15 = 137;
    goto LABEL_10;
  }

  if (*(a1 + 24))
  {

    sub_100018DE0(a1);
  }

  else if (*(a1 + 16))
  {

    sub_10001902C(a1);
  }
}

id sub_10001945C(char a1)
{
  v3 = a1 ^ 1;
  v1 = [NSData dataWithBytes:&v3 length:1];

  return v1;
}

id sub_1000194A8(uint64_t a1, unint64_t a2, int a3, BOOL *a4)
{
  LODWORD(v5) = a3;
  if ([*(a1 + 40) length] <= a2)
  {
    v10 = 0;
  }

  else
  {
    v8 = (a2 + v5);
    if ([*(a1 + 40) length] >= v8)
    {
      v5 = v5;
      *a4 = [*(a1 + 40) length] == v8;
      v9 = *(a1 + 40);
    }

    else
    {
      *a4 = 1;
      v9 = *(a1 + 40);
      v5 = [v9 length] - a2;
    }

    v10 = [v9 subdataWithRange:{a2, v5}];
  }

  return v10;
}

void sub_10001A898(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v29 = a2;
  v7 = a3;
  v8 = [v29 string];

  if (v8)
  {
    v9 = [v29 string];
  }

  else
  {
    if (![v29 isWholeNumber])
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOReaderEngagement initWithData:type:]_block_invoke", 55, *(a1 + 32), @"Unexpected key type: %@", v10, v11, v29);
      *a4 = 1;
      goto LABEL_15;
    }

    v9 = [v29 numeric];
  }

  v12 = v9;
  v13 = [v9 integerValue];

  if (v13)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISOReaderEngagement initWithData:type:]_block_invoke", 76, *(a1 + 32), @"Proprietary info: key=%@, value=%@", v14, v15, v29);
  }

  else
  {
    v16 = [NSString stringWithFormat:@"%ld.%ld"];
    v17 = [v7 string];
    if (!v17 || (v20 = v17, [v7 string], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v16), v21, v20, (v22 & 1) == 0))
    {
      sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISOReaderEngagement initWithData:type:]_block_invoke", 65, *(a1 + 32), @"device engagement version mismatch", v18, v19, 1);
      v23 = [v7 string];
      v24 = [NSDecimalNumber decimalNumberWithString:v23];

      v25 = [v24 integerValue];
      v28 = *(a1 + 32);
      if (v25 == 1)
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISOReaderEngagement initWithData:type:]_block_invoke", 72, v28, @"Minor version mismatch. Version %@. Proceeding further", v26, v27, v7);
      }

      else
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOReaderEngagement initWithData:type:]_block_invoke", 69, v28, @"Unsupported device engagement version %@", v26, v27, v7);
        *a4 = 1;
      }
    }
  }

LABEL_15:
}

void sub_10001AD74(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 string];

  if (v9)
  {
    v10 = [v7 string];
  }

  else
  {
    if (![v7 isWholeNumber])
    {
      v36 = *(a1 + 32);
      v39 = v7;
      v37 = @"Unexpected key type: %@";
      v38 = 148;
      goto LABEL_28;
    }

    v10 = [v7 numeric];
  }

  v13 = v10;
  v14 = [v10 integerValue];

  if (v14 != -1)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[UnifiedAccessReaderEngagement initWithData:]_block_invoke", 169, *(a1 + 32), @"Proprietary info: key=%@, value=%@", v15, v16, v7);
    goto LABEL_29;
  }

  if ([v8 type] != 4 || (objc_msgSend(v8, "array"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, !v18))
  {
    v36 = *(a1 + 32);
    v37 = @"Invalid cipher suites";
    v38 = 155;
LABEL_28:
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessReaderEngagement initWithData:]_block_invoke", v38, v36, v37, v11, v12, v39);
    *a4 = 1;
    goto LABEL_29;
  }

  v41 = v7;
  v19 = objc_alloc_init(NSMutableArray);
  sub_10001B088(*(a1 + 32), v19);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = v8;
  v20 = [v8 array];
  v21 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v43;
    do
    {
      v24 = 0;
      do
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v42 + 1) + 8 * v24);
        v26 = [v25 isWholeNumber];
        v29 = *(a1 + 32);
        if (v26)
        {
          if (v29)
          {
            v30 = v29[4];
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;
          v32 = [v25 numeric];
          [v31 addObject:v32];
        }

        else
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessReaderEngagement initWithData:]_block_invoke", 162, v29, @"Invalid cipher suite: %@", v27, v28, v25);
        }

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v33 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
      v22 = v33;
    }

    while (v33);
  }

  v34 = *(a1 + 32);
  if (v34)
  {
    v34 = v34[4];
  }

  v7 = v41;
  v35 = v34;
  *(*(*(a1 + 40) + 8) + 24) = [v35 count] != 0;

  v8 = v40;
LABEL_29:
}

void sub_10001B088(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

UnifiedAccessReaderEngagement *sub_10001B0A0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [UnifiedAccessReaderEngagement alloc];
  v4 = v2;
  if (v3)
  {
    v18.receiver = v3;
    v18.super_class = UnifiedAccessReaderEngagement;
    v5 = objc_msgSendSuper2(&v18, "initWithData:type:", v4, 0);
    v6 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v7 = [v5 cborObj];
    v8 = [v7 dictionary];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001AD74;
    v11[3] = &unk_100058ED0;
    v9 = v6;
    v12 = v9;
    v13 = &v14;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];

    LOBYTE(v7) = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
    if ((v7 & 1) == 0)
    {
      v3 = 0;
    }

    else
    {
LABEL_4:
      v9 = v6;
      v3 = v9;
    }
  }

  else
  {
    v9 = 0;
  }

  return v3;
}

void sub_10001B228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

STSWifiHandoverConnectionHandle *sub_10001B664(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_self();
  v7 = [STSWifiHandoverConnectionHandle alloc];
  v8 = v6;
  v9 = v5;
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = STSWifiHandoverConnectionHandle;
    v10 = objc_msgSendSuper2(&v12, "init");
    v7 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_connection, a3);
      objc_storeWeak(&v7->_session, v8);
    }
  }

  return v7;
}

id sub_10001B740(nw_connection_t *a1)
{
  if (a1)
  {
    v2 = nw_connection_copy_endpoint(a1[2]);
    v5 = v2;
    if (v2)
    {
      type = nw_endpoint_get_type(v2);
      if (type == nw_endpoint_type_url)
      {
        url = nw_endpoint_get_url(v5);
        if (url)
        {
          v9 = [NSString stringWithUTF8String:url];
          v10 = [NSURLComponents componentsWithString:v9];
          goto LABEL_12;
        }

        v15 = @"Fail to obtain URL string";
        v16 = 77;
      }

      else
      {
        if (type != nw_endpoint_type_address)
        {
LABEL_9:
          v17 = 0;
LABEL_13:

          goto LABEL_14;
        }

        v7 = nw_endpoint_copy_address_string(v5);
        if (v7)
        {
          v8 = v7;
          v9 = [NSString stringWithUTF8String:v7];
          free(v8);
          v10 = objc_alloc_init(NSURLComponents);
          [v10 setScheme:@"http"];
          v11 = [NSString stringWithFormat:@"[%@]", v9];
          v12 = +[NSCharacterSet URLHostAllowedCharacterSet];
          v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];
          [v10 setEncodedHost:v13];

          v14 = [NSNumber numberWithInt:nw_endpoint_get_port(v5)];
          [v10 setPort:v14];

LABEL_12:
          v17 = [v10 URL];

          goto LABEL_13;
        }

        v15 = @"Fail to obtain address string";
        v16 = 54;
      }
    }

    else
    {
      v15 = @"Fail to obtain endpoint";
      v16 = 44;
    }

    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiHandoverConnectionHandle remoteEndpoint]", v16, a1, v15, v3, v4, v20);
    goto LABEL_9;
  }

  v17 = 0;
LABEL_14:

  return v17;
}

void sub_10001B964(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    sub_100025618(WeakRetained, v6, *(a1 + 16), v5);
  }
}

void sub_10001B9E8(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    sub_1000259F4(WeakRetained, *(a1 + 16), v3);
  }
}

void sub_10001BA50(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v7 = a3;
  if (a1)
  {
    if (*(a1 + 24))
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverConnectionHandle startHTTPServerWithDelegate:queue:]", 109, a1, @"Handle already init'ed", v5, v6, v10);
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverConnectionHandle startHTTPServerWithDelegate:queue:]", 115, a1, @"Starting HTTP server on connection %@", v5, v6, *(a1 + 16));
      v8 = sub_10001790C(HTTPServerProtocolH1, a1, v11, v7);
      v9 = *(a1 + 24);
      *(a1 + 24) = v8;

      [*(a1 + 24) start];
    }
  }
}

void sub_10001BB34(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v9 = a1[3];
    if (a1[3])
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10001BE3C;
      v15[3] = &unk_100058F20;
      v15[4] = a1;
      v16 = v6;
      sub_100018058(v9, v5, v15);
      v10 = v16;
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiHandoverConnectionHandle httpReply:completion:]", 132, a1, @"Server not started", v7, v8, v15[0]);
      if (!v6)
      {
LABEL_9:

        goto LABEL_10;
      }

      WeakRetained = objc_loadWeakRetained(a1 + 1);
      v12 = WeakRetained;
      if (WeakRetained)
      {
        v13 = *(WeakRetained + 6);
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001BCC0;
      block[3] = &unk_100058F48;
      block[4] = v9;
      v18 = v6;
      dispatch_async(v14, block);

      v10 = v18;
    }

    goto LABEL_9;
  }

LABEL_10:
}

void sub_10001BCC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v10 = NSLocalizedDescriptionKey;
  v11 = off_100069B20;
  v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v5 = [NSError errorWithDomain:@"WifiDomain" code:4 userInfo:v4];

  v8[0] = NSLocalizedDescriptionKey;
  v8[1] = NSUnderlyingErrorKey;
  v9[0] = @"Wifi specific error";
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  v7 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v6];

  (*(v2 + 16))(v2, WeakRetained, v7);
}

void sub_10001BE3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(v7 + 1);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v7 = WeakRetained[6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BF54;
  block[3] = &unk_100058EF8;
  v11 = *(a1 + 40);
  v16 = v6;
  v17 = v11;
  v15 = v5;
  v12 = v6;
  v13 = v5;
  dispatch_async(v10, block);
}

void sub_10001BF6C(uint64_t a1)
{
  if (a1)
  {
    nw_connection_cancel(*(a1 + 16));
    [*(a1 + 24) stop];
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

id *sub_10001C008(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [CBOR decodeFromData:v2];

  if (!v3 || [v3 type] != 5)
  {
    sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[ISOSessionEstablishment decodeFromData:]", 22, @"Invalid ISOSessionEstablishment", v4, v5, v6, v25);
    v16 = 0;
    goto LABEL_15;
  }

  v7 = [v3 dictionary];
  v8 = [CBOR cborWithUTF8String:@"eReaderKey"];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v15 = 0;
LABEL_8:
    v17 = [v3 dictionary];
    v18 = [CBOR cborWithUTF8String:@"data"];
    v19 = [v17 objectForKey:v18];

    if (v19 && [v19 type] == 2)
    {
      v23 = [v19 data];
      v16 = sub_10001C230([ISOSessionEstablishment alloc], v15, v23);
    }

    else
    {
      sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[ISOSessionEstablishment decodeFromData:]", 38, @"Invalid Data type", v20, v21, v22, v25);
      v16 = 0;
    }

    goto LABEL_14;
  }

  if ([v9 type] == 2)
  {
    v13 = [COSEKey alloc];
    v14 = [v9 data];
    v15 = [v13 initWithData:v14];

    goto LABEL_8;
  }

  sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[ISOSessionEstablishment decodeFromData:]", 29, @"Unexpected DeviceKey type", v10, v11, v12, v25);
  v16 = 0;
LABEL_14:

LABEL_15:

  return v16;
}

id *sub_10001C230(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = ISOSessionEstablishment;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

id *sub_10001C2CC(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [NSMutableDictionary alloc];
    v3 = [CBOR cborWithUTF8String:@"data"];
    v13 = v3;
    v4 = v1[2];
    v5 = [CBOR cborWithData:v4];
    v14 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v7 = [v2 initWithDictionary:v6];

    if (v1[1])
    {
      v8 = [NSData dataWithCOSEKey:?];
      v9 = [v8 cborEncodeToBstrCbor];
      v10 = [CBOR cborWithUTF8String:@"eReaderKey"];
      [v7 setObject:v9 forKeyedSubscript:v10];
    }

    v11 = [CBOR cborWithDictionary:v7];
    v1 = [NSData dataWithCBOR:v11];
  }

  return v1;
}

id sub_10001C53C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10001C2CC(v2);

  return v3;
}

id *sub_10001C594(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [CBOR decodeFromData:v2];

  if (!v3 || [v3 type] != 5)
  {
    sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[ISOSessionData decodeFromData:]", 18, @"Invalid ISOSessionData", v4, v5, v6, v25);
    v21 = 0;
    goto LABEL_21;
  }

  v7 = [v3 dictionary];
  v8 = [CBOR cborWithUTF8String:@"data"];
  v9 = [v7 objectForKey:v8];

  if (!v9 || [v9 type] == 2)
  {
    v13 = [v3 dictionary];
    v14 = [CBOR cborWithUTF8String:@"status"];
    v15 = [v13 objectForKey:v14];

    if (v15)
    {
      if ([v15 type])
      {
        v19 = @"Invalid Data type";
        v20 = 33;
LABEL_18:
        sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[ISOSessionData decodeFromData:]", v20, v19, v16, v17, v18, v25);
        v21 = 0;
        goto LABEL_19;
      }

      v21 = objc_opt_new();
      if (!v9)
      {
LABEL_16:
        v23 = [v15 numeric];
        [v21 setStatus:v23];

LABEL_19:
        goto LABEL_20;
      }
    }

    else
    {
      if (!v9)
      {
        v19 = @"Data or Error must be present";
        v20 = 47;
        goto LABEL_18;
      }

      v21 = objc_opt_new();
    }

    v22 = [v9 data];
    if (v21)
    {
      objc_storeStrong(v21 + 1, v22);
    }

    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[ISOSessionData decodeFromData:]", 25, @"Invalid Data type", v10, v11, v12, v25);
  v21 = 0;
LABEL_20:

LABEL_21:

  return v21;
}

void *sub_10001C7DC(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = ISOSessionData;
    v7 = objc_msgSendSuper2(&v11, "init");
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
      v8 = [[NSNumber alloc] initWithInteger:a3];
      v9 = a1[2];
      a1[2] = v8;

      sub_10001C880(a1);
    }
  }

  return a1;
}

unint64_t sub_10001C880(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 status];

  if (v2)
  {
    v3 = [a1 status];
    v2 = [v3 unsignedIntegerValue];

    if (v2 > 0x14 || ((1 << v2) & 0x100C01) == 0)
    {
      v5 = [a1 status];
      v6 = [v5 unsignedIntegerValue];
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOSessionData statusCode]", 82, a1, @"Unexpected error code detected: %lu", v7, v8, v6);

      __assert_rtn("[ISOSessionData statusCode]", "ISOSessionData.m", 83, "false");
    }
  }

  return v2;
}

void *sub_10001C970(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 status];
    if (v2)
    {
    }

    else if (!v1[1])
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOSessionData _encode]", 89, v1, @"Data or Error must be present", v3, v4, v14);
      v1 = 0;
      goto LABEL_10;
    }

    v5 = objc_opt_new();
    if (v1[1])
    {
      v6 = [CBOR cborWithData:?];
      v7 = [CBOR cborWithUTF8String:@"data"];
      [v5 setObject:v6 forKeyedSubscript:v7];
    }

    v8 = [v1 status];

    if (v8)
    {
      v9 = [v1 status];
      v10 = +[CBOR cborWithInteger:](CBOR, "cborWithInteger:", [v9 unsignedIntegerValue]);
      v11 = [CBOR cborWithUTF8String:@"status"];
      [v5 setObject:v10 forKeyedSubscript:v11];
    }

    v12 = [CBOR cborWithDictionary:v5];
    v1 = [NSData dataWithCBOR:v12];
  }

LABEL_10:

  return v1;
}

id sub_10001CBFC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10001C970(v2);

  return v3;
}

id sub_10001E660(uint64_t a1)
{
  [*(a1 + 32) _activateDisconnectBlock:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 invalidateAndUpdateStateSignal:0];
}

void sub_10001F660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (v8[9])
  {
    v14 = *(a1 + 40);
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral invalidateAndUpdateStateSignal:reason:]_block_invoke", 348, v8, @"updateStateSignal=%d, status=%lu", a7, a8, *(a1 + 48));
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) _signalConnectionStateChange:2];
    }

    [*(a1 + 32) _activateDisconnectBlock:*(a1 + 40)];
    if ([*(a1 + 32) getL2CAPEnable])
    {
      [*(*(a1 + 32) + 32) unpublishL2CAPChannel:{objc_msgSend(*(a1 + 32), "l2CapPSM")}];
    }

    [*(*(a1 + 32) + 32) removeAllServices];
    if ([*(*(a1 + 32) + 32) isAdvertising])
    {
      [*(*(a1 + 32) + 32) stopAdvertising];
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = 0;

    v12 = *(a1 + 32);
    v13 = *(v12 + 128);
    *(v12 + 128) = 0;

    *(*(a1 + 32) + 9) = 0;
  }
}

void sub_10001FBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 192), 8);
  _Block_object_dispose((v39 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001FC20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001FC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  if (!v10 || (v11 = [v10 count], v9 = *(a1 + 32), !v11))
  {
    v12 = @"LE: No centrals connected.";
    v13 = 410;
    goto LABEL_8;
  }

  if (*(v9 + 9) != 1)
  {
    v12 = @"LE: Session not in connected state";
    v13 = 416;
    goto LABEL_8;
  }

  if (*(v9 + 64))
  {
    v12 = @"LE: data pending.";
    v13 = 422;
LABEL_8:
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Peripheral writeData:toUUID:]_block_invoke", v13, v9, v12, a7, a8, v36);
LABEL_9:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    return;
  }

  if ((*(v9 + 8) & 1) == 0)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral writeData:toUUID:]_block_invoke", 428, v9, @"Alt carrier no longer connected. Bail out", a7, a8, v36);
    v22 = *(a1 + 32);
    v23 = *(v22 + 64);
    *(v22 + 64) = 0;

    goto LABEL_9;
  }

  v14 = [*(a1 + 32) getCharacteristic:*(a1 + 40)];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = objc_opt_new();
  v18 = *(a1 + 32);
  v19 = *(v18 + 64);
  *(v18 + 64) = v17;

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 32) + 64));
  v20 = *(a1 + 32);
  v21 = *(v20 + 72);
  if (v21)
  {
    sub_100014EB4(*(v20 + 64), v21);
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = *(v20 + 56);
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      v28 = 495;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v37 + 1) + 8 * i);
          if ([v30 maximumUpdateValueLength] < v28)
          {
            v28 = [v30 maximumUpdateValueLength];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v26);
    }

    else
    {
      LOWORD(v28) = 495;
    }

    v31 = +[NSUserDefaults standardUserDefaults];
    v32 = [v31 integerForKey:@"BTMtuOverride"];

    if (v32 >= 1)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral writeData:toUUID:]_block_invoke", 453, *(a1 + 32), @"LE: user default MTU override=%d", v33, v34, v32);
      LOWORD(v28) = v32;
    }

    sub_100002550(*(*(a1 + 32) + 64), *(*(*(a1 + 56) + 8) + 40));
    v35 = *(*(a1 + 32) + 64);
    if (v35)
    {
      *(v35 + 10) = v28;
    }
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(*(a1 + 32) + 32));
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(*(a1 + 32) + 56));
}

void sub_10001FF7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

void sub_100020094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000200AC(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v9 = v6;
  if (v6)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral getBluetoothStatusDict:]_block_invoke", 509, *(a1 + 32), @"LEStatus error:%@", v7, v8, v6);
    if (*(a1 + 48))
    {
      v10 = v9;
      **(a1 + 48) = v9;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

uint64_t sub_1000206A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  (*(*(v2 + 80) + 16))();
  v4 = objc_alloc_init(NSMutableData);
  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  *(v5 + 128) = v4;

  return _objc_release_x1();
}

void sub_100020FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100020FEC(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "ServiceDelegate xpcInvalidated", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4 && (v5 = *(v4 + 16)) != 0)
    {
      v6 = objc_loadWeakRetained((v5 + 24));
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 processIdentifier];
    sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "[ServiceDelegate listener:shouldAcceptNewConnection:]_block_invoke", 107, @"XPC(PID=%d) invalidated", v8, v9, v10, v7);

    v11 = *(a1 + 32);
    v12 = [WeakRetained[1] indexOfObject:v11];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ServiceDelegate _findActiveConnection:removeFromActiveList:]", 128, WeakRetained, @"Missing XPC connection in registry", v13, v14, v19);
      v15 = 0;
    }

    else
    {
      v16 = v12;
      v17 = [WeakRetained[1] objectAtIndex:v12];
      v15 = v17;
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          [STSXPCHelper xpcInvalidated]_0(v18);
        }
      }

      [WeakRetained[1] removeObjectAtIndex:v16];
    }
  }
}

void sub_10002114C(id a1)
{
  v1 = _os_activity_create(&_mh_execute_header, "ServiceDelegate xpcInterrupted", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(v1, &v2);
  os_activity_scope_leave(&v2);
}

uint64_t start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "int main(int, const char **)", 145, @"Starting XPC Helper", a6, a7, a8, v11);
  v8 = objc_opt_new();
  v9 = +[NSXPCListener serviceListener];
  [v9 setDelegate:v8];
  [v9 resume];

  return 0;
}

id *sub_100021234(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = STSWifiSession;
    v13 = objc_msgSendSuper2(&v25, "init");
    a1 = v13;
    if (v13)
    {
      objc_storeWeak(v13 + 2, v9);
      if (v12)
      {
        v14 = v12;
        v15 = a1[4];
        a1[4] = v14;
      }

      else
      {
        v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v16 = dispatch_queue_create("STSWifiSession", v15);
        v17 = a1[4];
        a1[4] = v16;
      }

      objc_storeWeak(a1 + 3, v11);
      v18 = sub_100024F68(STSWifiHandoverSession, v10, a1, a1[4]);
      v19 = a1[5];
      a1[5] = v18;

      if (!v10 || (v10[8] & 1) == 0)
      {
        *(a1 + 8) = 0;
        goto LABEL_13;
      }

      if (v9)
      {
        v20 = v9[4];
        if (v20)
        {
          v21 = v20[8] ^ 1;
LABEL_11:
          *(a1 + 8) = v21 & 1;

LABEL_13:
          v22 = objc_opt_new();
          v23 = a1[8];
          a1[8] = v22;

          *(a1 + 3) = 0;
          goto LABEL_14;
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = 1;
      goto LABEL_11;
    }
  }

LABEL_14:

  return a1;
}

uint64_t sub_1000213BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_100025154(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8, vars0);
  }

  return 0;
}

id **sub_100021538(id **a1)
{
  if (a1)
  {
    a1 = sub_100025124(a1[5]);
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_10002156C()
{
  objc_opt_self();
  v0 = sub_1000156AC();

  if (v0)
  {
    v1 = objc_opt_new();
    [v1 activate];
    v2 = [v1 powerOn];
    [v1 invalidate];
    sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "+[STSWifiSession hardwareAvailable]", 114, @"wifiOn=%d", v3, v4, v5, v2);
    if (v2)
    {
      v0 = 1;
    }

    else
    {
      v0 = 2;
    }
  }

  return v0;
}

STSCHWiFiAwareDiscoveryChannelInfo *sub_100021610()
{
  objc_opt_self();
  v0 = sub_1000156AC();
  sub_100024938(OS_LOG_TYPE_INFO, 0, "+[STSWifiSession advertiseChannelInfo]", 121, @"%@", v1, v2, v3, v0);
  if (v0)
  {
    v4 = [NSNumber numberWithUnsignedChar:*(v0 + 9)];
    v5 = [NSNumber numberWithUnsignedChar:*(v0 + 8)];
    v6 = *(v0 + 16);
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v5 = 0;
  }

  v7 = [[STSCHWiFiAwareDiscoveryChannelInfo alloc] initWithSupportedBands:v4 operatingClass:v5 channelNumber:v6];

  return v7;
}

void sub_100021710(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiSession _receiveRawData:]", 135, a1, @"Wait on raw data receive", v4, v5, v6[0]);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100021820;
    v6[3] = &unk_1000590A0;
    objc_copyWeak(&v8, &location);
    v6[4] = a1;
    v7 = v3;
    sub_10001B9E8(v7, v6);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void sub_1000217FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100021820(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (v6 || !WeakRetained)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiSession _receiveRawData:]_block_invoke", 140, *(a1 + 32), @"Invalid state, error=%@", v8, v9, v6);
  }

  else
  {
    dispatch_assert_queue_V2(WeakRetained[4]);
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = objc_loadWeakRetained((v11 + 24));
    }

    else
    {
      v12 = 0;
    }

    [v12 altCarrierReceived:v14 status:0];

    os_unfair_lock_lock(v10 + 3);
    v13 = *&v10[12]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v10 + 3);
    if (v13 == 1)
    {
      sub_100021710(v10, *(a1 + 40));
    }
  }
}

void sub_1000226B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  _Block_object_dispose((v35 - 160), 8);
  objc_destroyWeak((v34 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000226EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100024AE0();
  if (os_signpost_enabled(v5))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WifiSession_SendData", "error=%@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  dispatch_assert_queue_V2(v7);
  if (v4)
  {
    v8 = [v4 description];
    v18 = @"P2PError";
    *buf = v8;
    v9 = [NSDictionary dictionaryWithObjects:buf forKeys:&v18 count:1];
    v10 = [NSError errorWithDomain:@"WifiDomain" code:2 userInfo:v9];

    v16 = NSUnderlyingErrorKey;
    v17 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v12 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v11];
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_lock((*(a1 + 32) + 12));
  sub_1000168CC(*(a1 + 32), 0);
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  if (v12)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession altCarrierSendData:completion:]_block_invoke", 285, *(a1 + 32), @"error=%@", v13, v14, v12);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100022920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32))
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession altCarrierSendData:completion:]_block_invoke", 304, *(a1 + 40), @"error=%@", a7, a8, *(a1 + 32));
    v9 = *(a1 + 32);
  }

  v10 = *(*(a1 + 48) + 16);

  return v10();
}

void sub_1000229A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100024AE0();
  if (os_signpost_enabled(v4))
  {
    v5 = @"Success";
    if (!v3)
    {
      v5 = 0;
    }

    *buf = 138412290;
    *&buf[4] = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WifiSession_SendData", "status=%@", buf, 0xCu);
  }

  if (v3)
  {
    v6 = [v3 description];
    v18 = @"P2PError";
    *buf = v6;
    v7 = [NSDictionary dictionaryWithObjects:buf forKeys:&v18 count:1];
    v8 = [NSError errorWithDomain:@"WifiDomain" code:2 userInfo:v7];

    v16 = NSUnderlyingErrorKey;
    v17 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  dispatch_assert_queue_V2(v12);
  if (v10)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession altCarrierSendData:completion:]_block_invoke", 320, *(a1 + 32), @"error=%@", v13, v14, v10);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100022CE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  dispatch_assert_queue_V2(v3);
  v4 = *(a1 + 32);

  [STSWifiSession connectionEstablishmentTimedout]_0(v4);
}

void sub_100023040(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = [*(a1 + 40) HTTPBody];
  [WeakRetained altCarrierReceived:v3 status:0];
}

uint64_t sub_1000230BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000230D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v11 = a4;
  if (v11)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession _send:remoteURL:]_block_invoke", 438, *(a1 + 32), @"response=%@, error=%@", v9, v10, v8);
  }

  v12 = v8;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100023468;
  v28[3] = &unk_1000590F0;
  v14 = *(a1 + 40);
  v28[4] = WeakRetained;
  v28[5] = v14;
  v15 = objc_retainBlock(v28);
  v16 = [v12 MIMEType];
  v17 = [v16 caseInsensitiveCompare:@"application/CBOR"];

  if (v17)
  {
    v18 = *(a1 + 32);
    v19 = [v12 MIMEType];
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession _send:remoteURL:]_block_invoke", 456, v18, @"NSURLSession: Unexpected MIMEType, %@", v20, v21, v19);

    v33 = NSLocalizedDescriptionKey;
    v34 = off_100069A98;
    v22 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v23 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:11 userInfo:v22];

    (v15[2])(v15, v7, v23);
  }

  else if (v11)
  {
    v31 = NSUnderlyingErrorKey;
    v32 = v11;
    v24 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v25 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v24];

    (v15[2])(v15, v7, v25);
    v11 = v25;
  }

  else if ([v12 statusCode] == 200)
  {
    (v15[2])(v15, v7, 0);
    v11 = 0;
  }

  else
  {
    v29 = NSLocalizedDescriptionKey;
    v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"HTTP status error=%ld", [v12 statusCode]);
    v30 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v11 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v27];

    (v15[2])(v15, v7, v11);
  }
}

void sub_100023468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(*(*(a1 + 40) + 8) + 40) cancel];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023564;
  block[3] = &unk_100059168;
  block[4] = v9;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v10, block);
}

void sub_100023564(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [WeakRetained altCarrierReceived:a1[5] status:a1[6]];
}

id *sub_10002363C(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = STSCredentialSelect;
    v11 = objc_msgSendSuper2(&v13, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

id sub_100023B28(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = STSXPCHelperEntitlementChecker;
    a1 = objc_msgSendSuper2(&v16, "init");
    if (a1)
    {
      *(a1 + 3) = [v3 processIdentifier];
      if (v3)
      {
        [v3 auditToken];
      }

      else
      {
        memset(&token, 0, sizeof(token));
      }

      v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
      if (v4)
      {
        v7 = v4;
        v8 = @"com.apple.sts.xpcservice.client";
        *token.val = 0;
        v11 = SecTaskCopyValueForEntitlement(v7, @"com.apple.sts.xpcservice.client", &token);
        if (*token.val)
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelperEntitlementChecker _copyValueOfEntitlement:secTask:]", 34, a1, @"Failed to get entitlements: %@", v9, v10, *token.val);
          CFRelease(*token.val);
        }

        if (v11)
        {
          v12 = CFGetTypeID(v11);
          v13 = v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11) != 0;
          CFRelease(v11);
        }

        else
        {
          v13 = 0;
        }

        *(a1 + 8) = v13;
        CFRelease(v7);
      }

      else
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelperEntitlementChecker initWithConnection:]", 88, a1, @"Cannot create SecTaskRef with XPC Connection: %@", v5, v6, v3);

        a1 = 0;
      }
    }
  }

  return a1;
}

void sub_1000246E4(os_log_type_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (qword_100069C00 != -1)
  {
    dispatch_once(&qword_100069C00, &stru_1000591D0);
  }

  v6 = [[NSString alloc] initWithFormat:v5 arguments:a3];
  v7 = [v6 UTF8String];
  v8 = qword_100069BF8;
  if (os_log_type_enabled(qword_100069BF8, a1))
  {
    v9 = 136446210;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v8, a1, "%{public}s", &v9, 0xCu);
  }
}

void sub_1000247F8(id a1)
{
  qword_100069BF8 = os_log_create("com.apple.sts", "logging");

  _objc_release_x1();
}

void sub_10002483C(os_log_type_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a5;
  v15 = a6;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (qword_100069C18 != -1)
  {
    dispatch_once(&qword_100069C18, &stru_100059210);
  }

  if (byte_100069BE8 == 1)
  {
LABEL_5:
    v16 = v15;
    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%08x [%s]:%d %@", [v14 objectInstanceID], a3, a4, v16);

    sub_1000246E4(a1, v17, &a9);
  }
}

void sub_100024938(os_log_type_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a5;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (qword_100069C18 != -1)
  {
    dispatch_once(&qword_100069C18, &stru_100059210);
  }

  if (byte_100069BE8 == 1)
  {
LABEL_5:
    v14 = [NSString stringWithFormat:@"%s : %d : %@", a3, a4, v13];
    sub_1000246E4(a1, v14, &a9);
  }
}

void sub_100024A04(os_log_type_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  if (qword_100069C18 != -1)
  {
    dispatch_once(&qword_100069C18, &stru_100059210);
  }

  if (byte_100069BE8 == 1)
  {
LABEL_5:
    v13 = [NSString stringWithCString:a5 encoding:4];
    v14 = [NSString stringWithFormat:@"%s : %d : %@", a3, a4, v13];

    sub_1000246E4(a1, v14, &a9);
  }
}

id sub_100024AE0()
{
  if (qword_100069C10 != -1)
  {
    dispatch_once(&qword_100069C10, &stru_1000591F0);
  }

  v1 = qword_100069C08;

  return v1;
}

void sub_100024B34(id a1)
{
  qword_100069C08 = os_log_create("com.apple.sts.signpost", "GeneralSignposts");

  _objc_release_x1();
}

void sub_100024B78(id a1)
{
  if (MGGetBoolAnswer())
  {
    byte_100069BE8 = 1;
  }
}

void sub_100024D84(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    nw_connection_set_queue(v3, a1[7]);
    v5 = sub_10001B664(STSWifiHandoverConnectionHandle, a1, v4);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100025F84;
    handler[3] = &unk_1000592B0;
    handler[4] = a1;
    v6 = v4;
    v8 = v6;
    v9 = v5;
    nw_connection_set_state_changed_handler(v6, handler);
    nw_connection_start(v6);
  }
}

void sub_100024EC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession invalidate]", 126, a1, &stru_100059C08, a7, a8, v10);
    v9 = a1[7];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000255A8;
    block[3] = &unk_100058A08;
    block[4] = a1;
    dispatch_async(v9, block);
  }
}

STSWifiHandoverSession *sub_100024F68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = [STSWifiHandoverSession alloc];
  v10 = v7;
  v11 = v6;
  v12 = v8;
  if (v9)
  {
    v24.receiver = v9;
    v24.super_class = STSWifiHandoverSession;
    v9 = objc_msgSendSuper2(&v24, "init");
    if (v9)
    {
      if (v11)
      {
        v13 = v11;
        callbackQueue = v9->_callbackQueue;
        v9->_callbackQueue = v13;
      }

      else
      {
        callbackQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v15 = dispatch_queue_create("com.apple.nfc.wifihandover.cb", callbackQueue);
        v16 = v9->_callbackQueue;
        v9->_callbackQueue = v15;
      }

      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INITIATED, 0);
      v19 = dispatch_queue_create("com.apple.nfc.wifihandover.wq", v18);
      workQueue = v9->_workQueue;
      v9->_workQueue = v19;

      v9->_type = 0;
      objc_storeStrong(&v9->_configObject, a2);
      objc_storeWeak(&v9->_delegate, v10);
    }
  }

  if (v9)
  {
    v21 = sub_100013C24([WifiP2PController alloc], v9, 0);
    p2pController = v9->_p2pController;
    v9->_p2pController = v21;
  }

  return v9;
}

id *sub_100025124(id *a1)
{
  if (a1)
  {
    a1 = a1[4];
    v1 = vars8;
  }

  return a1;
}

void sub_100025154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    if (!*(a1 + 24))
    {
      v10 = *(a1 + 32);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = *(a1 + 32);
        v15 = v12;
        if (v12)
        {
          v16 = *(v12 + 8);
          *(a1 + 8) = v16;
          if (v16 == 1)
          {
            sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession begin]", 108, a1, @"Start publisher", v13, v14, v35);
            v17 = v15[8];
            v36 = [v17 unsignedShortValue];
            v18 = [NSString stringWithFormat:@"%d"];
            v21 = sub_100025ECC(a1);
            if (v18)
            {
              if ([v18 length])
              {
                sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _create_and_start_listener:]", 359, a1, @"Listening on port %@", v22, v23, v18);
                v24 = nw_listener_create_with_port([v18 UTF8String], v21);
LABEL_14:
                v25 = *(a1 + 64);
                *(a1 + 64) = v24;

                v26 = *(a1 + 56);
                v27 = *(a1 + 64);
                nw_listener_set_queue(v27, v26);

                v28 = *(a1 + 64);
                handler = _NSConcreteStackBlock;
                v40 = 3221225472;
                v41 = sub_1000262F0;
                v42 = &unk_100059300;
                v43 = a1;
                nw_listener_set_state_changed_handler(v28, &handler);
                v29 = *(a1 + 64);
                v38[0] = _NSConcreteStackBlock;
                v38[1] = 3221225472;
                v38[2] = sub_100026914;
                v38[3] = &unk_100059328;
                v38[4] = a1;
                nw_listener_set_new_connection_handler(v29, v38);
                nw_listener_start(*(a1 + 64));

LABEL_20:
                return;
              }
            }

            else
            {
              sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _create_and_start_listener:]", 355, a1, @"Use default port 0", v19, v20, v36);
            }

            sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _create_and_start_listener:]", 362, a1, @"Listening on random port", v22, v23, v36);
            v24 = nw_listener_create(v21);
            goto LABEL_14;
          }
        }

        else
        {
          *(a1 + 8) = 0;
        }

        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession begin]", 111, a1, @"Start subscriber", v13, v14, v35);
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_10002555C;
        v37[3] = &unk_100058A30;
        v37[4] = a1;
        v17 = v37;
        if (*(a1 + 24))
        {
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiHandoverSession _startWifiAwareSubscriberWithCompletion:]", 179, a1, @"Unsupported type=%lu", v30, v31, *(a1 + 24));
          v32 = *(a1 + 48);
          handler = _NSConcreteStackBlock;
          v40 = 3221225472;
          v41 = sub_100025CFC;
          v42 = &unk_100059288;
          v43 = v17;
          dispatch_async(v32, &handler);
          v33 = v43;
        }

        else
        {
          v34 = *(a1 + 40);
          v33 = *(a1 + 32);
          sub_100014EC4(v34, v33, v17);
        }

        goto LABEL_20;
      }
    }

    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiHandoverSession begin]", 120, a1, @"Not support", a7, a8, a9);
  }
}

void sub_10002555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiHandoverSession begin]_block_invoke", 115, *(a1 + 32), @"error=%@", a7, a8, a2);
  }
}

void sub_1000255A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = v1[8];
    if (!v3 || (nw_listener_cancel(v3), (v1 = *(a1 + 32)) != 0))
    {
      v4 = v1[9];
      if (!v4 || (nw_connection_cancel(v4), (v1 = *(a1 + 32)) != 0))
      {
        v5 = v1[5];

        sub_1000154F4(v5);
      }
    }
  }
}

void sub_100025618(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    v8 = a3;
    v9 = a2;
    [v9 length];
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession sendData:connection:completionHandler:]", 142, a1, @"Sending data=%@, length=%lu", v10, v11, v9);
    v12 = [v9 bytes];
    v13 = [v9 length];

    v14 = dispatch_data_create(v12, v13, 0, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100025750;
    v15[3] = &unk_100059140;
    v15[4] = a1;
    v16 = v7;
    sub_100025828(a1, v8, v14, v15);
  }
}

void sub_100025750(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 48);
  }

  else
  {
    v5 = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025814;
  v8[3] = &unk_100058F48;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_100025828(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    size = dispatch_data_get_size(v8);
    if (HIDWORD(size))
    {
      subrange = dispatch_data_create_subrange(v8, 0xFFFFFFFFuLL, size - 0xFFFFFFFF);
      v12 = dispatch_data_create_subrange(v8, 0, 0xFFFFFFFFuLL);
      completion[0] = _NSConcreteStackBlock;
      completion[1] = 3221225472;
      completion[2] = sub_10002698C;
      completion[3] = &unk_100059350;
      v19 = v9;
      completion[4] = a1;
      v17 = v7;
      v18 = subrange;
      v13 = subrange;
      nw_connection_send(v17, v12, _nw_content_context_default_message, 1, completion);
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100026A2C;
      v14[3] = &unk_100059378;
      v15 = v9;
      nw_connection_send(v7, v8, _nw_content_context_default_message, 1, v14);
      v13 = v15;
    }
  }
}

void sub_1000259F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    v7 = dispatch_data_create(0, 0, 0, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100025AD0;
    v8[3] = &unk_100059260;
    v8[4] = a1;
    v9 = v5;
    sub_100025C1C(a1, v6, v7, 0x1000u, v8);
  }
}

void sub_100025AD0(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = [v7 length];
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiHandoverSession receiveDataFromConnection:completionHandler:]_block_invoke", 167, v9, @"Recv byte len=%ld, isCompeleted=%d, error=%@", v11, v12, v10);
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 48);
  }

  else
  {
    v14 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025C00;
  block[3] = &unk_100059238;
  v15 = *(a1 + 40);
  v20 = v8;
  v21 = v15;
  v22 = a3;
  v19 = v7;
  v16 = v8;
  v17 = v7;
  dispatch_async(v14, block);
}

void sub_100025C1C(uint64_t a1, NSObject *a2, void *a3, uint32_t a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  if (a1)
  {
    if (a4 <= 1)
    {
      a4 = 1;
    }

    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_100026AB0;
    completion[3] = &unk_1000593A0;
    v12 = v9;
    v13 = a1;
    v14 = v10;
    nw_connection_receive(a2, 1u, a4, completion);
  }
}

void sub_100025CFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = NSLocalizedDescriptionKey;
  v5 = off_100069A50;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v2];

  (*(v1 + 16))(v1, v3);
}

void sub_100025DE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = NSLocalizedDescriptionKey;
  v5 = off_100069A50;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v2];

  (*(v1 + 16))(v1, v3);
}