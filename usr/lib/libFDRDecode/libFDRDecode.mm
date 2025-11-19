uint64_t _AMFDRDecodeVerifyChain(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v67 = 0;
  memset(v66, 170, sizeof(v66));
  v8.data = 0xAAAAAAAAAAAAAAAALL;
  v8.length = 0xAAAAAAAAAAAAAAAALL;
  v64 = v8;
  v65 = v8;
  v62 = v8;
  v63 = v8;
  v60 = v8;
  v61 = v8;
  v58 = v8;
  v59 = v8;
  v56 = v8;
  v57 = v8;
  v54 = v8;
  v55 = v8;
  v52 = v8;
  v53 = v8;
  v50 = v8;
  v51 = v8;
  v48 = v8;
  v49 = v8;
  v46[18] = v8;
  v47 = v8;
  v46[16] = v8;
  v46[17] = v8;
  v46[14] = v8;
  v46[15] = v8;
  v46[12] = v8;
  v46[13] = v8;
  v46[10] = v8;
  v46[11] = v8;
  v46[8] = v8;
  v46[9] = v8;
  v46[6] = v8;
  v46[7] = v8;
  v46[4] = v8;
  v46[5] = v8;
  v46[2] = v8;
  v46[3] = v8;
  v46[0] = v8;
  v46[1] = v8;
  v45 = v46;
  if (!a8)
  {
    AMFDRDecodeLogInternal(3, "%s: context must be non NULL", "_AMFDRDecodeVerifyChain");
    return 6;
  }

  if (!a1 || !a2)
  {
    AMFDRDecodeLogInternal(3, "%s: chain_blob must be non NULL and chain_blob_length must be non 0");
    goto LABEL_9;
  }

  if (!a5 || !a6)
  {
    AMFDRDecodeLogInternal(3, "%s: outImg4Blob must be non NULL and outImg4BlobLength must be non 0");
LABEL_9:
    *a8 |= 1uLL;
    return 6;
  }

  if (!a2)
  {
    _AMFDRDecodeVerifyChain_cold_1(a8);
    return 3;
  }

  v66[1] = a2;
  v66[2] = 0;
  v66[0] = a1;
  AMFDRDecodeIterateCertChainNextWithOptions(v66, *(a8 + 2016), &v45);
  v17 = v16;
  if (v16 || !v45)
  {
    v18 = "%s: _AMFDRDecodeIterateCertChainNext failed (first call)";
LABEL_16:
    v12 = 3;
    AMFDRDecodeLogInternal(3, v18, "_AMFDRDecodeVerifyChain");
    v19 = *a8 | v17;
    goto LABEL_17;
  }

  if (!*(a8 + 1944) || !*(a8 + 1952))
  {
    AMFDRDecodeLogInternal(4, "%s: Skipping trust root check (trustobject unset)", "_AMFDRDecodeVerifyChain");
    v20 = *a8 | 0x200100;
LABEL_21:
    *a8 = v20;
    goto LABEL_22;
  }

  if ((*(a8 + 2017) & 1) == 0)
  {
    v30 = AMFDRDecodeIterateTrustObjectTrustedBegin(a8 + 1768);
    if (v30)
    {
      v17 = v30;
      v18 = "%s: AMFDRDecodeIterateTrustObjectTrustedBegin failed";
      goto LABEL_16;
    }

    for (i = 0; ; ++i)
    {
      v43 = 0;
      *&v44[0] = 0;
      v38 = DERDecodeSeqNext((a8 + 1832), &v43);
      if (v38)
      {
        if (v38 == 1)
        {
LABEL_64:
          AMFDRDecodeLogInternal(7, "%s: end of trusted root sequence found root_cert=%d");
          goto LABEL_65;
        }

        AMFDRDecodeLogInternal(7, "%s: AMFDRDecodeIterateTrustObjectTrustedNext failed", "_AMFDRDecodeVerifyChain");
        v29 = *a8 | 0x400000;
        goto LABEL_30;
      }

      if (v43.length)
      {
        v39 = LODWORD(v44[0]) == 0;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        goto LABEL_64;
      }

      AMFDRDecodeLogInternal(7, "%s: PKI: verify cert was issued by trusted root %d", "_AMFDRDecodeVerifyChain", i);
      v40 = AMFDRDecodeCertificate();
      if (v40)
      {
        v35 = v40;
        AMFDRDecodeLogInternal(7, "%s: PKI: decoding trusted root %d failed with error 0x%016llX");
        goto LABEL_72;
      }

      v41 = AMFDRDecodeVerifyCertIssuerWithOptions(v45, &v47, a8 + 1768, 0, 0);
      if (v41 != 0x20000000000)
      {
        break;
      }
    }

    v35 = v41;
    if (v41)
    {
      AMFDRDecodeLogInternal(7, "%s: PKI: verify cert was issued by trusted root %d failed with error 0x%016llX");
      goto LABEL_72;
    }

    AMFDRDecodeLogInternal(7, "%s: PKI: verify cert was issued by trusted root %d (success)");
LABEL_22:
    v21 = v45;
    v45 = &v47;
    AMFDRDecodeIterateCertChainNextWithOptions(v66, *(a8 + 2016), &v45);
    if (!v22)
    {
      v24 = 1;
      while (v45)
      {
        AMFDRDecodeLogInternal(7, "%s: PKI: verify cert %d was issued by cert %d", "_AMFDRDecodeVerifyChain", v24, v24 - 1);
        v25 = AMFDRDecodeVerifyCertIssuerWithOptions(v45, v21, a8 + 1768, *(a8 + 2016), a8);
        if (v25)
        {
          AMFDRDecodeLogInternal(7, "%s: PKI: verify cert %d was issued by cert %d failed with error 0x%016llX", "_AMFDRDecodeVerifyChain", v24, v24 - 1, v25);
          v29 = *a8 | 0x40000000000;
          goto LABEL_30;
        }

        AMFDRDecodeLogInternal(7, "%s: PKI: verify cert %d was issued by %d (success)", "_AMFDRDecodeVerifyChain", v24, v24 - 1);
        ++v24;
        v26 = v45;
        v45 = v21;
        AMFDRDecodeIterateCertChainNextWithOptions(v66, *(a8 + 2016), &v45);
        v21 = v26;
        if (v27)
        {
          v12 = 3;
          v28 = v27;
          AMFDRDecodeLogInternal(3, "%s: _AMFDRDecodeIterateCertChainNext failed (%d)", "_AMFDRDecodeVerifyChain", v24);
          v19 = *a8 | v28;
          goto LABEL_17;
        }
      }

      *a3 = *(v21 + 208);
      *a4 = *(v21 + 216);
      *a5 = *(v21 + 288);
      *a6 = *(v21 + 296);
      v42 = *(v21 + 240);
      *(a8 + 312) = *(v21 + 224);
      *(a8 + 328) = v42;
      AMFDRDecodeLogInternal(7, "%s: PKI: check payload hash with signature (success)", "_AMFDRDecodeVerifyChain");
      return 0;
    }

    v23 = v22;
    v12 = 3;
    AMFDRDecodeLogInternal(3, "%s: _AMFDRDecodeIterateCertChainNext failed (second call)", "_AMFDRDecodeVerifyChain");
    v19 = *a8 | v23;
LABEL_17:
    *a8 = v19;
    return v12;
  }

  memset(v44, 0, sizeof(v44));
  v43 = 0;
  v31 = AMFDRDecodeIterateTrustObjectTrustedKeyBegin(a8 + 1768);
  if (v31 == 0x40000000000000)
  {
    AMFDRDecodeLogInternal(4, "%s: trustobject does not contain trusted key", "_AMFDRDecodeVerifyChain");
  }

  else if (v31)
  {
    *a8 |= v31;
    AMFDRDecodeLogInternal(3, "%s: failed to begin decoding trusted key");
    return 3;
  }

  v32 = 0;
  while (1)
  {
LABEL_39:
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v33 = DERDecodeSeqNext((a8 + 1896), &v68);
    if (v33)
    {
      if (v33 == 1)
      {
LABEL_53:
        AMFDRDecodeLogInternal(7, "%s: end of trusted key sequence found root_key=%d");
LABEL_65:
        v20 = *a8 | 0x100;
        goto LABEL_21;
      }

      v36 = 0x400000;
LABEL_51:
      *a8 |= v36;
      AMFDRDecodeLogInternal(7, "%s: PKI: verify cert was issued by trusted key %d failed with error 0x%016llX");
      return 3;
    }

    if (v69)
    {
      v34 = v70 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_53;
    }

    AMFDRDecodeLogInternal(7, "%s: PKI: verify cert was issued by trusted key %d", "_AMFDRDecodeVerifyChain", v32);
    v35 = AMFDRDecodePublicKey();
    if (v35)
    {
      break;
    }

    while (!DEROidCompare((v45 + 1), (*(&kAMFDRDecodeEcdsaInfoList + v35))[3]) || !DEROidCompare(v44, (*(&kAMFDRDecodeEcdsaInfoList + v35))[2]))
    {
      v35 += 8;
      if (v35 == 24)
      {
        ++v32;
        goto LABEL_39;
      }
    }

    v64 = 0;
    v65 = 0;
    v63 = 0;
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v60 = v43;
    v61 = oidEcPubKey;
    v62 = v44[0];
    v36 = AMFDRDecodeVerifyCertIssuerWithOptions(v45, &v47, a8 + 1768, *(a8 + 2016), a8);
    if (v36 != 0x20000000000)
    {
      if (!v36)
      {
        AMFDRDecodeLogInternal(7, "%s: PKI: verify cert was issued by trusted key %d (success)");
        goto LABEL_22;
      }

      goto LABEL_51;
    }
  }

  AMFDRDecodeLogInternal(7, "%s: PKI: decoding trusted key %d failed with error 0x%016llX");
LABEL_72:
  v29 = *a8 | v35;
LABEL_30:
  *a8 = v29;
  return 3;
}

uint64_t _AMFDRDecodeVerifySignature(const void *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    if (a3 && a4)
    {
      if (a5 && a6)
      {
        if (a7 && *(a7 + 40))
        {
          v11 = **(a7 + 32);
          if (v11 == a6)
          {
            if (!DEROidCompare(a8 + 312, &oidEcPubKey))
            {
              if (DEROidCompare(*(a7 + 40), &oidSha1Rsa))
              {
                if (!DEROidCompare(a8 + 312, &oidRsa))
                {
                  goto LABEL_33;
                }

                result = AMSupportRsaVerifySignatureSha1();
              }

              else if (DEROidCompare(*(a7 + 40), &oidSha256Rsa))
              {
                if (!DEROidCompare(a8 + 312, &oidRsa))
                {
                  goto LABEL_33;
                }

                result = AMSupportRsaVerifySignatureSha256();
              }

              else
              {
                if (!DEROidCompare(*(a7 + 40), &oidSha384Rsa))
                {
                  result = 4;
                  if (a8)
                  {
                    goto LABEL_39;
                  }

                  return result;
                }

                if (!DEROidCompare(a8 + 312, &oidRsa))
                {
                  goto LABEL_33;
                }

                result = AMSupportRsaVerifySignatureSha384();
              }

              if (result == 2)
              {
                *a8 |= 0x80000000000000uLL;
                result = 3;
                goto LABEL_39;
              }

              goto LABEL_45;
            }

            if (a7 == kAMFDRDecodeImplementationSha384 || a7 == kAMFDRDecodeImplementationOffline)
            {
              v18 = oidEcPrime256v1;
              if ((*(a8 + 2017) & 1) == 0)
              {
                v13 = *(a8 + 664);
                v14 = *(a8 + 672);
                if (AMSupportDigestSha256())
                {
                  goto LABEL_33;
                }

LABEL_31:
                result = AMFDRDecodeEcdsaVerifySignature(a1, a2);
                if (result == 2)
                {
                  *a8 |= 0x80000000000000uLL;
                  goto LABEL_33;
                }

LABEL_45:
                if (!result)
                {
                  return result;
                }

LABEL_33:
                result = 3;
                if (!a8)
                {
                  return result;
                }

LABEL_39:
                *a8 |= 0x1000000000000uLL;
                return result;
              }

              if (*(a8 + 336))
              {
                v16 = 0;
                v18 = *(a8 + 328);
                while (!DEROidCompare(&v18, (*(&kAMFDRDecodeEcdsaInfoList + v16))[2]))
                {
                  v16 += 8;
                  if (v16 == 24)
                  {
                    goto LABEL_28;
                  }
                }

                v17 = *(&kAMFDRDecodeEcdsaInfoList + v16);
                if (!*(v17 + 8))
                {
LABEL_28:
                  _AMFDRDecodeVerifySignature_cold_1();
                  goto LABEL_38;
                }

                if (AMFDRDecodeDigestByLength(*(a8 + 664), *(a8 + 672), a8 + 776, *(v17 + 8)))
                {
                  goto LABEL_33;
                }

                goto LABEL_31;
              }

              _AMFDRDecodeVerifySignature_cold_2();
            }

            else
            {
              _AMFDRDecodeVerifySignature_cold_3();
            }
          }

          else
          {
            AMFDRDecodeLogInternal(3, "%s: digestLength is %zu, expecting %zu", "_AMFDRDecodeVerifySignature", a6, v11);
          }
        }

        else
        {
          _AMFDRDecodeVerifySignature_cold_4();
        }
      }

      else
      {
        _AMFDRDecodeVerifySignature_cold_5();
      }
    }

    else
    {
      _AMFDRDecodeVerifySignature_cold_6();
    }
  }

  else
  {
    _AMFDRDecodeVerifySignature_cold_7();
  }

LABEL_38:
  result = 6;
  if (a8)
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t _AMFDRDecodeEvaluateCertificateProperties(uint64_t a1, uint64_t a2)
{
  memset(v22, 170, 32);
  memset(v20, 170, sizeof(v20));
  memset(v19, 170, sizeof(v19));
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v3;
  v4 = 6;
  if (!a1 || !a2)
  {
    goto LABEL_28;
  }

  if (!*(a1 + 320) || !*(a1 + 312))
  {
    v4 = 0;
    v14 = 0x200000000000;
    goto LABEL_21;
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v6 = DERDecodeSeqInit(a1 + 312, &v21, &v22[2]);
  if (v6)
  {
    v4 = v6;
    _AMFDRDecodeEvaluateCertificateProperties_cold_1();
    goto LABEL_29;
  }

  if (v21 != 0x2000000000000011)
  {
    v4 = 2;
    goto LABEL_29;
  }

  v7 = 0;
  do
  {
    v8 = DERDecodeSeqNext(&v22[2], v20);
    if (v8)
    {
      if (v8 == 1)
      {
        if (v7)
        {
          return 0;
        }

        _AMFDRDecodeEvaluateCertificateProperties_cold_2();
      }

      else
      {
        _AMFDRDecodeEvaluateCertificateProperties_cold_11();
      }

      goto LABEL_38;
    }

    ++v7;
    v9 = (a1 + 56);
    if (v20[0] == 0xE00000004D414E50)
    {
      break;
    }

    if (v20[0] != 0xE00000004F424A50)
    {
      goto LABEL_26;
    }

    v9 = (a1 + 72);
  }

  while ((*(a2 + 2016) & 0x80) != 0);
  v16 = *v9;
  v10 = DERImg4DecodeProperty();
  if (v10)
  {
    v4 = v10;
    _AMFDRDecodeEvaluateCertificateProperties_cold_3();
    goto LABEL_28;
  }

  if (*(&v18 + 1) != 0x2000000000000011)
  {
    goto LABEL_27;
  }

  v11 = DERDecodeSeqContentInit(&v17 + 1, v22);
  if (v11)
  {
    v4 = v11;
    _AMFDRDecodeEvaluateCertificateProperties_cold_4();
    goto LABEL_28;
  }

  v12 = DERDecodeSeqNext(v22, v19);
  if (v12)
  {
    if (v12 == 1)
    {
      _AMFDRDecodeEvaluateCertificateProperties_cold_5();
    }

    else
    {
      _AMFDRDecodeEvaluateCertificateProperties_cold_9();
    }

LABEL_38:
    v4 = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  v13 = DERImg4DecodeProperty();
  if (!v13)
  {
    DERImg4DecodeContentFindItemWithTag();
LABEL_26:
    AMFDRDecodeLogInternal(3, "%s: unexpected tag 0x%llX in certificate properties");
LABEL_27:
    v4 = 2;
    goto LABEL_28;
  }

  v4 = v13;
  _AMFDRDecodeEvaluateCertificateProperties_cold_6();
LABEL_28:
  if (a2)
  {
LABEL_29:
    v14 = 0x800000000000;
LABEL_21:
    *a2 |= v14;
  }

  return v4;
}

uint64_t _AMFDRDecodeVerifyChainOffline(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v22, 170, sizeof(v22));
  if (a8)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__s1 = v11;
    v23[0] = a1;
    v23[1] = a2;
    if (DERDecodeItem(v23, v22))
    {
      v12 = "%s: malformed offline signing public key";
    }

    else
    {
      if (v22[0] != 2)
      {
        v13 = 3;
        AMFDRDecodeLogInternal(3, "%s: malformed offline signing public key tag", "_AMFDRDecodeVerifyChainOffline");
        v14 = *a8 | 0x40;
        goto LABEL_8;
      }

      v16 = *(a8 + 296);
      v17 = *(a8 + 304);
      if (!AMFDRDecodeCertificate())
      {
        *a8 |= 0x100uLL;
        v18 = v22[2];
        if (v22[2] == __s1[1])
        {
          v19 = v22[1];
          if (!memcmp(__s1[0], v22[1], v22[2]))
          {
            v13 = 0;
            *a3 = v19;
            *a4 = v18;
            *(a8 + 312) = oidEcPubKey;
            return v13;
          }

          v20 = "%s: offline signing public key mismatch";
        }

        else
        {
          v20 = "%s: offline signing public key length mismatch";
        }

        v13 = 3;
        AMFDRDecodeLogInternal(3, v20, "_AMFDRDecodeVerifyChainOffline");
        v14 = *a8 | 0x20000000000000;
        goto LABEL_8;
      }

      v12 = "%s: fail to decode certificate of offline signing";
    }

    v13 = 3;
    AMFDRDecodeLogInternal(3, v12, "_AMFDRDecodeVerifyChainOffline");
    v14 = *a8 | 0x40000000000;
LABEL_8:
    *a8 = v14;
    return v13;
  }

  AMFDRDecodeLogInternal(3, "%s: context must be non NULL", "_AMFDRDecodeVerifyChainOffline");
  return 6;
}

uint64_t _AMFDRDecodeVerifyDataCallback(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v41 = 0;
  v40 = 0;
  if (!a4)
  {
    AMFDRDecodeLogInternal(3, "%s: fdrDecode is NULL", "_AMFDRDecodeVerifyDataCallback");
    return 6;
  }

  if (!a2)
  {
    AMFDRDecodeLogInternal(3, "%s: property is NULL", "_AMFDRDecodeVerifyDataCallback");
    *a4 |= 1uLL;
    return 6;
  }

  if (a1 <= 1634953571)
  {
    if (a1 > 1400000108)
    {
      if (a1 == 1400000109)
      {
        return 0;
      }

      if (a1 == 1400010324)
      {
        PropertyData = Img4DecodeGetPropertyData();
        if (!PropertyData)
        {
          AMFDRDecodeLogInternal(3, "%s: Invalid property length of kFDRTag_SrvT", "_AMFDRDecodeVerifyDataCallback");
          v6 = 0;
          v11 = *a4 | 0x200;
          goto LABEL_91;
        }

        v6 = PropertyData;
        AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_SrvT) failed.");
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (a1 == 1145525076)
    {
      if ((*(a4 + 2017) & 0x10) == 0)
      {
        v10 = Img4DecodeGetPropertyData();
        if (v10)
        {
          v6 = v10;
          AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kImg4Tag_DGST) failed.");
        }

        else
        {
          if (*(a4 + 400))
          {
            if (**(*(a4 + 2008) + 32) == v41)
            {
              if (!memcmp(v40, (a4 + 584), v41))
              {
                return 0;
              }

              v28 = "%s: propertyValue != fdrDecode->sealingManifestImg4.payload.hash";
            }

            else
            {
              v28 = "%s: propertyLength != implementation->digestInfo->digestOutputSize";
            }
          }

          else
          {
            v28 = "%s: fdrDecode->sealingManifestImg4.payload_hashed is false";
          }

          v6 = 3;
          AMFDRDecodeLogInternal(3, v28, "_AMFDRDecodeVerifyDataCallback");
        }

LABEL_90:
        v11 = *a4 | 0x8000;
        goto LABEL_91;
      }

      v18 = "%s: verifying subCC, skip comparing digest of the entire data";
    }

    else
    {
      if (a1 != 1396917319)
      {
        goto LABEL_37;
      }

      v7 = Img4DecodeGetPropertyData();
      if (v7)
      {
        v6 = v7;
        AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_SCDG) failed.");
        goto LABEL_90;
      }

      v20 = v41;
      *(a4 + 360) = v40;
      *(a4 + 368) = v20;
      if ((*(a4 + 2017) & 0x10) != 0)
      {
        if (*(a4 + 128))
        {
          v26 = *(a4 + 120);
          if (v26)
          {
            __s1 = 0;
            __n = 0;
            v27 = AMFDRTagsStringToTag(v26);
            if (_AMFDRDecodeSearchEntryFromPropertyList(*(a4 + 360), *(a4 + 368), v27, &__s1))
            {
              v6 = 0;
              AMFDRDecodeLogInternal(3, "%s: failed to find subCC digest");
            }

            else if (*(a4 + 400) == 1)
            {
              if (__n == **(*(a4 + 2008) + 32))
              {
                if (!memcmp(__s1, (a4 + 584), __n))
                {
                  AMFDRDecodeLogInternal(5, "%s: subCC digest verified", "_AMFDRDecodeVerifyDataCallback");
                  v6 = 0;
                  *(a4 + 376) = 1;
                  return v6;
                }

                v6 = 3;
                AMFDRDecodeLogInternal(3, "%s: subCC digest mismatch");
              }

              else
              {
                v6 = 3;
                AMFDRDecodeLogInternal(3, "%s: subCC digest length mismatch");
              }
            }

            else
            {
              v6 = 3;
              AMFDRDecodeLogInternal(3, "%s: subCC is not hashed");
            }

            v11 = *a4 | 0x1000000000000000;
            goto LABEL_91;
          }
        }

        _AMFDRDecodeVerifyDataCallback_cold_1(a4);
        return 0;
      }

      v18 = "%s: not verifying subCC payload, skip checking subCC digest";
    }

    v19 = 5;
    goto LABEL_47;
  }

  if (a1 <= 1717660002)
  {
    if (a1 == 1634953572)
    {
      v12 = Img4DecodeGetPropertyData();
      if (v12)
      {
        v6 = v12;
        AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_asid) failed.");
        goto LABEL_33;
      }

      v21 = *(a4 + 224);
      if (v21)
      {
        if (v21 == v41)
        {
          v22 = *(a4 + 216);
          if (v22 && !memcmp(v22, v40, v21))
          {
            return 0;
          }

          v23 = "%s: kFDRTag_asid property != fdrDecode->assemblyID";
        }

        else
        {
          v23 = "%s: kFDRTag_asid property length != fdrDecode->assemblyID.length";
        }

        v6 = 3;
        AMFDRDecodeLogInternal(3, v23, "_AMFDRDecodeVerifyDataCallback");
        v11 = *a4 | 0x200000000000000;
        goto LABEL_91;
      }

      v18 = "%s: Skip verifying assembly identifier";
      goto LABEL_42;
    }

    if (a1 == 1668047219)
    {
      if (Img4DecodeGetPropertyData())
      {
        v9 = "%s: Img4DecodeGetPropertyData(kFDRTag_clas) failed.";
      }

      else
      {
        v34 = v41;
        v9 = "%s: propertyValue must be non NULL with a non-zero length (length=%u)";
      }

      v6 = 3;
      AMFDRDecodeLogInternal(3, v9, "_AMFDRDecodeVerifyDataCallback", v34);
      v11 = *a4 | 0x400;
      goto LABEL_91;
    }

LABEL_37:
    v15 = -1;
    v16 = &dword_2977F0D04;
    while (v15 != 47)
    {
      v17 = *v16++;
      ++v15;
      if (v17 == a1)
      {
        if (v15 < 0x30)
        {
          return 0;
        }

        break;
      }
    }

    v36 = (a1 >> 8);
    v37 = a1;
    v34 = (a1 >> 24);
    v35 = (a1 << 8 >> 24);
    v18 = "%s: Unsupported tag found in manifest '%c%c%c%c'";
LABEL_42:
    v19 = 7;
LABEL_47:
    AMFDRDecodeLogInternal(v19, v18, "_AMFDRDecodeVerifyDataCallback", v34, v35, v36, v37);
    return 0;
  }

  if (a1 != 1717660003)
  {
    if (a1 == 1768846196)
    {
      v14 = Img4DecodeGetPropertyData();
      if (v14)
      {
        v6 = v14;
        AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_inst) failed.", "_AMFDRDecodeVerifyDataCallback");
      }

      else
      {
        if (a3 != 1)
        {
          if (!a3 && (_AMFDRDecodeInstPropertyMatchingWithType(v40, v41, *(a4 + 136), *(a4 + 144), *(a4 + 168), *(a4 + 176), 0, a4) & 1) == 0)
          {
            AMFDRDecodeLogInternal(3, "%s: kFDRTag_inst property != fdrDecode->manifestUniqueID", "_AMFDRDecodeVerifyDataCallback");
            v6 = 0;
            v11 = *a4 | 0x40000000;
            goto LABEL_91;
          }

          return 0;
        }

        v29 = *(a4 + 104);
        if (v29 && (v30 = *(a4 + 112)) != 0)
        {
          if (_AMFDRDecodeInstPropertyMatchingWithType(v40, v41, v29, v30, *(a4 + 184), *(a4 + 192), 1, a4))
          {
            return 0;
          }

          AMFDRDecodeLogInternal(3, "%s: kFDRTag_inst property != fdrDecode->uniqueID");
        }

        else
        {
          if ((*(a4 + 2017) & 0x20) != 0)
          {
            AMFDRDecodeLogInternal(3, "%s: no uniqueID is specified, but this is allowed, skip comparing kFDRTag_inst object property");
            return 0;
          }

          AMFDRDecodeLogInternal(3, "%s: no uniqueID is specified, cannot verify kFDRTag_inst property");
        }

        v6 = 0;
      }

      v11 = *a4 | 0x4000;
      goto LABEL_91;
    }

    if (a1 == 1886546276)
    {
      v5 = Img4DecodeGetPropertyData();
      if (v5)
      {
        v6 = v5;
        AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_prid) failed.");
LABEL_33:
        v11 = *a4 | 0x2000;
        goto LABEL_91;
      }

      v24 = v40;
      v25 = v41;
      *(a4 + 200) = v40;
      *(a4 + 208) = v25;
      if (!*(a4 + 1944) || !*(a4 + 1952))
      {
        AMFDRDecodeLogInternal(4, "%s: Skipping revocation check (trustobject unset)", "_AMFDRDecodeVerifyDataCallback");
        v6 = 0;
        v11 = *a4 | 0x200000;
        goto LABEL_91;
      }

      v32 = AMFDRDecodeCheckProducerIDRevocation(a4 + 1768, v24, v25);
      if (v32)
      {
        v33 = v32;
        v6 = 3;
        AMFDRDecodeLogInternal(3, "%s: AMFDRDecodeCheckProducerIDRevocation failed with error 0x%016llX", "_AMFDRDecodeVerifyDataCallback", v32);
        v11 = *a4 | v33;
        goto LABEL_91;
      }

      return 0;
    }

    goto LABEL_37;
  }

  LOBYTE(__s1) = 0;
  if (Img4DecodeGetPropertyBoolean())
  {
    v6 = 3;
    AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_faic) failed.", "_AMFDRDecodeVerifyDataCallback");
    v11 = *a4 | 0x400000000;
LABEL_91:
    *a4 = v11;
    return v6;
  }

  v6 = 0;
  *(a4 + 2004) = __s1;
  return v6;
}

uint64_t _AMFDRDecodeGetExpectedManifestHash(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 2024);
  }

  AMFDRDecodeLogInternal(3, "%s: fdrDecode is NULL", "_AMFDRDecodeGetExpectedManifestHash");
  return 0;
}

uint64_t _AMFDRDecodePropertiesFilterCallback(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v16 = 0xAAAAAAAAAAAA0000;
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  if (a5)
  {
    if (*(a5 + 104) && *(a5 + 112))
    {
      v6 = 0;
      goto LABEL_7;
    }

    if ((*(a5 + 2017) & 0x20) != 0)
    {
      v6 = 1;
LABEL_7:
      v7 = DERDecodeSeqContentInit(a1, v14);
      if (v7)
      {
        v9 = v7;
        _AMFDRDecodePropertiesFilterCallback_cold_1();
        return v9;
      }

      while (1)
      {
        if (v16)
        {
          goto LABEL_22;
        }

        PropertyInSequence = DERImg4DecodeFindPropertyInSequence();
        if (PropertyInSequence == 1)
        {
          break;
        }

        v9 = PropertyInSequence;
        if (PropertyInSequence)
        {
          AMFDRDecodeLogInternal(3, "%s: failed to find property tag 0x%llu", "_AMFDRDecodePropertiesFilterCallback", a2);
          return v9;
        }

        if (v6 & BYTE1(v16))
        {
          AMFDRDecodeLogInternal(3, "%s: multiple entries for tag 0x%llu found, but no unique ID specified", "_AMFDRDecodePropertiesFilterCallback", a2);
          if (v16)
          {
            return 0;
          }

          v9 = 0;
          v11 = v15;
          v12 = *v15 | 0x4000;
LABEL_24:
          *v11 = v12;
          return v9;
        }

        v10 = Img4DecodeEvaluateDictionaryProperties();
        if (v10)
        {
          v9 = v10;
          _AMFDRDecodePropertiesFilterCallback_cold_2();
          return v9;
        }
      }

      if (BYTE1(v16) == 1)
      {
        AMFDRDecodeLogInternal(3, "%s: failed to find matching inst object propery, returning a mismatched one", "_AMFDRDecodePropertiesFilterCallback");
      }

      if (v16)
      {
        if (!v6)
        {
          return 0;
        }
      }

      else
      {
        *v15 |= 0x4000uLL;
LABEL_22:
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      AMFDRDecodeLogInternal(3, "%s: uniqueID is not specified, which is allowed, skip uniqueID mismatch errors", "_AMFDRDecodePropertiesFilterCallback");
      v9 = 0;
      v11 = v15;
      v12 = *v15 & 0xFFFFFFFFFFFFBFFFLL;
      goto LABEL_24;
    }

    _AMFDRDecodePropertiesFilterCallback_cold_3();
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: fdrDecode is NULL", "_AMFDRDecodePropertiesFilterCallback");
  }

  return 6;
}

uint64_t AMFDRDecodeTrustObject(unsigned __int8 **a1, uint64_t a2, unsigned int a3)
{
  v10[0] = a2;
  v10[1] = a3;
  if (DERParseSequenceToObject(v10, 5u, &DERFDRTrustObjectItemSpecs, a1, 0x90uLL, 0))
  {
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object Format");
  }

  else
  {
    v4 = *a1;
    if (*a1 && a1[1] == 4)
    {
      if (*v4 == *"secb")
      {
        return 0;
      }

      v8 = v4[2];
      v9 = v4[3];
      v6 = *v4;
      v7 = v4[1];
      AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object, expected tag %c%c%c%c found tag %c%c%c%c", "AMFDRDecodeTrustObject", kFDRTagStr_secb[0], kFDRTagStr_secb[1]);
    }

    else
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object, invalid tag length");
    }
  }

  return 0x400000;
}

uint64_t AMFDRDecodeLogInternal(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v22 = *MEMORY[0x29EDCA608];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v3;
  v21 = v3;
  v18 = v3;
  v19 = v3;
  v16 = v3;
  v17 = v3;
  v14 = v3;
  v15 = v3;
  v12 = v3;
  v13 = v3;
  v10 = v3;
  v11 = v3;
  v8 = v3;
  v9 = v3;
  *__str = v3;
  v7 = v3;
  vsnprintf(__str, 0x100uLL, __format, va);
  if (_logHandler)
  {
    result = _logHandler(a1, __str);
  }

  else
  {
    result = AMSupportLogFormat();
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMFDRDecodeVerifySealingManifest(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v18 = malloc(0x7F8uLL);
  if (!v18)
  {
    AMFDRDecodeLogInternal(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeVerifySealingManifest");
    return 0x80000000000002;
  }

  v19 = v18;
  bzero(v18, 0x7F8uLL);
  v19[5] = a1;
  v19[6] = a2;
  v19[243] = a3;
  v19[244] = a4;
  v19[9] = a5;
  v19[10] = a6;
  v19[17] = a7;
  v19[18] = a8;
  v19[48] = a9;
  v19[49] = a10;
  v19[251] = kAMFDRDecodeImplementationSha1;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v35 = v20;
  *&v35[16] = v20;
  v34 = v20;
  memset(v33, 170, sizeof(v33));
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v21 = _AMFDRDecodeVerifyTrustObject(v19);
  if (v21)
  {
    *v19 |= v21;
  }

  if (v19[5] && v19[6])
  {
    if (Img4DecodeInitManifest())
    {
      AMFDRDecodeLogInternal(3, "%s: could not parse sealing manifest");
    }

    else
    {
      if (!DERImg4DecodeManifest())
      {
        if ((*v19[251])(v19[140], v19[141], v19 + 154, **(v19[251] + 32)))
        {
          AMFDRDecodeVerifySealingManifest_cold_1();
        }

        else if ((*(v19[251] + 8))(v19[144], v19[145], &v30, &v31, v19 + 146, v19 + 147))
        {
          AMFDRDecodeVerifySealingManifest_cold_2();
        }

        else if ((*(v19[251] + 16))(v30, v31, v19[142], v19[143], v19 + 154, **(v19[251] + 32)))
        {
          AMFDRDecodeVerifySealingManifest_cold_3();
        }

        else if (DERParseInteger((v19 + 138), &v32))
        {
          AMFDRDecodeVerifySealingManifest_cold_4();
        }

        else if (DERDecodeItem((v19 + 140), &v33[5]))
        {
          AMFDRDecodeVerifySealingManifest_cold_5();
        }

        else if (v33[5] == 0x2000000000000011)
        {
          if (DERImg4DecodeFindProperty())
          {
            AMFDRDecodeVerifySealingManifest_cold_7();
          }

          else
          {
            *(v19 + 56) = *&v35[8];
            if (DERImg4DecodeFindProperty())
            {
              AMFDRDecodeVerifySealingManifest_cold_8();
            }

            else
            {
              *(v19 + 57) = *&v35[8];
              if (Img4DecodeEvaluateManifestProperties())
              {
                AMFDRDecodeVerifySealingManifest_cold_9();
              }

              else if (DERDecodeSeqContentInit(v19 + 112, v33) || (v25 = DERDecodeSeqNext(v33, &v33[2])) != 0)
              {
LABEL_38:
                AMFDRDecodeVerifySealingManifest_cold_10();
              }

              else
              {
                v26 = 0;
                while (!v25)
                {
                  v27 = v33[2];
                  if (LODWORD(v33[2]) != 1296125520)
                  {
                    if (DERImg4DecodeFindProperty())
                    {
                      AMFDRDecodeVerifySealingManifest_cold_13();
                      goto LABEL_14;
                    }

                    *(v19 + 58) = *&v35[8];
                    if ((*(v19[251] + 24))(v19 + 107, v19))
                    {
                      AMFDRDecodeVerifySealingManifest_cold_14();
                      goto LABEL_14;
                    }

                    if (Img4DecodeEvaluateObjectProperties())
                    {
                      AMFDRDecodeVerifySealingManifest_cold_15();
                      goto LABEL_14;
                    }

                    v28 = v19[48];
                    if (v28)
                    {
                      v29 = v28(v27, v19[17], *(v19 + 36), v19[25], *(v19 + 52), v19[245], *(v19 + 492), v19[247], *(v19 + 496), v19[249], *(v19 + 500), v19[49]);
                      if (v29)
                      {
                        AMFDRDecodeLogInternal(3, "%s: sealingManifestCallback failed with error 0x%llX", "_AMFDRDecodeVerifySealingManifestInternal", v29);
                        v23 = *v19 | 0x400000000;
                        goto LABEL_15;
                      }
                    }

                    v26 = 1;
                  }

                  v25 = DERDecodeSeqNext(v33, &v33[2]);
                  if (v25 >= 2)
                  {
                    goto LABEL_38;
                  }
                }

                if (v26)
                {
                  v23 = *v19;
                  goto LABEL_15;
                }

                AMFDRDecodeVerifySealingManifest_cold_12();
              }
            }
          }
        }

        else
        {
          AMFDRDecodeVerifySealingManifest_cold_6();
        }

        goto LABEL_14;
      }

      AMFDRDecodeLogInternal(3, "%s: FDR Sealing Manifest failed to decode sealing manifest");
    }

    v22 = *v19 | 0x2000000;
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: FDR Sealing Manifest is missing", "_AMFDRDecodeVerifySealingManifestInternal");
    v22 = *v19 | 0x1000000;
  }

  *v19 = v22;
LABEL_14:
  AMFDRDecodeLogInternal(3, "%s: FDR Sealing Manifest failed to decode sequence", "_AMFDRDecodeVerifySealingManifestInternal");
  v23 = *v19 | 0x2000000;
LABEL_15:
  free(v19);
  return v23;
}

uint64_t AMFDRDecodeVerifySealingRequest(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, _BYTE *a9, void *a10, _DWORD *a11)
{
  v19 = malloc(0x7F8uLL);
  if (v19)
  {
    v20 = v19;
    bzero(v19, 0x7F8uLL);
    if (a10)
    {
      v21 = a11 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      AMFDRDecodeLogInternal(3, "%s: outRawData must be non NULL and outRawDataLength must be non 0", "AMFDRDecodeVerifySealingRequest");
      v22 = 1;
LABEL_18:
      free(v20);
      return v22;
    }

    v20[7] = a1;
    v20[8] = a2;
    v20[243] = a3;
    v20[244] = a4;
    v20[9] = a5;
    v20[10] = a6;
    v20[17] = a7;
    v20[18] = a8;
    v20[251] = kAMFDRDecodeImplementationTestStationSha1;
    v23 = _AMFDRDecodeVerifyTrustObject(v20);
    if (v23)
    {
      v24 = v23;
      AMFDRDecodeLogInternal(3, "%s: _AMFDRDecodeVerifyTrustObject failed (%llu), continuing.", "_AMFDRDecodeVerifySealingRequestInternal", v23);
      *v20 |= v24;
    }

    if (v20[7] && v20[8])
    {
      if (!Img4DecodeInit())
      {
        v26 = v20[251];
        if (Img4DecodePerformTrustEvaluatation())
        {
          AMFDRDecodeLogInternal(3, "%s: FDR Sealing Request trust evaluation failed.", "_AMFDRDecodeVerifySealingRequestInternal");
          v22 = *v20;
          if (!*v20)
          {
            v22 = 0x100000000000;
            *v20 = 0x100000000000;
          }
        }

        else
        {
          v22 = *v20;
        }

        v20[241] = v20[181];
        v20[242] = v20[182];
        goto LABEL_17;
      }

      AMFDRDecodeLogInternal(3, "%s: FDR Sealing Request failed to decode img4", "_AMFDRDecodeVerifySealingRequestInternal");
      v22 = *v20 | 0x200000000;
    }

    else
    {
      AMFDRDecodeLogInternal(3, "%s: FDR Sealing Request is missing", "_AMFDRDecodeVerifySealingRequestInternal");
      v22 = *v20 | 0x100000000;
    }

    *v20 = v22;
LABEL_17:
    *a10 = v20[241];
    *a11 = v20[242];
    *a9 = *(v20 + 2004);
    goto LABEL_18;
  }

  AMFDRDecodeLogInternal(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeVerifySealingRequest");
  return 0x80000000000002;
}

uint64_t AMFDRDecodeSealingRequest(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, const void *a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  memset(v24, 170, 24);
  memset(v23, 170, sizeof(v23));
  memset(v20, 170, sizeof(v20));
  v21[0] = a1;
  v21[1] = a2;
  if (a1 && a2)
  {
    v22 = 0xAAAAAAAAAAAAAAAALL;
    if (DERDecodeSeqInit(v21, &v22, v23))
    {
      AMFDRDecodeLogInternal(3, "%s: can't parse sealing manifest top-level container");
      return 0x400000000;
    }

    if (v22 != 0x2000000000000010)
    {
      AMFDRDecodeLogInternal(3, "%s: can't parse sealing manifest top-level container. Expected tag %llu, found %llu");
      return 0x400000000;
    }

    if (DERDecodeSeqNext(v23, v24))
    {
      AMFDRDecodeLogInternal(3, "%s: failed to decode sealing manifest tag");
      return 0x400000000;
    }

    if (v24[0] != 22)
    {
      AMFDRDecodeLogInternal(3, "%s: can't parse sealing manifest tag. Expected tag %d, found %llu");
      return 0x400000000;
    }

    if (v24[2] != a8)
    {
      AMFDRDecodeLogInternal(3, "%s: uniqueIDInfo.content.length != uniqueIDLength");
      return 0x2000000000;
    }

    if (memcmp(v24[1], a7, v24[2]))
    {
      AMFDRDecodeLogInternal(3, "%s: memcmp( uniqueIDInfo.content.data, uniqueID, uniqueIDLength) != 0");
      return 0x2000000000;
    }

    v18 = DERDecodeSeqNext(v23, &v23[2]);
    if (v18)
    {
      AMFDRDecodeLogInternal(3, "%s: failed to decode sealing manifest body");
      return 0x400000000;
    }

    while (1)
    {
      if (v18)
      {
        return 0;
      }

      if (DERDecodeItem(&v23[3], &v20[2]))
      {
        AMFDRDecodeLogInternal(3, "%s: FDR Sealing Manifest failed to decode sequence", "AMFDRDecodeSealingRequest");
        return 0x2000000;
      }

      if (_AMFDRDecodeDERFDRItem(&v20[3], v20))
      {
        AMFDRDecodeLogInternal(3, "%s: can't parse sealing manifest contents classItem");
        return 0x400000000;
      }

      v19 = AMFDRDecodeVerifyTestStationManifest(v20[0], v20[1], a3, a4, a5, a6, a7, a8, a9, a10);
      if (v19)
      {
        break;
      }

      v18 = DERDecodeSeqNext(v23, &v23[2]);
      if (v18 >= 2)
      {
        AMFDRDecodeLogInternal(3, "%s: Failed decoding next item in sealing manifest contents");
        return 0x400000000;
      }
    }

    v16 = v19;
    AMFDRDecodeLogInternal(3, "%s: AMFDRDecodeVerifySealingManifest 0x%016llX", "AMFDRDecodeSealingRequest", v19);
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: Sealing manifest is NULL or 0 length", "AMFDRDecodeSealingRequest");
    return 0x100000000;
  }

  return v16;
}

uint64_t _AMFDRDecodeDERFDRItem(unint64_t *a1, void *a2)
{
  v6 = 0u;
  v7 = 0u;
  if (DERParseSequenceContentToObject(a1, 2u, &DERFDRItemSpecs, &v6, 0x20uLL, 0))
  {
    AMFDRDecodeLogInternal(3, "%s: malformed DERFDRItem", "_AMFDRDecodeDERFDRItem");
    return 16;
  }

  else
  {
    if (v6)
    {
      v4 = *(&v6 + 1) == 4;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      if (*v6 == *MEMORY[0x29EDC91F0])
      {
        result = 0;
        v5 = *(&v7 + 1);
        *a2 = v7;
        a2[1] = v5;
      }

      else
      {
        AMFDRDecodeLogInternal(3, "%s: malformed DERFDRItem, expected tag %c%c%c%c found tag %c%c%c%c", "_AMFDRDecodeDERFDRItem", *MEMORY[0x29EDC91F0], *(MEMORY[0x29EDC91F0] + 1), *(MEMORY[0x29EDC91F0] + 2), *(MEMORY[0x29EDC91F0] + 3), *v6, *(v6 + 1), *(v6 + 2), *(v6 + 3));
        return 64;
      }
    }

    else
    {
      AMFDRDecodeLogInternal(3, "%s: malformed DERFDRItem, invalid tag length", "_AMFDRDecodeDERFDRItem");
      return 32;
    }
  }

  return result;
}

uint64_t AMFDRDecodeVerifyTestStationManifest(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v18 = malloc(0x7F8uLL);
  if (!v18)
  {
    AMFDRDecodeLogInternal(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeVerifyTestStationManifest");
    return 0x80000000000002;
  }

  v19 = v18;
  bzero(v18, 0x7F8uLL);
  v19[5] = a1;
  v19[6] = a2;
  v19[243] = a3;
  v19[244] = a4;
  v19[9] = a5;
  v19[10] = a6;
  v19[17] = a7;
  v19[18] = a8;
  v19[48] = a9;
  v19[49] = a10;
  v19[251] = kAMFDRDecodeImplementationTestStationSha1;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v35 = v20;
  *&v35[16] = v20;
  v34 = v20;
  memset(v33, 170, sizeof(v33));
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v21 = _AMFDRDecodeVerifyTrustObject(v19);
  if (v21)
  {
    *v19 |= v21;
  }

  if (v19[5] && v19[6])
  {
    if (Img4DecodeInitManifest())
    {
      AMFDRDecodeLogInternal(3, "%s: could not parse sealing manifest");
    }

    else
    {
      if (!DERImg4DecodeManifest())
      {
        if ((*v19[251])(v19[140], v19[141], v19 + 154, **(v19[251] + 32)))
        {
          AMFDRDecodeVerifyTestStationManifest_cold_1();
        }

        else if ((*(v19[251] + 8))(v19[144], v19[145], &v31, &v32, v19 + 146, v19 + 147))
        {
          AMFDRDecodeVerifyTestStationManifest_cold_2();
        }

        else if ((*(v19[251] + 16))(v31, v32, v19[142], v19[143], v19 + 154, **(v19[251] + 32)))
        {
          AMFDRDecodeVerifyTestStationManifest_cold_3();
        }

        else if (DERDecodeItem((v19 + 140), &v33[5]))
        {
          AMFDRDecodeVerifyTestStationManifest_cold_4();
        }

        else if (v33[5] == 0x2000000000000011)
        {
          if (DERParseInteger((v19 + 138), &v30))
          {
            AMFDRDecodeVerifyTestStationManifest_cold_6();
          }

          else if (DERImg4DecodeFindProperty())
          {
            AMFDRDecodeVerifyTestStationManifest_cold_7();
          }

          else
          {
            *(v19 + 56) = *&v35[8];
            if (DERImg4DecodeFindProperty())
            {
              AMFDRDecodeVerifyTestStationManifest_cold_8();
            }

            else
            {
              *(v19 + 57) = *&v35[8];
              if (Img4DecodeEvaluateManifestProperties())
              {
                AMFDRDecodeVerifyTestStationManifest_cold_9();
              }

              else if (DERDecodeSeqContentInit(v19 + 112, v33) || (v25 = DERDecodeSeqNext(v33, &v33[2])) != 0)
              {
LABEL_38:
                AMFDRDecodeVerifyTestStationManifest_cold_10();
              }

              else
              {
                v26 = 0;
                while (!v25)
                {
                  v27 = v33[2];
                  if (LODWORD(v33[2]) != 1296125520)
                  {
                    if (DERImg4DecodeFindProperty())
                    {
                      AMFDRDecodeVerifyTestStationManifest_cold_13();
                      goto LABEL_14;
                    }

                    *(v19 + 58) = *&v35[8];
                    if ((*(v19[251] + 24))(v19 + 107, v19))
                    {
                      AMFDRDecodeVerifyTestStationManifest_cold_14();
                      goto LABEL_14;
                    }

                    if (Img4DecodeEvaluateObjectProperties())
                    {
                      AMFDRDecodeVerifyTestStationManifest_cold_15();
                      goto LABEL_14;
                    }

                    v28 = v19[48];
                    if (v28)
                    {
                      v29 = v28(v27, v19[17], *(v19 + 36), v19[25], *(v19 + 52), v19[245], *(v19 + 492), v19[247], *(v19 + 496), v19[249], *(v19 + 500), v19[49]);
                      if (v29)
                      {
                        AMFDRDecodeLogInternal(3, "%s: sealingManifestCallback failed with error 0x%llX", "_AMFDRDecodeVerifyTestStationManifestInternal", v29);
                        v23 = *v19 | 0x400000000;
                        goto LABEL_15;
                      }
                    }

                    v26 = 1;
                  }

                  v25 = DERDecodeSeqNext(v33, &v33[2]);
                  if (v25 >= 2)
                  {
                    goto LABEL_38;
                  }
                }

                if (v26)
                {
                  v23 = *v19;
                  goto LABEL_15;
                }

                AMFDRDecodeVerifyTestStationManifest_cold_12();
              }
            }
          }
        }

        else
        {
          AMFDRDecodeVerifyTestStationManifest_cold_5();
        }

        goto LABEL_14;
      }

      AMFDRDecodeLogInternal(3, "%s: FDR Sealing Manifest failed to decode sealing manifest");
    }

    v22 = *v19 | 0x2000000;
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: FDR Sealing Manifest is missing", "_AMFDRDecodeVerifyTestStationManifestInternal");
    v22 = *v19 | 0x1000000;
  }

  *v19 = v22;
LABEL_14:
  AMFDRDecodeLogInternal(3, "%s: FDR Sealing Manifest failed to decode sequence", "_AMFDRDecodeVerifyTestStationManifestInternal");
  v23 = *v19 | 0x2000000;
LABEL_15:
  free(v19);
  return v23;
}

uint64_t AMFDRDecodeEvaluateTrustCombinedWithSik(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, void *a11, _DWORD *a12)
{
  v20 = malloc(0x7F8uLL);
  if (v20)
  {
    v21 = v20;
    bzero(v20, 0x7F8uLL);
    if (a11)
    {
      v22 = a12 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      AMFDRDecodeLogInternal(3, "%s: outRawData must be non NULL and outRawDataLength must be non 0", "AMFDRDecodeEvaluateTrustCombinedWithSik");
      v23 = 1;
    }

    else
    {
      v21[1] = a1;
      v21[2] = a2;
      v21[9] = a3;
      v21[10] = a4;
      v21[13] = a5;
      v21[14] = a6;
      v21[17] = a7;
      v21[18] = a8;
      v21[21] = a9;
      v21[22] = a10;
      v24 = kAMFDRDecodeImplementationSha384;
      if (a4 != 48)
      {
        v24 = kAMFDRDecodeImplementationSha1;
      }

      v21[251] = v24;
      v23 = AMFDRDecodeEvaluateTrustInternal(v21);
      *a11 = v21[239];
      *a12 = v21[240];
    }

    free(v21);
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeEvaluateTrustCombinedWithSik");
    return 0x80000000000000;
  }

  return v23;
}

uint64_t AMFDRDecodeEvaluateTrustInternal(uint64_t a1)
{
  if (!*(a1 + 72) || !*(a1 + 80))
  {
    *a1 |= 0x40000uLL;
  }

  if ((!*(a1 + 104) || !*(a1 + 112)) && (*(a1 + 2017) & 0x20) == 0)
  {
    AMFDRDecodeLogInternal(3, "%s: fdrDecode->uniqueID is NULL or 0 size", "AMFDRDecodeEvaluateTrustInternal");
    result = *a1 | 1;
LABEL_12:
    *a1 = result;
    return result;
  }

  if (*(a1 + 8) && *(a1 + 16))
  {
    if (_AMFDRDecodeCombined(a1))
    {
      AMFDRDecodeLogInternal(4, "%s: data is unwrapped", "AMFDRDecodeEvaluateTrustInternal");
      v3 = *a1;
      *(a1 + 1912) = *(a1 + 8);
      *(a1 + 1920) = *(a1 + 16);
      result = v3 | 0x5A01C00;
      goto LABEL_12;
    }
  }

  else if (!*(a1 + 1944) || !*(a1 + 1952))
  {
    *a1 |= 0x200000uLL;
  }

  v4 = _AMFDRDecodeVerifyTrustObject(a1);
  if (v4)
  {
    *a1 |= v4;
  }

  v5 = _AMFDRDecodeVerifyData(a1);
  if (v5)
  {
    *a1 |= v5;
  }

  v25 = 0;
  v24 = 0;
  if ((!*(a1 + 344) || !*(a1 + 352)) && (!*(a1 + 232) || !*(a1 + 240)))
  {
    AMFDRDecodeLogInternal(6, "%s: No need to verify subCC and asid");
    goto LABEL_25;
  }

  v6 = AMFDRDecodeIterateSysconfigBegin(*(a1 + 1912), *(a1 + 1920), &v25, &v24);
  v7 = v25;
  if (!v25 || v6)
  {
    AMFDRDecodeLogInternal(3, "%s: FDR 3.0 Data can't be decoded!");
    goto LABEL_54;
  }

  v8 = 0;
  while (1)
  {
    v23 = 0;
    __n_7 = 0;
    __n = 0;
    __s2 = 0;
    v9 = AMFDRDecodeIterateSysconfigPayloadNext(v7, &v23, &__n_7, &__s2, &__n, 0);
    if (v9)
    {
      if (v9 == 0x40000000000000)
      {
        if (*(a1 + 232) && !((*(a1 + 240) == 0) | v8 & 1))
        {
          AMFDRDecodeLogInternal(4, "%s: kFDRTag_asid doesn't exist, but this is allowed");
        }

        goto LABEL_25;
      }

      AMFDRDecodeLogInternal(3, "%s: failed to decode payload: 0x%llx!");
LABEL_54:
      v17 = *a1 | 0x400000000000000;
      goto LABEL_58;
    }

    v10 = AMFDRTagsStringToTag(&v23);
    if (v10 == 1634953572)
    {
      v11 = *(a1 + 232);
      if (v11)
      {
        v12 = *(a1 + 240);
        if (v12)
        {
          if (v12 != __n)
          {
            AMFDRDecodeLogInternal(3, "%s: asid subCC length != fdrDecode->asidSubCCID.length", "_AMFDRDecodeVerifySubCC");
            *a1 |= 0x200000000000000uLL;
            v11 = *(a1 + 232);
            v12 = __n;
          }

          if (memcmp(v11, __s2, v12))
          {
            AMFDRDecodeLogInternal(3, "%s: asid subCC data != fdrDecode->asidSubCCID", "_AMFDRDecodeVerifySubCC");
            *a1 |= 0x200000000000000uLL;
          }

          v8 = 1;
        }
      }
    }

    if (*(a1 + 344))
    {
      v13 = *(a1 + 352);
      if (v13)
      {
        break;
      }
    }

LABEL_52:
    v7 = v25;
  }

  v14 = 0;
  while (*(*(a1 + 344) + 4 * v14) != v10)
  {
LABEL_51:
    if (++v14 >= v13)
    {
      goto LABEL_52;
    }
  }

  v15 = *(a1 + 360);
  if (!v15 || (v16 = *(a1 + 368)) == 0)
  {
    AMFDRDecodeLogInternal(3, "%s: No SCDG in manifest, subCC digest missing");
    goto LABEL_57;
  }

  v18 = 0;
  v19 = 0;
  if (!_AMFDRDecodeSearchEntryFromPropertyList(v15, v16, v10, &v18) && v19 && v18)
  {
    v13 = *(a1 + 352);
    goto LABEL_51;
  }

  AMFDRDecodeLogInternal(3, "%s: cannot find subCC digest for %u");
LABEL_57:
  v17 = *a1 | 0x1000000000000000;
LABEL_58:
  *a1 = v17;
LABEL_25:
  if (v25)
  {
    free(v25);
  }

  return *a1;
}

uint64_t AMFDRDecodeEvaluateTrustWithSik(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, unsigned int a12, uint64_t a13, unsigned int a14, void *a15, _DWORD *a16)
{
  v24 = malloc(0x7F8uLL);
  if (v24)
  {
    v25 = v24;
    bzero(v24, 0x7F8uLL);
    if (a15)
    {
      v26 = a16 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      AMFDRDecodeLogInternal(3, "%s: outRawData must be non NULL and outRawDataLength must be non 0", "AMFDRDecodeEvaluateTrustWithSik");
      v27 = 1;
    }

    else
    {
      v25[243] = a5;
      v25[244] = a6;
      v25[9] = a7;
      v25[10] = a8;
      v25[13] = a9;
      v25[14] = a10;
      v25[17] = a11;
      v25[18] = a12;
      v25[21] = a13;
      v25[22] = a14;
      v25[3] = a1;
      v25[4] = a2;
      v25[35] = a3;
      v25[36] = a4;
      v28 = kAMFDRDecodeImplementationSha384;
      if (a8 != 48)
      {
        v28 = kAMFDRDecodeImplementationSha1;
      }

      v25[251] = v28;
      v27 = AMFDRDecodeEvaluateTrustInternal(v25);
      *a15 = v25[239];
      *a16 = v25[240];
    }

    free(v25);
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeEvaluateTrustWithSik");
    return 0x80000000000000;
  }

  return v27;
}

uint64_t AMFDRDecodeEvaluateTrustOffline(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v16 = malloc(0x7F8uLL);
  if (v16)
  {
    v17 = v16;
    bzero(v16, 0x7F8uLL);
    if (!a7 || !a8)
    {
      AMFDRDecodeLogInternal(3, "%s: outRawData must be non NULL and outRawDataLength must be non 0", "AMFDRDecodeEvaluateTrustOffline");
      v19 = 1;
LABEL_13:
      free(v17);
      return v19;
    }

    v17[13] = a3;
    v17[14] = a4;
    v17[3] = a1;
    v17[4] = a2;
    v17[37] = a5;
    v17[38] = a6;
    v17[251] = kAMFDRDecodeImplementationOffline;
    if (a3 && a4)
    {
      v18 = _AMFDRDecodeVerifyData(v17);
      v19 = *v17;
      if (!v18)
      {
LABEL_12:
        *a7 = v17[239];
        *a8 = v17[240];
        goto LABEL_13;
      }

      v19 |= v18;
    }

    else
    {
      AMFDRDecodeLogInternal(3, "%s: fdrDecode->uniqueID is NULL or 0 size", "AMFDRDecodeEvaluateTrustOfflineInternal");
      v19 = 1;
    }

    *v17 = v19;
    goto LABEL_12;
  }

  AMFDRDecodeLogInternal(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeEvaluateTrustOffline");
  return 0x80000000000000;
}

uint64_t _AMFDRDecodeCombined(uint64_t a1)
{
  memset(v25, 170, sizeof(v25));
  v23 = 0u;
  *v24 = 0u;
  v22 = 0u;
  if (DERDecodeItem(a1 + 8, v25))
  {
    AMFDRDecodeLogInternal(3, "%s: failed to decode FDR Combined Format", "_AMFDRDecodeCombined");
    *a1 |= 0x80uLL;
    return 128;
  }

  if (v25[0] != 0x2000000000000010)
  {
    AMFDRDecodeLogInternal(3, "%s: FDR Combined Format unexpected tag: %llu", "_AMFDRDecodeCombined", v25[0]);
    *a1 |= 0x10000uLL;
    return 0x10000;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 8) + v3;
  if (v4 < v25[1] + v25[2])
  {
    AMFDRDecodeLogInternal(3, "%s: item is bigger on the inside", "_AMFDRDecodeCombined");
    *a1 |= 4uLL;
    return 4;
  }

  if (v4 > v25[1] + v25[2])
  {
    AMFDRDecodeLogInternal(3, "%s: Buffer contains %lu unused bytes", "_AMFDRDecodeCombined", v3 - v25[2]);
    *a1 |= 8uLL;
    return 8;
  }

  if (DERParseSequenceContentToObject(&v25[1], 3u, &DERFDRCombinedItemSpecs, &v22, 0x30uLL, 0))
  {
    goto LABEL_30;
  }

  if (!v22 || *(&v22 + 1) != 4)
  {
    goto LABEL_29;
  }

  if (*v22 != *"comb")
  {
LABEL_30:
    *a1 |= 0x20000uLL;
    return 0x20000;
  }

  if (!v23 || !*(&v23 + 1))
  {
    *a1 |= 0x200uLL;
    DataFromMultiCombined = 512;
    goto LABEL_20;
  }

  v20 = 0u;
  v21 = 0u;
  if (DERParseSequenceContentToObject(&v23, 2u, &DERFDRItemSpecs, &v20, 0x20uLL, 0))
  {
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Combined Format (DERFDRItemSpecs)");
    goto LABEL_30;
  }

  if (!v20 || *(&v20 + 1) != 4)
  {
LABEL_29:
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Combined Format, invalid tag length");
    goto LABEL_30;
  }

  if (*v20 != *"fdrd")
  {
    v16 = *(v20 + 2);
    v18 = *(v20 + 3);
    v12 = *v20;
    v14 = *(v20 + 1);
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Combined Format, expected tag %c%c%c%c found tag %c%c%c%c", "_AMFDRDecodeCombined", kFDRTagStr_fdrd[0], kFDRTagStr_fdrd[1]);
    goto LABEL_30;
  }

  v9 = *(&v21 + 1);
  *(a1 + 24) = v21;
  *(a1 + 32) = v9;
  if ((*(a1 + 2017) & 8) != 0)
  {
    DataFromMultiCombined = _AMFDRDecodeFindDataFromMultiCombined(a1);
    if (DataFromMultiCombined)
    {
      AMFDRDecodeLogInternal(4, "%s: cannot decode to a multicombined data, proceed with combined format", "_AMFDRDecodeCombined");
      v11 = *(&v21 + 1);
      *(a1 + 24) = v21;
      *(a1 + 32) = v11;
    }
  }

  else
  {
    DataFromMultiCombined = 0;
  }

LABEL_20:
  if (!v24[0] || !v24[1])
  {
    v7 = *a1 | 0x200000;
LABEL_38:
    *a1 = v7;
    return DataFromMultiCombined;
  }

  v20 = 0u;
  v21 = 0u;
  if (DERParseSequenceContentToObject(v24, 2u, &DERFDRItemSpecs, &v20, 0x20uLL, 0))
  {
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Combined Format (trustObject)");
LABEL_36:
    v8 = 0x20000;
    DataFromMultiCombined = 0x20000;
LABEL_37:
    v7 = *a1 | v8;
    goto LABEL_38;
  }

  if (!v20 || *(&v20 + 1) != 4)
  {
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Combined Format (trustObject), invalid tag length");
    goto LABEL_36;
  }

  if (*v20 != *"secb")
  {
    v17 = *(v20 + 2);
    v19 = *(v20 + 3);
    v13 = *v20;
    v15 = *(v20 + 1);
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Combined Format (trustObject), expected tag %c%c%c%c found tag %c%c%c%c", "_AMFDRDecodeCombined", kFDRTagStr_secb[0], kFDRTagStr_secb[1]);
    goto LABEL_36;
  }

  v10 = v21;
  *(a1 + 1944) = v21;
  v8 = 0x200000;
  if (!v10 || !*(&v10 + 1))
  {
    goto LABEL_37;
  }

  return DataFromMultiCombined;
}

uint64_t _AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData(uint64_t a1, _OWORD *a2)
{
  v48 = *MEMORY[0x29EDCA608];
  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v4;
  v46 = v4;
  v43 = v4;
  v44 = v4;
  v41 = v4;
  v42 = v4;
  v39 = v4;
  v40 = v4;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  v31 = v4;
  v32 = v4;
  v29 = v4;
  v30 = v4;
  v27 = v4;
  v28 = v4;
  v25 = v4;
  v26 = v4;
  v23 = v4;
  v24 = v4;
  v22 = v4;
  v20 = v4;
  v21 = v4;
  v19 = v4;
  v14 = 0;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0;
  memset(v11, 170, sizeof(v11));
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (DERDecodeItem(a1 + 24, &v16))
  {
    AMFDRDecodeLogInternal(3, "%s: failed to decode FDR Multi Combined Format", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData");
    *a1 |= 0x80uLL;
    result = 128;
    goto LABEL_7;
  }

  if (v16 != 0x2000000000000010)
  {
    AMFDRDecodeLogInternal(3, "%s: FDR Multi Combined Format unexpected tag: %llu", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData", v16);
    *a1 |= 0x10000uLL;
    result = 0x10000;
    goto LABEL_7;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v6 + v7 < (v17 + v18))
  {
    AMFDRDecodeLogInternal(3, "%s: item is bigger on the inside", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData");
    *a1 |= 4uLL;
    result = 4;
    goto LABEL_7;
  }

  if (v6 + v7 > (v17 + v18))
  {
    AMFDRDecodeLogInternal(3, "%s: Buffer contains %lu unused bytes", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData", v7 - v18);
    *a1 |= 8uLL;
    result = 8;
    goto LABEL_7;
  }

  if (Img4DecodeInit())
  {
    AMFDRDecodeLogInternal(3, "%s: FDR failed to decode multi combined Data img4");
LABEL_19:
    result = 0x2000;
    goto LABEL_7;
  }

  if (Img4DecodeGetManifest())
  {
    if ((*(a1 + 2016) & 2) == 0)
    {
      AMFDRDecodeLogInternal(3, "%s: FDR failed to get restitched manifest from multi combined data");
      goto LABEL_19;
    }

    AMFDRDecodeLogInternal(3, "%s: No restitch manifest, but allow unsealed, try to proceed with the data manifest...", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData");
    v13 = 0;
    v14 = 0;
  }

  if (Img4DecodeGetPayloadType())
  {
    AMFDRDecodeLogInternal(3, "%s: FDR failed to get payload type from multi combined data");
    goto LABEL_19;
  }

  if (v12 != AMFDRTagsStringToTag("mcmb"))
  {
    AMFDRDecodeLogInternal(3, "%s: multi combined payload type is not mcmb", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData");
LABEL_24:
    result = 0x20000;
    goto LABEL_7;
  }

  if (Img4DecodeGetPayload())
  {
    AMFDRDecodeLogInternal(3, "%s: FDR failed to get payload from multi combined data");
    goto LABEL_19;
  }

  if (DERDecodeSeqInit(v15, &v11[16], v11) || *&v11[16] != 0x2000000000000011)
  {
    _AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData_cold_1();
    goto LABEL_24;
  }

  v10 = v14;
  *(a1 + 280) = v13;
  *(a1 + 288) = v10;
  result = 0;
  if (a2)
  {
    *a2 = *v11;
  }

LABEL_7:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void AMFDRDecodeIterateMultiCombinedDataDestroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t AMFDRDecodeVerifyMultiCombinedDataIntegrity(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v14 = malloc(0x7F8uLL);
  if (v14)
  {
    v15 = v14;
    bzero(v14, 0x7F8uLL);
    *(v15 + 8) = a1;
    *(v15 + 16) = a2;
    *(v15 + 72) = a3;
    *(v15 + 80) = a4;
    *(v15 + 136) = a5;
    *(v15 + 144) = a6;
    *(v15 + 2016) = a7;
    v16 = kAMFDRDecodeImplementationSha1;
    if (a4 == 48)
    {
      v16 = kAMFDRDecodeImplementationSha384;
    }

    if ((a7 & 0x20) != 0)
    {
      v16 = kAMFDRDecodeImplementationSha384;
    }

    *(v15 + 2008) = v16;
    *&v32 = 0xAAAAAAAAAAAAAAAALL;
    *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (!a1 || !a2)
    {
      AMFDRDecodeLogInternal(3, "%s: combinedData is required to be set", "_AMFDRDecodeVerifyMultiCombinedDataInternal");
      v18 = 512;
      goto LABEL_15;
    }

    if (!a3 || !a4)
    {
      *v15 = 0x40000;
    }

    if (_AMFDRDecodeCombined(v15))
    {
      AMFDRDecodeLogInternal(4, "%s: data is unwrapped", "_AMFDRDecodeVerifyMultiCombinedDataInternal");
      v17 = *v15;
      *(v15 + 1912) = *(v15 + 8);
      *(v15 + 1920) = *(v15 + 16);
      v18 = v17 | 0x5A01C00;
LABEL_15:
      *v15 = v18;
      goto LABEL_16;
    }

    v21 = _AMFDRDecodeVerifyTrustObject(v15);
    if (v21)
    {
      *v15 |= v21;
    }

    if (_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData(v15, &v32))
    {
      v22 = "%s: Failed to get payload sequence and set manifest from multi combined data";
    }

    else
    {
      v30 = 0;
      v31[0] = 0;
      v31[1] = 0;
      if (DERDecodeSeqNext(&v32, &v30))
      {
        goto LABEL_41;
      }

      v22 = "%s: MultiCombinedItem malformed for multi combined data";
      while (1)
      {
        v23 = *(v15 + 2016);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        if (DERParseSequenceContentToObject(v31, 4u, &DERFDRMultiCombinedItemSpecs, &v26, 0x40uLL, 0))
        {
          break;
        }

        if (v26)
        {
          v24 = *(&v26 + 1) == 0;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          AMFDRDecodeLogInternal(3, "%s: found an empty data class in multi combined data", "_AMFDRDecodeVerifyMultiCombinedDataInternal");
          v18 = *v15 | 0x20000;
          goto LABEL_15;
        }

        *(v15 + 88) = v26;
        if (v28 && *(&v28 + 1))
        {
          *(v15 + 104) = v28;
        }

        else
        {
          *(v15 + 2016) |= 0x2000uLL;
        }

        if (v29 && *(&v29 + 1))
        {
          *(v15 + 120) = v29;
          *(v15 + 2016) |= 0x1000uLL;
        }

        *(v15 + 24) = v27;
        v25 = _AMFDRDecodeVerifyData(v15);
        if (v25)
        {
          *v15 |= v25;
        }

        if (*(v15 + 2032) == 1)
        {
          *(v15 + 2024) = v15 + 728;
        }

        *(v15 + 2016) = v23;
        if (DERDecodeSeqNext(&v32, &v30))
        {
          goto LABEL_41;
        }
      }
    }

    AMFDRDecodeVerifyMultiCombinedDataIntegrity_cold_1(v15, v22);
LABEL_41:
    v18 = *v15;
    if (!*v15)
    {
      v19 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v19 = _AMFDRDecodeTolerateErrorsForOptions(*(v15 + 2016), v18);
LABEL_17:
    free(v15);
    return v19;
  }

  AMFDRDecodeLogInternal(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeVerifyMultiCombinedDataIntegrity");
  return 0x80000000000000;
}

unint64_t _AMFDRDecodeTolerateErrorsForOptions(__int16 a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 2) != 0 && (a2 & 0x2600000000100) != 0)
  {
    AMFDRDecodeLogInternal(4, "%s: ignoring unsealed error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", a2 & 0x2600000000100);
    v2 &= 0xFFFD9FFFFFFFFEFFLL;
  }

  if ((a1 & 4) != 0 && (v2 & 0x140000) != 0)
  {
    AMFDRDecodeLogInternal(4, "%s: ignoring trust object mismatch error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", v2 & 0x140000);
    v2 &= 0xFFFFFFFFFFEBFFFFLL;
  }

  if ((a1 & 8) != 0)
  {
    v4 = 0x8005A33C80;
    if ((a1 & 1) == 0)
    {
      v4 = 0x8005A03C00;
    }

    v5 = v2 & v4;
    if ((v2 & v4) != 0)
    {
      AMFDRDecodeLogInternal(4, "%s: ignoring raw error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", v5);
      v2 ^= v5;
    }
  }

  if ((a1 & 0x10) != 0 && (v2 & 0x1040000300000) != 0)
  {
    AMFDRDecodeLogInternal(4, "%s: ignoring offline signing verification error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", v2 & 0x1040000300000);
    v2 &= 0xFFFEFBFFFFCFFFFFLL;
  }

  if ((a1 & 0x40) != 0 && (v2 & 0x2C0100) != 0)
  {
    AMFDRDecodeLogInternal(4, "%s: ignoring no trustobject error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", v2 & 0x2C0100);
    v2 &= 0xFFFFFFFFFFD3FEFFLL;
  }

  if ((a1 & 0x4000) != 0 && (v2 & 0x1000000000000000) != 0)
  {
    AMFDRDecodeLogInternal(4, "%s: ignoring incomplete subcc error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", v2 & 0x1000000000000000);
    return v2 & 0xEFFFFFFFFFFFFFFFLL;
  }

  return v2;
}

uint64_t AMFDRDecodeCombined(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  v12 = malloc(0x7F8uLL);
  if (v12)
  {
    v13 = v12;
    bzero(v12, 0x7F8uLL);
    if (a1 && a2)
    {
      if (a3 && a4)
      {
        if (a5 && a6)
        {
          v13[1] = a1;
          v13[2] = a2;
          v14 = _AMFDRDecodeCombined(v13);
          if (!v14)
          {
            *a3 = v13[243];
            *a4 = v13[244];
            v15 = v13[4];
            *a5 = v13[3];
            *a6 = v15;
          }

          goto LABEL_15;
        }

        AMFDRDecodeLogInternal(3, "%s: outData must be non NULL and outDataLength must be non 0");
      }

      else
      {
        AMFDRDecodeLogInternal(3, "%s: outTrustObject must be non NULL and outTrustObjectLength must be non 0");
      }
    }

    else
    {
      AMFDRDecodeLogInternal(3, "%s: inData must be non NULL and inDataLength must be non 0");
    }

    v14 = 1;
LABEL_15:
    free(v13);
    return v14;
  }

  AMFDRDecodeLogInternal(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeCombined");
  return 0x80000000000000;
}

uint64_t AMFDRDecodeCheckCertRevocation(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  __n = 0;
  __s2 = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __s1[0] = v4;
  __s1[1] = v4;
  v21[0] = v4;
  v21[1] = v4;
  __n_4[0] = v4;
  __n_4[1] = v4;
  v5 = a2[32];
  v6 = a2[33];
  v7 = AMSupportDigestSha256();
  if (v7 || (v8 = a2[18], v9 = a2[19], (v7 = AMSupportDigestSha256()) != 0))
  {
LABEL_6:
    v10 = v7;
    v11 = "%s: AMSupportDigestSha256 failed";
LABEL_7:
    AMFDRDecodeLogInternal(3, v11, "AMFDRDecodeCheckCertRevocation");
    goto LABEL_8;
  }

  if (a2[34] && a2[35])
  {
    v7 = AMSupportDigestSha256();
    if (v7)
    {
      goto LABEL_6;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = AMFDRDecodeIterateTrustObjectRevokedBegin(a1);
  if (v15)
  {
    v10 = v15;
    AMFDRDecodeLogInternal(3, "%s: AMFDRDecodeIterateTrustObjectRevokedBegin failed");
  }

  else
  {
    v16 = AMFDRDecodeIterateTrustObjectRevokedNext(a1, &__s2, &__n);
    if (v16)
    {
      v10 = v16;
      AMFDRDecodeLogInternal(3, "%s: AMFDRDecodeIterateTrustObjectRevokedNext failed");
    }

    else
    {
      v11 = "%s: AMFDRDecodeIterateTrustObjectRevokedNext failed";
      while (1)
      {
        v10 = __s2;
        if (!__s2)
        {
          break;
        }

        v17 = __n;
        if (!memcmp(__s1, __s2, __n))
        {
          v10 = 0x10000000000;
          AMFDRDecodeLogInternal(3, "%s: FDR Trust Object revoked certificate found");
          break;
        }

        if (!memcmp(v21, v10, v17))
        {
          v10 = 0x10000000000;
          AMFDRDecodeLogInternal(3, "%s: FDR Trust Object revoked public key found");
          break;
        }

        if (v14 && !memcmp(__n_4, v10, v17))
        {
          v10 = 0x10000000000;
          AMFDRDecodeLogInternal(3, "%s: FDR Trust Object revoked client ID found");
          break;
        }

        v10 = AMFDRDecodeIterateTrustObjectRevokedNext(a1, &__s2, &__n);
        if (v10)
        {
          goto LABEL_7;
        }
      }
    }
  }

LABEL_8:
  v12 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t AMFDRDecodeVerifyCertIssuerWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  if (!a3)
  {
    AMFDRDecodeVerifyCertIssuerWithOptions_cold_1();
    return 1;
  }

  if ((a4 & 0x100) != 0)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        if (_AMFDRDecodeVerifySignatureDataWithOid(*(a2 + 208), *(a2 + 216), *(a1 + 32), v9, *a1, *(a1 + 8), *(a1 + 16), v8, a2 + 240, 1, a5))
        {
          v10 = 0x20000000000;
          AMFDRDecodeLogInternal(3, "%s: PKI: im4c cert signature validation with issuer pubkey failed");
        }

        else
        {
          AMFDRDecodeLogInternal(7, "%s: PKI: verify im4c cert was issued and signed by issuer (success)", "_AMFDRDecodeVerifyImage4CertIssuer");
          v10 = AMFDRDecodeCheckCertRevocation(a3, a1);
          if (v10)
          {
            AMFDRDecodeLogInternal(3, "%s: im4c revocation check failed");
          }
        }
      }

      else
      {
        v10 = 0x40000000000;
        AMFDRDecodeLogInternal(3, "%s: decoded IM4C signature is empty");
      }
    }

    else
    {
      v10 = 0x40000000000;
      AMFDRDecodeLogInternal(3, "%s: decoded IM4C signature OID is empty");
    }

    return v10;
  }

  return _AMFDRDecodeVerifyCertIssuerInternal(a1, a2, a3, a5);
}

uint64_t _AMFDRDecodeVerifyCertIssuerInternal(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[0] = v7;
  v19[1] = v7;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *(a2 + 136);
  if (v8 != *(a1 + 104) || memcmp(*(a2 + 128), *(a1 + 96), v8))
  {
    AMFDRDecodeLogInternal(3, "%s: PKI: cert was not issued by issuer (subject != issuer)", "_AMFDRDecodeVerifyCertIssuerInternal");
    v10 = malloc(0x100uLL);
    if (_AMFDRDecodeSequenceString(*(a2 + 128), *(a2 + 136), v10))
    {
      v11 = "decode error";
    }

    else
    {
      v11 = v10;
    }

    v12 = malloc(0x100uLL);
    if (_AMFDRDecodeSequenceString(*(a1 + 96), *(a1 + 104), v12))
    {
      v13 = "decode error";
    }

    else
    {
      v13 = v12;
    }

    AMFDRDecodeLogInternal(3, "%s: subject: %s, issuer: %s", "_AMFDRDecodeVerifyCertIssuerInternal", v11, v13);
    if (v10)
    {
      free(v10);
    }

    if (v12)
    {
      free(v12);
    }

    return 0x20000000000;
  }

  v18 = -86;
  if (DERParseSequenceContentToObject((a1 + 16), DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, v19, 0x20uLL, 0x20uLL))
  {
    AMFDRDecodeLogInternal(3, "%s: decodeAlgId failed");
    return 0x40000000000;
  }

  if (DERParseBitString(a1 + 32, &v16, &v18))
  {
    AMFDRDecodeLogInternal(3, "%s: DERParseBitString(sig) failed");
    return 0x40000000000;
  }

  if (v18)
  {
    AMFDRDecodeLogInternal(3, "%s: numUnused != 0");
    return 0x40000000000;
  }

  if (_AMFDRDecodeVerifySignatureDataWithOid(*(a2 + 208), *(a2 + 216), v16, v17, *a1, *(a1 + 8), *&v19[0], DWORD2(v19[0]), a1 + 240, 0, a4))
  {
    AMFDRDecodeLogInternal(3, "%s: PKI: cert signature validation with issuer pubkey failed", "_AMFDRDecodeVerifyCertIssuerInternal");
    return 0x20000000000;
  }

  AMFDRDecodeLogInternal(7, "%s: PKI: verify cert was issued and signed by issuer (success)", "_AMFDRDecodeVerifyCertIssuerInternal");
  if (!a3)
  {
    return 0;
  }

  v14 = AMFDRDecodeCheckCertRevocation(a3, a1);
  if (v14)
  {
    AMFDRDecodeLogInternal(3, "%s: revocation check failed", "_AMFDRDecodeVerifyCertIssuerInternal");
  }

  return v14;
}

uint64_t AMFDRDecodeFDR2Data(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  v29 = 0u;
  *v30 = 0u;
  v28 = 0u;
  v31 = a1;
  v32 = a2;
  memset(v33, 170, sizeof(v33));
  if (DERDecodeItem(&v31, v33))
  {
    AMFDRDecodeLogInternal(3, "%s: failed to decode FDR2 Format", "AMFDRDecodeFDR2Data");
    return 128;
  }

  if (v33[0] != 0x2000000000000010)
  {
    AMFDRDecodeLogInternal(3, "%s: FDR2 Format unexpected tag: %llu", "AMFDRDecodeFDR2Data", v33[0]);
    return 0x4000000000000;
  }

  if (v31 + v32 < v33[1] + v33[2])
  {
    AMFDRDecodeLogInternal(3, "%s: item is bigger on the inside", "AMFDRDecodeFDR2Data");
    return 4;
  }

  if (v31 + v32 > v33[1] + v33[2])
  {
    AMFDRDecodeLogInternal(3, "%s: Buffer contains %lu unused bytes", "AMFDRDecodeFDR2Data", v32 - v33[2]);
    return 8;
  }

  if (DERParseSequenceContentToObject(&v33[1], 3u, &DERFDR2DataItemSpecs, &v28, 0x30uLL, 0))
  {
    return 0x8000000000000;
  }

  v13 = v28;
  if (!v28 || *(&v28 + 1) != 4)
  {
    AMFDRDecodeLogInternal(3, "%s: malformed FDR2 Format, invalid fdr2Data.tag.length");
    return 0x8000000000000;
  }

  v14 = "fdr2";
  if (*v28 != *"fdr2")
  {
    goto LABEL_15;
  }

  v10 = 512;
  if (v29 && *(&v29 + 1))
  {
    v26 = 0u;
    v27 = 0u;
    if (DERParseSequenceContentToObject(&v29, 2u, &DERFDRItemSpecs, &v26, 0x20uLL, 0))
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR2 Format (DERFDRItemSpecs)");
      return 0x8000000000000;
    }

    v13 = v26;
    if (!v26 || *(&v26 + 1) != 4)
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR2 Format, invalid tag length");
      return 0x8000000000000;
    }

    v14 = "fdrd";
    if (*v26 != *"fdrd")
    {
LABEL_15:
      v15 = *v14;
      v24 = v13[2];
      v25 = v13[3];
      v22 = *v13;
      v23 = v13[1];
      v20 = v14[2];
      v21 = v14[3];
      v19 = v14[1];
      v16 = "%s: malformed FDR2 Format, expected tag %c%c%c%c found tag %c%c%c%c";
LABEL_16:
      AMFDRDecodeLogInternal(3, v16, "AMFDRDecodeFDR2Data", v15, v19, v20, v21, v22, v23, v24, v25);
      return 0x8000000000000;
    }

    v10 = 0;
    v17 = DWORD2(v27);
    *a3 = v27;
    *a4 = v17;
  }

  if (v30[0] && v30[1])
  {
    v26 = 0u;
    v27 = 0u;
    if (DERParseSequenceContentToObject(v30, 2u, &DERFDRItemSpecs, &v26, 0x20uLL, 0))
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR2 Format (manifest2)");
      return 0x8000000000000;
    }

    if (!v26 || *(&v26 + 1) != 4)
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR2 Format (manifest2), invalid tag length");
      return 0x8000000000000;
    }

    if (*v26 == *"mft2")
    {
      v18 = DWORD2(v27);
      *a5 = v27;
      *a6 = v18;
      return v10;
    }

    v15 = kFDRTagStr_mft2[0];
    v24 = *(v26 + 2);
    v25 = *(v26 + 3);
    v22 = *v26;
    v23 = *(v26 + 1);
    v20 = kFDRTagStr_mft2[2];
    v21 = kFDRTagStr_mft2[3];
    v19 = kFDRTagStr_mft2[1];
    v16 = "%s: malformed FDR2 Format (manifest2), expected tag %c%c%c%c found tag %c%c%c%c";
    goto LABEL_16;
  }

  return v10;
}

uint64_t AMFDRDecodeOfflineBlob(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4, void *a5, _DWORD *a6, void *a7, _DWORD *a8)
{
  memset(v21, 170, sizeof(v21));
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = a1;
  v22[1] = a2;
  if (DERDecodeSeqInit(v22, v21, v20))
  {
    v14 = "%s: failed to decode offline blob Format";
  }

  else if (DERDecodeSeqNext(v20, &v21[1]))
  {
    v14 = "%s: failed to get CSR from offline blob";
  }

  else
  {
    if (v21[1] != 2)
    {
      goto LABEL_16;
    }

    v17 = v21[3];
    *a3 = v21[2];
    *a4 = v17;
    if (DERDecodeSeqNext(v20, &v21[1]))
    {
      v14 = "%s: failed to get CSR signature from offline blob";
      goto LABEL_5;
    }

    if (v21[1] != 2)
    {
      goto LABEL_16;
    }

    v18 = v21[3];
    *a5 = v21[2];
    *a6 = v18;
    if (DERDecodeSeqNext(v20, &v21[1]))
    {
      v14 = "%s: failed to get attestation from offline blob";
      goto LABEL_5;
    }

    if (v21[1] != 2)
    {
LABEL_16:
      v15 = 32;
      AMFDRDecodeLogInternal(3, "%s: malformed offline blob");
      return v15;
    }

    v19 = v21[3];
    *a7 = v21[2];
    *a8 = v19;
    if (DERDecodeSeqNext(v20, &v21[1]) == 1)
    {
      return 0;
    }

    v14 = "%s: unexepcted items in offline blob";
  }

LABEL_5:
  v15 = 16;
  AMFDRDecodeLogInternal(3, v14, "AMFDRDecodeOfflineBlob");
  return v15;
}

uint64_t AMFDRDecodeTrustEvaluation(uint64_t *a1, void *a2, _DWORD *a3)
{
  v6 = malloc(0x7F8uLL);
  if (v6)
  {
    v7 = v6;
    bzero(v6, 0x7F8uLL);
    if (a1)
    {
      v8 = *a1;
      if (*a1 && (v9 = *(a1 + 2), v9))
      {
        if (a2 && a3)
        {
          v10 = a1[18];
          if ((v10 & 0x801) != 0)
          {
            *(v7 + 8) = v8;
            v11 = 16;
          }

          else
          {
            *(v7 + 1944) = a1[2];
            *(v7 + 1952) = *(a1 + 6);
            *(v7 + 24) = v8;
            *(v7 + 32) = v9;
            *(v7 + 280) = a1[4];
            LODWORD(v9) = *(a1 + 10);
            v11 = 288;
          }

          *(v7 + v11) = v9;
          v14 = *(a1 + 14);
          *(v7 + 72) = a1[6];
          *(v7 + 80) = v14;
          v15 = *(a1 + 18);
          *(v7 + 88) = a1[8];
          *(v7 + 96) = v15;
          if ((v10 & 0x80) != 0)
          {
            v18 = a1[12];
            v19 = *(a1 + 26);
            v16 = v18;
            v17 = v19;
          }

          else
          {
            v16 = a1[10];
            v17 = *(a1 + 22);
            v18 = a1[12];
            v19 = *(a1 + 26);
          }

          *(v7 + 104) = v16;
          *(v7 + 112) = v17;
          v20 = *(a1 + 34);
          *(v7 + 216) = a1[16];
          *(v7 + 224) = v20;
          v21 = *(a1 + 66);
          *(v7 + 232) = a1[32];
          *(v7 + 240) = v21;
          *(v7 + 136) = v18;
          *(v7 + 144) = v19;
          v22 = a1[14];
          v23 = *(a1 + 30);
          *(v7 + 168) = v22;
          *(v7 + 176) = v23;
          v24 = a1[26];
          if (v24 && (v25 = *(a1 + 54), v25))
          {
            *(v7 + 184) = v24;
            v23 = v25;
          }

          else
          {
            *(v7 + 184) = v22;
          }

          *(v7 + 192) = v23;
          *(v7 + 2016) = v10;
          v26 = v14 != 48 && (v10 & 0x20 | v22) == 0;
          v27 = kAMFDRDecodeImplementationSha1;
          if (!v26)
          {
            v27 = kAMFDRDecodeImplementationSha384;
          }

          *(v7 + 2008) = v27;
          if ((v10 & 0x100) != 0)
          {
            *(v7 + 2008) = kAMFDRDecodeImplementationSha384;
            v28 = *(a1 + 58);
            *(v7 + 152) = a1[28];
            *(v7 + 160) = v28;
          }

          if ((v10 & 0x1000) != 0)
          {
            v29 = *(a1 + 62);
            *(v7 + 120) = a1[30];
            *(v7 + 128) = v29;
          }

          *(v7 + 2024) = a1[19];
          v30 = a1[34];
          if (v30)
          {
            v31 = *(a1 + 70);
            if (v31)
            {
              *(v7 + 344) = v30;
              *(v7 + 352) = v31;
            }
          }

          v32 = AMFDRDecodeEvaluateTrustInternal(v7);
          *a2 = *(v7 + 1912);
          *a3 = *(v7 + 1920);
          if (*(v7 + 2032) == 1)
          {
            v33 = *(v7 + 744);
            *(a1 + 10) = *(v7 + 728);
            *(a1 + 11) = v33;
            *(a1 + 12) = *(v7 + 760);
          }

          if (v32)
          {
            v12 = _AMFDRDecodeTolerateErrorsForOptions(a1[18], v32);
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_14;
        }

        AMFDRDecodeLogInternal(3, "%s: outRawData and outRawDataLength must be non NULL");
      }

      else
      {
        AMFDRDecodeLogInternal(3, "%s: ctx->inData must be non NULL and ctx->inDataLength must be non 0");
      }
    }

    else
    {
      AMFDRDecodeLogInternal(3, "%s: ctx must be non NULL");
    }

    v12 = 1;
LABEL_14:
    free(v7);
    return v12;
  }

  AMFDRDecodeLogInternal(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeTrustEvaluation");
  return 0x80000000000000;
}

uint64_t AMFDRDecodeManifestBody(unint64_t **a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v8 = v2;
  *&v8[16] = v2;
  v7 = v2;
  memset(v6, 170, sizeof(v6));
  v5 = 0;
  v3 = malloc(0x1D8uLL);
  *a1 = v3;
  if (Img4DecodeInitManifest())
  {
    AMFDRDecodeManifestBody_cold_1();
    return 2;
  }

  if (DERDecodeItem((v3 + 35), v6))
  {
    AMFDRDecodeManifestBody_cold_2();
    return 2;
  }

  if (v6[0] != 0x2000000000000011)
  {
    AMFDRDecodeManifestBody_cold_3();
    return 2;
  }

  if (DERParseInteger((v3 + 33), &v5))
  {
    AMFDRDecodeManifestBody_cold_4();
    return 2;
  }

  if (DERImg4DecodeFindProperty())
  {
    AMFDRDecodeManifestBody_cold_5();
    return 2;
  }

  *(v3 + 7) = *&v8[8];
  if (DERDecodeSeqContentInit(v3 + 7, v3))
  {
    AMFDRDecodeManifestBody_cold_6();
    return 2;
  }

  return 0;
}

uint64_t AMFDRDecodeManifestBodyNext(unint64_t **a1, void *a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  v10 = 0uLL;
  v9 = 0;
  v5 = *a1;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v6 = DERDecodeSeqNext(v5, &v9);
  if (v6 == 1)
  {
    return 0x40000000000000;
  }

  if (v6)
  {
    AMFDRDecodeLogInternal(3, "%s: can't parse DERDecodeSeqNext");
  }

  else
  {
    ObjectPropertyData = Img4DecodeGetObjectPropertyData();
    if (ObjectPropertyData == 1)
    {
      return 0;
    }

    if (ObjectPropertyData)
    {
      AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetObjectPropertyData failed");
    }

    else if (DERImg4DecodePropertyWithItem())
    {
      AMFDRDecodeManifestBodyNext_cold_1();
    }

    else
    {
      if (!Img4DecodeEvaluateDictionaryProperties())
      {
        return 0;
      }

      AMFDRDecodeManifestBodyNext_cold_2();
    }
  }

  return 2;
}

uint64_t _AMFDRDecodeGetDataInstCallback(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a1 == 1768846196)
    {
      PropertyData = Img4DecodeGetPropertyData();
      if (PropertyData)
      {
        AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_inst) failed.");
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    PropertyData = 6;
    AMFDRDecodeLogInternal(3, "%s: context is NULL");
  }

  return PropertyData;
}

uint64_t AMFDRDecodeManifestBodyDestroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }

  return 0;
}

void AMFDRDecodeIterateSysconfigDestroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }
  }
}

_OWORD *AMFDRDecodeCreateCertificate()
{
  v0 = malloc(0x130uLL);
  v1 = v0;
  if (v0)
  {
    v0[17] = 0u;
    v0[18] = 0u;
    v0[15] = 0u;
    v0[16] = 0u;
    v0[13] = 0u;
    v0[14] = 0u;
    v0[11] = 0u;
    v0[12] = 0u;
    v0[9] = 0u;
    v0[10] = 0u;
    v0[7] = 0u;
    v0[8] = 0u;
    v0[5] = 0u;
    v0[6] = 0u;
    v0[3] = 0u;
    v0[4] = 0u;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: Failed to malloc empty certificate", "AMFDRDecodeCreateCertificate");
  }

  return v1;
}

void AMFDRDecodeDestoryCertificate(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t AMFDRDecodeGetTbsCertSubject(uint64_t a1)
{
  if (a1)
  {
    return a1 + 128;
  }

  else
  {
    return 0;
  }
}

uint64_t AMFDRDecodeGetTbsCertExtensions(uint64_t a1)
{
  if (a1)
  {
    return a1 + 192;
  }

  else
  {
    return 0;
  }
}

uint64_t AMFDRDecodeGetPubkey(uint64_t a1)
{
  if (a1)
  {
    return a1 + 208;
  }

  else
  {
    return 0;
  }
}

uint64_t AMFDRDecodeGetRawCertificate(uint64_t a1)
{
  if (a1)
  {
    return a1 + 256;
  }

  else
  {
    return 0;
  }
}

void *AMFDRDecodeCreateCertificateChain()
{
  v0 = malloc(0x18uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: Failed to malloc empty certificate chain", "AMFDRDecodeCreateCertificateChain");
  }

  return v1;
}

void AMFDRDecodeDestoryCertificateChain(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t _AMFDRDecodeVerifyTrustObject(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1944);
  if (!v2)
  {
    AMFDRDecodeLogInternal(3, "%s: FDR Trust Object is NULL", "_AMFDRDecodeVerifyTrustObject");
    v4 = 0x200000;
    goto LABEL_5;
  }

  v3 = AMFDRDecodeTrustObject((a1 + 1768), v2, *(a1 + 1952));
  if (!v3)
  {
    if (!*(a1 + 72))
    {
      AMFDRDecodeLogInternal(3, "%s: FDR Trust Object digest is NULL", "_AMFDRDecodeVerifyTrustObject");
      v4 = 0x40000;
      goto LABEL_5;
    }

    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __s2[1] = v7;
    __s2[2] = v7;
    __s2[0] = v7;
    v8 = *(a1 + 80);
    if (v8 == 48)
    {
      v11 = *(a1 + 1944);
      v12 = *(a1 + 1952);
      if (AMSupportDigestSha384())
      {
LABEL_11:
        AMFDRDecodeLogInternal(3, "%s: AMSupportDigestSha256 failed");
LABEL_16:
        v4 = 0x100000;
        goto LABEL_5;
      }
    }

    else
    {
      if (v8 != 32)
      {
        AMFDRDecodeLogInternal(3, "%s: FDR Trust Object digest size not supported. digest is of size %zu", "_AMFDRDecodeVerifyTrustObject", v8);
        v4 = 0x80000;
        goto LABEL_5;
      }

      v9 = *(a1 + 1944);
      v10 = *(a1 + 1952);
      if (AMSupportDigestSha256())
      {
        goto LABEL_11;
      }
    }

    if (!memcmp(*(a1 + 72), __s2, *(a1 + 80)))
    {
      v4 = 0;
      goto LABEL_6;
    }

    AMFDRDecodeLogInternal(3, "%s: FDR Trust Object digest mismatch.");
    goto LABEL_16;
  }

  v4 = v3;
  AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object Format", "_AMFDRDecodeVerifyTrustObject");
LABEL_5:
  *a1 |= v4;
LABEL_6:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t _AMFDRDecodeVerifySealingManifestCallback(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 1717660002)
  {
    switch(a1)
    {
      case 1145525076:
        if (Img4DecodeGetPropertyData())
        {
          v5 = 3;
          AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kImg4Tag_DGST) failed.", "_AMFDRDecodeVerifySealingManifestCallback");
          v6 = *a4 | 0x80000000;
          goto LABEL_30;
        }

        v5 = 0;
        *(a4 + 1992) = 0xAAAAAAAAAAAAAAAALL;
        *(a4 + 2000) = 0;
        return v5;
      case 1400000109:
        return 0;
      case 1668047219:
        if (Img4DecodeGetPropertyData())
        {
          v5 = 3;
          AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_clas) failed.", "_AMFDRDecodeVerifySealingManifestCallback");
          v6 = *a4 | 0x20000000;
LABEL_30:
          *a4 = v6;
          return v5;
        }

        v5 = 0;
        *(a4 + 1960) = 0xAAAAAAAAAAAAAAAALL;
        *(a4 + 1968) = 0;
        return v5;
    }

LABEL_16:
    v7 = -1;
    v8 = &dword_2977F0D04;
    while (v7 != 47)
    {
      v9 = *v8++;
      ++v7;
      if (v9 == a1)
      {
        if (v7 < 0x30)
        {
          return 0;
        }

        break;
      }
    }

    AMFDRDecodeLogInternal(7, "%s: Unsupported tag found in manifest '%c%c%c%c'", "_AMFDRDecodeVerifySealingManifestCallback", (a1 >> 24), (a1 << 8 >> 24), (a1 >> 8), a1);
    return 0;
  }

  if (a1 == 1717660003)
  {
    if (Img4DecodeGetPropertyBoolean())
    {
      v5 = 3;
      AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_faic) failed.", "_AMFDRDecodeVerifySealingManifestCallback");
      v6 = *a4 | 0x400000000;
      goto LABEL_30;
    }

    v5 = 0;
    *(a4 + 2004) = 0;
    return v5;
  }

  if (a1 == 1768846196)
  {
    if (!Img4DecodeGetPropertyData())
    {
      v5 = 0;
      *(a4 + 1976) = 0xAAAAAAAAAAAAAAAALL;
      *(a4 + 1984) = 0;
      return v5;
    }

    AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_inst) failed.", "_AMFDRDecodeVerifySealingManifestCallback");
    v5 = 0;
    v6 = *a4 | 0x40000000;
    goto LABEL_30;
  }

  if (a1 != 1886546276)
  {
    goto LABEL_16;
  }

  if (Img4DecodeGetPropertyData())
  {
    v5 = 3;
    AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_prid) failed.", "_AMFDRDecodeVerifySealingManifestCallback");
    v6 = *a4 | 0x2000;
    goto LABEL_30;
  }

  *(a4 + 200) = 0xAAAAAAAAAAAAAAAALL;
  *(a4 + 208) = 0;
  if (!*(a4 + 1944) || !*(a4 + 1952))
  {
    AMFDRDecodeLogInternal(4, "%s: Skipping revocation check (trustobject unset)", "_AMFDRDecodeVerifySealingManifestCallback");
    v5 = 0;
    v6 = *a4 | 0x200000;
    goto LABEL_30;
  }

  v11 = AMFDRDecodeCheckProducerIDRevocation(a4 + 1768, 0xAAAAAAAAAAAAAAAALL, 0);
  v5 = v11;
  if (v11)
  {
    AMFDRDecodeLogInternal(3, "%s: AMFDRDecodeCheckProducerIDRevocation failed with error 0x%016llX", "_AMFDRDecodeVerifySealingManifestCallback", v11);
    *a4 |= v5;
    if ((v5 & 0xFFFFFFFFBFFFFFFFLL) != 0)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t _AMFDRDecodeVerifySealingRequestCallback(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  if (a1 <= 1668047218)
  {
    if (a1 != 1145525076)
    {
      if (a1 != 1400000109)
      {
LABEL_12:
        v8 = -1;
        v9 = &dword_2977F0D04;
        while (v8 != 47)
        {
          v10 = *v9++;
          ++v8;
          if (v10 == a1)
          {
            if (v8 < 0x30)
            {
              return 0;
            }

            break;
          }
        }

        AMFDRDecodeLogInternal(7, "%s: Unsupported tag found in manifest '%c%c%c%c'", "_AMFDRDecodeVerifySealingRequestCallback", (a1 >> 24), (a1 << 8 >> 24), (a1 >> 8), a1);
      }

      return 0;
    }

    if (Img4DecodeGetPropertyData())
    {
      v12 = "%s: Img4DecodeGetPropertyData(kImg4Tag_DGST) failed.";
    }

    else if (*(a4 + 1312))
    {
      if (**(*(a4 + 2008) + 32))
      {
        v12 = "%s: propertyLength != AMFDRDigestSize";
      }

      else
      {
        if (!memcmp(0, (a4 + 1496), 0))
        {
          return 0;
        }

        v12 = "%s: propertyValue != fdrDecode->sealingManifestImg4.payload.hash";
      }
    }

    else
    {
      v12 = "%s: fdrDecode->sealingRequestImg4.payload_hashed is false";
    }

    v6 = 3;
    AMFDRDecodeLogInternal(3, v12, "_AMFDRDecodeVerifySealingRequestCallback");
    v7 = *a4 | 0x4000000000;
    goto LABEL_38;
  }

  if (a1 == 1668047219)
  {
    if (Img4DecodeGetPropertyData())
    {
      v11 = "%s: Img4DecodeGetPropertyData(kFDRTag_clas) failed.";
    }

    else
    {
      v11 = "%s: propertyLength != kImg4TagSize";
    }

    v6 = 3;
    AMFDRDecodeLogInternal(3, v11, "_AMFDRDecodeVerifySealingRequestCallback");
    v7 = *a4 | 0x1000000000;
    goto LABEL_38;
  }

  if (a1 != 1717660003)
  {
    if (a1 == 1768846196)
    {
      if (Img4DecodeGetPropertyData())
      {
        v5 = "%s: Img4DecodeGetPropertyData(kFDRTag_inst) failed.";
LABEL_8:
        v6 = 3;
        AMFDRDecodeLogInternal(3, v5, "_AMFDRDecodeVerifySealingRequestCallback");
        v7 = *a4 | 0x2000000000;
LABEL_38:
        *a4 = v7;
        return v6;
      }

      v13 = *(a4 + 144);
      if (v13)
      {
        v6 = 3;
        AMFDRDecodeLogInternal(3, "%s: kFDRTag_inst propertyLength (%d) != fdrDecode->manifestUniqueID.length (%zu)", "_AMFDRDecodeVerifySealingRequestCallback", 0, v13);
        v7 = *a4 | 0x40000000;
        goto LABEL_38;
      }

      if (memcmp(0, *(a4 + 136), 0))
      {
        v5 = "%s: kFDRTag_inst propertyValue != fdrDecode->manifestUniqueID.data";
        goto LABEL_8;
      }

      return 0;
    }

    goto LABEL_12;
  }

  if (Img4DecodeGetPropertyBoolean())
  {
    v6 = 3;
    AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_faic) failed.", "_AMFDRDecodeVerifySealingRequestCallback");
    v7 = *a4 | 0x400000000;
    goto LABEL_38;
  }

  v6 = 0;
  *(a4 + 2004) = 0;
  return v6;
}

uint64_t _AMFDRDecodeFilterDataInstanceCallback(int a1, uint64_t a2, int a3, _WORD *a4)
{
  if (!*a4)
  {
    AMFDRDecodeLogInternal(3, "%s: fdrDecode is NULL", "_AMFDRDecodeFilterDataInstanceCallback");
    return 6;
  }

  if (!a2)
  {
    AMFDRDecodeLogInternal(3, "%s: property is NULL", "_AMFDRDecodeFilterDataInstanceCallback");
    **a4 |= 1uLL;
    return 6;
  }

  if (a1 != 1768846196)
  {
    return 0;
  }

  PropertyData = Img4DecodeGetPropertyData();
  if (PropertyData)
  {
    v7 = PropertyData;
    AMFDRDecodeLogInternal(3, "%s: Img4DecodeGetPropertyData(kFDRTag_inst) failed.", "_AMFDRDecodeFilterDataInstanceCallback");
    **a4 |= 0x4000uLL;
    return v7;
  }

  if (a3 != 1)
  {
    AMFDRDecodeLogInternal(3, "%s: unexpected property type != kImg4ObjectProperty", "_AMFDRDecodeFilterDataInstanceCallback");
    return 0;
  }

  if (_AMFDRDecodeInstPropertyMatchingWithType(0xAAAAAAAAAAAAAAAALL, 0, *(*a4 + 104), *(*a4 + 112), *(*a4 + 184), *(*a4 + 192), 1, *a4))
  {
    AMFDRDecodeLogInternal(6, "%s: kFDRTag_inst property == fdrDecode->uniqueID, found corresponding Data Instance.", "_AMFDRDecodeFilterDataInstanceCallback");
    v7 = 0;
    a4[4] = 1;
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: kFDRTag_inst property != fdrDecode->uniqueID", "_AMFDRDecodeFilterDataInstanceCallback");
    v7 = 0;
    a4[4] = 256;
  }

  return v7;
}

uint64_t _AMFDRDecodeInstPropertyMatchingWithType(_DWORD *a1, uint64_t a2, void *__s2, size_t __n, const void *a5, size_t a6, int a7, void *a8)
{
  if (a8)
  {
    v11 = a8[252];
    if ((v11 & 0x100) != 0 && a8[19] && a8[20] && (!a7 || (v11 & 0x80) != 0))
    {
      a6 = 0;
      a5 = 0;
      __n = a8[20];
      __s2 = a8[19];
    }
  }

  if (a2 < 5 || *a1 != 762014067)
  {
    if (__n != a2)
    {
      v17 = a2;
      v18 = __n;
      v12 = "%s: kFDRTag_inst propertyLength (%d) != instLength (%zu)";
      goto LABEL_14;
    }

    if (memcmp(a1, __s2, __n))
    {
      v12 = "%s: kFDRTag_inst propertyValue != instValue";
LABEL_14:
      v13 = 4;
LABEL_20:
      AMFDRDecodeLogInternal(v13, v12, "_AMFDRDecodeInstPropertyMatching", v17, v18);
      return 0;
    }

    return 1;
  }

  v14 = (a2 - 4);
  if (__n >= v14)
  {
    v17 = (a2 - 4);
    v18 = __n;
    v12 = "%s: kFDRTag_inst propertyLength (sik) (%d) <= instLength (%zu)";
    goto LABEL_19;
  }

  v15 = a1 + 1;
  if (memcmp(a1 + 1, __s2, __n))
  {
    v12 = "%s: kFDRTag_inst propertyValue (sik) != instValue";
    goto LABEL_19;
  }

  if (*(v15 + __n) != 45)
  {
    v12 = "%s: kFDRTag_inst propertyValue missing expected -";
    goto LABEL_19;
  }

  result = 1;
  if (a6 && a5)
  {
    if (a6 == v14 + ~__n)
    {
      if (!memcmp(v15 + __n + 1, a5, a6))
      {
        return 1;
      }

      v12 = "%s: kFDRTag_inst propertyValue (sik) != sikValue";
    }

    else
    {
      v17 = (v14 + ~__n);
      v18 = a6;
      v12 = "%s: kFDRTag_inst propertyLength (sik) (%d) != sikLength (%zu)";
    }

LABEL_19:
    v13 = 3;
    goto LABEL_20;
  }

  return result;
}

uint64_t _AMFDRDecodeSearchEntryFromPropertyList(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v15[0] = a1;
  v15[1] = a2;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v6;
  v10 = v6;
  v14 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11 = 0;
  if (DERDecodeSeqInit(v15, &v14, v13) || v14 != 0x2000000000000011)
  {
    _AMFDRDecodeSearchEntryFromPropertyList_cold_3();
    return 2;
  }

  if (DERDecodeSeqNext(v13, &v11))
  {
LABEL_8:
    AMFDRDecodeLogInternal(3, "%s: cannot find tag in property list", "_AMFDRDecodeSearchEntryFromPropertyList");
    return 2;
  }

  while (1)
  {
    v9 = 0u;
    v10 = 0u;
    if (DERParseSequenceContentToObject(v12, 2u, &DERFDRItemSpecs, &v9, 0x20uLL, 0))
    {
      _AMFDRDecodeSearchEntryFromPropertyList_cold_1();
      return 2;
    }

    if (*(&v9 + 1) == 4 && AMFDRTagsStringToTag(v9) == a3)
    {
      break;
    }

    if (DERDecodeSeqNext(v13, &v11))
    {
      goto LABEL_8;
    }
  }

  if (a4)
  {
    result = 0;
    v8 = *(&v10 + 1);
    *a4 = v10;
    a4[1] = v8;
  }

  else
  {
    _AMFDRDecodeSearchEntryFromPropertyList_cold_2();
    return 1;
  }

  return result;
}

uint64_t _AMFDRDecodeVerifyData(uint64_t *a1)
{
  v28 = 0;
  v2 = a1[252];
  if ((~*(a1 + 504) & 0x1080) == 0)
  {
    AMFDRDecodeLogInternal(3, "%s: cannot set kAMFDRDecodeOptionManifestOnly and kAMFDRDecodeOptionSubCCOnly at the same time");
    goto LABEL_68;
  }

  if ((v2 & 0x80) != 0)
  {
    v5 = a1[3];
    v6 = a1[4];
    if (!Img4DecodeInitManifest())
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v3 = a1[3];
  v4 = a1[4];
  if ((v2 & 0x1000) == 0)
  {
    if (!Img4DecodeInit())
    {
LABEL_5:
      v2 = a1[252];
      goto LABEL_9;
    }

LABEL_7:
    AMFDRDecodeLogInternal(3, "%s: FDR failed to decode Data img4");
LABEL_18:
    v8 = *a1;
    v9 = 83901440;
LABEL_19:
    result = v8 | v9;
    *a1 = v8 | v9;
    v11 = a1[4];
    a1[239] = a1[3];
    a1[240] = v11;
    return result;
  }

  a1[106] = 0;
  *(a1 + 51) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 50) = 0u;
  *(a1 + 47) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 46) = 0u;
  *(a1 + 43) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 42) = 0u;
  *(a1 + 39) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 37) = 0u;
  *(a1 + 38) = 0u;
  *(a1 + 35) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 33) = 0u;
  *(a1 + 34) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 29) = 0u;
  *(a1 + 30) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  a1[51] = v3;
  a1[52] = v4;
  a1[61] = "IM4P";
  a1[62] = 4;
  a1[67] = v3;
  a1[68] = v4;
LABEL_9:
  v7 = a1[35];
  if ((v2 & 0x1000) != 0)
  {
    if (v7)
    {
      goto LABEL_16;
    }

    AMFDRDecodeLogInternal(3, "%s: trust evaluation on subCC requires a reStitchManifest");
LABEL_68:
    result = *a1 | 1;
    goto LABEL_36;
  }

  if (!v7)
  {
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v28 = AMFDRTagsStringToTag(a1[11]);
    goto LABEL_22;
  }

LABEL_16:
  *(a1 + 53) = *(a1 + 35);
  if (DERImg4DecodeManifest())
  {
    AMFDRDecodeLogInternal(3, "%s: FDR failed to decode manifestOverride");
    goto LABEL_18;
  }

  v2 = a1[252];
  if ((v2 & 0x1000) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((v2 & 0x80) == 0)
  {
    if (Img4DecodeGetPayloadType())
    {
      AMFDRDecodeLogInternal(3, "%s: FDR failed to get payload type");
      goto LABEL_18;
    }

    if (a1[66] != 3)
    {
      v27 = a1[66];
      AMFDRDecodeLogInternal(3, "%s: Payload version is wrong size. got %zu expected %d");
      goto LABEL_50;
    }

    v20 = a1[65];
    v21 = *v20;
    v22 = *(v20 + 2);
    if (v21 != 11825 || v22 != 48)
    {
      AMFDRDecodeLogInternal(3, "%s: Payload version mismatch");
LABEL_50:
      v8 = *a1;
      v9 = 0x8005001C00;
      goto LABEL_19;
    }
  }

LABEL_22:
  v12 = a1[11];
  if (!v12)
  {
    goto LABEL_25;
  }

  if ((a1[12] - 3) >= 2)
  {
    AMFDRDecodeLogInternal(3, "%s: Invalid data class length");
LABEL_35:
    result = *a1 | 0x100000004000C00;
LABEL_36:
    *a1 = result;
    return result;
  }

  if (AMFDRTagsStringToTag(v12) != v28)
  {
    AMFDRDecodeLogInternal(3, "%s: Payload type mismatch");
    goto LABEL_35;
  }

LABEL_25:
  v13 = *a1;
  if ((a1[252] & 0x80) != 0)
  {
    v15 = a1[251];
    if (!Img4DecodePerformManifestTrustEvaluationWithCallbacks())
    {
      goto LABEL_59;
    }
  }

  else
  {
    v14 = a1[251];
    if (!Img4DecodePerformTrustEvaluationWithCallbacks())
    {
      goto LABEL_59;
    }
  }

  v16 = *a1;
  if ((*a1 & 0x1000000000000) == 0)
  {
LABEL_54:
    AMFDRDecodeLogInternal(3, "%s: FDR data trust evaluation failed.", "_AMFDRDecodeVerifyData");
    if (!*a1)
    {
      *a1 = 0x100000000000;
    }

    goto LABEL_61;
  }

  v17 = a1[251];
  if (v17 == kAMFDRDecodeImplementationSha1)
  {
    v18 = "%s: Evaluation returned code=0x%016llX, re-evaluate with FDR 2.0 format";
    v19 = kAMFDRDecodeImplementationSha384;
    goto LABEL_44;
  }

  if (v17 == kAMFDRDecodeImplementationSha384)
  {
    v18 = "%s: Evaluation returned code=0x%016llX, re-evaluate with FDR 1.0 format";
    v19 = kAMFDRDecodeImplementationSha1;
LABEL_44:
    a1[251] = v19;
    AMFDRDecodeLogInternal(4, v18, "_AMFDRDecodeVerifyData", v16);
  }

  v24 = a1[251];
  if (v24 != kAMFDRDecodeImplementationSha1 && v24 != kAMFDRDecodeImplementationSha384)
  {
    goto LABEL_54;
  }

  v25 = *a1;
  *a1 = v13;
  *(a1 + 400) = 0;
  if ((a1[252] & 0x80) != 0)
  {
    v26 = Img4DecodePerformManifestTrustEvaluationWithCallbacks();
  }

  else
  {
    v26 = Img4DecodePerformTrustEvaluationWithCallbacks();
  }

  if (v26)
  {
    AMFDRDecodeLogInternal(4, "%s: Re-evaluation returned code=0x%016llX", "_AMFDRDecodeVerifyData", *a1);
    *a1 = v25;
    goto LABEL_54;
  }

  if ((a1[252] & 0x20) != 0)
  {
    AMFDRDecodeLogInternal(3, "%s: Re-evaluation succeeded but decode options require version2", "_AMFDRDecodeVerifyData");
    *a1 |= 0x2000000000000uLL;
  }

  else
  {
    AMFDRDecodeLogInternal(4, "%s: Re-evaluation succeeded", "_AMFDRDecodeVerifyData");
  }

LABEL_59:
  if (*(a1 + 401) == 1)
  {
    *(a1 + 2032) = 1;
  }

LABEL_61:
  if ((*(a1 + 2017) & 0x10) != 0)
  {
    result = *a1;
    if ((a1[47] & 1) == 0)
    {
      result |= 0x1000000000000000uLL;
      *a1 = result;
    }
  }

  else
  {
    result = *a1;
  }

  a1[239] = a1[67];
  a1[240] = a1[68];
  return result;
}

uint64_t _AMFDRDecodeFindDataFromMultiCombined(uint64_t a1)
{
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v14 = v2;
  *__n = v2;
  *__s1 = v2;
  v13 = v2;
  v18[0] = 0;
  v18[1] = 0;
  v17 = 0;
  PayloadSeqAndSetManifestFromMultiCombinedData = _AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData(a1, &v16);
  if (PayloadSeqAndSetManifestFromMultiCombinedData)
  {
    v10 = PayloadSeqAndSetManifestFromMultiCombinedData;
    _AMFDRDecodeFindDataFromMultiCombined_cold_1(a1);
    return v10;
  }

  if (*(a1 + 104) && *(a1 + 112))
  {
    v4 = 0;
  }

  else
  {
    if ((*(a1 + 2017) & 0x20) == 0)
    {
      _AMFDRDecodeFindDataFromMultiCombined_cold_5();
      return 1;
    }

    v4 = 1;
  }

  if (DERDecodeSeqNext(&v16, &v17))
  {
    goto LABEL_36;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    while (1)
    {
      *v14 = 0u;
      *__n = 0u;
      *__s1 = 0u;
      v13 = 0u;
      if (DERParseSequenceContentToObject(v18, 4u, &DERFDRMultiCombinedItemSpecs, __s1, 0x40uLL, 0))
      {
        _AMFDRDecodeFindDataFromMultiCombined_cold_2();
        return 0x20000;
      }

      if (__s1[1] != *(a1 + 96) || memcmp(__s1[0], *(a1 + 88), __s1[1]) || (v4 & 1) == 0 && (v14[1] != *(a1 + 112) || memcmp(v14[0], *(a1 + 104), v14[1])) || __n[1] != *(a1 + 128))
      {
        goto LABEL_12;
      }

      v8 = *(a1 + 120);
      if (__n[0])
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_24;
      }

LABEL_12:
      if (DERDecodeSeqNext(&v16, &v17))
      {
        if ((v5 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_29;
      }
    }

    if (!v8 || memcmp(__n[0], v8, __n[1]))
    {
      goto LABEL_12;
    }

LABEL_24:
    if ((v4 & 1) == 0)
    {
      AMFDRDecodeLogInternal(5, "%s: found data in multi combined format", "_AMFDRDecodeFindDataFromMultiCombined");
      v6 = *(&v13 + 1);
      v7 = v13;
LABEL_29:
      v10 = 0;
      *(a1 + 24) = v7;
      *(a1 + 32) = v6;
      return v10;
    }

    if (v5)
    {
      break;
    }

    v9 = v14[1];
    *(a1 + 104) = v14[0];
    *(a1 + 112) = v9;
    AMFDRDecodeLogInternal(5, "%s: found data in multi combined format", "_AMFDRDecodeFindDataFromMultiCombined");
    v6 = *(&v13 + 1);
    v7 = v13;
    v5 = 1;
    if (DERDecodeSeqNext(&v16, &v17))
    {
      goto LABEL_29;
    }
  }

  _AMFDRDecodeFindDataFromMultiCombined_cold_3(a1);
LABEL_36:
  _AMFDRDecodeFindDataFromMultiCombined_cold_4();
  return 512;
}

uint64_t _AMFDRDecodeVerifySignatureDataWithOid(const void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, char a10, void *a11)
{
  v25 = *MEMORY[0x29EDCA608];
  *&v23[0] = a7;
  *(&v23[0] + 1) = a8;
  if (DEROidCompare(v23, &oidSha1Rsa))
  {
    memset(&v23[1], 170, 20);
    if (AMSupportDigestSha1())
    {
      goto LABEL_33;
    }

    result = AMSupportRsaVerifySignatureSha1();
    if (!a11)
    {
      goto LABEL_34;
    }

LABEL_31:
    if (result != 2)
    {
      goto LABEL_34;
    }

    *a11 |= 0x80000000000000uLL;
LABEL_33:
    result = 0xFFFFFFFFLL;
    goto LABEL_35;
  }

  if (DEROidCompare(v23, &oidSha256Rsa))
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[1] = v14;
    v23[2] = v14;
    if (AMSupportDigestSha256())
    {
      goto LABEL_33;
    }

    result = AMSupportRsaVerifySignatureSha256();
    if (a11)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (DEROidCompare(v23, &oidSha384Rsa))
  {
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[2] = v15;
    v24 = v15;
    v23[1] = v15;
    if (AMSupportDigestSha384())
    {
      goto LABEL_33;
    }

    result = AMSupportRsaVerifySignatureSha384();
    if (a11)
    {
      goto LABEL_31;
    }

LABEL_34:
    if (!result)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (DEROidCompare(v23, &oidSha256Ecdsa))
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[1] = v16;
    v23[2] = v16;
    v21 = 0;
    v22 = 0uLL;
    if (!a9)
    {
      _AMFDRDecodeVerifySignatureDataWithOid_cold_4();
      goto LABEL_33;
    }

    if (!a10)
    {
      if (DERDecodeItem(a9, &v21))
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    if (*(a9 + 8))
    {
      v22 = *a9;
LABEL_25:
      if (AMSupportDigestSha256())
      {
        goto LABEL_33;
      }

      v18 = a2;
      v19 = a1;
      goto LABEL_30;
    }

LABEL_38:
    _AMFDRDecodeVerifySignatureDataWithOid_cold_1();
    result = 6;
    goto LABEL_35;
  }

  if (DEROidCompare(v23, &oidSha384Ecdsa))
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[2] = v17;
    v24 = v17;
    v23[1] = v17;
    v21 = 0;
    v22 = 0uLL;
    if (!a9)
    {
      _AMFDRDecodeVerifySignatureDataWithOid_cold_2();
      goto LABEL_33;
    }

    if (a10)
    {
      if (!*(a9 + 8))
      {
        goto LABEL_38;
      }

      v22 = *a9;
    }

    else if (DERDecodeItem(a9, &v21))
    {
      goto LABEL_33;
    }

    if (AMSupportDigestSha384())
    {
      goto LABEL_33;
    }

    v18 = a2;
    v19 = a1;
LABEL_30:
    result = AMFDRDecodeEcdsaVerifySignature(v19, v18);
    if (!a11)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  result = 4;
LABEL_35:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _AMFDRDecodeSequenceString(unint64_t a1, unint64_t a2, _OWORD *a3)
{
  v19[0] = a1;
  v19[1] = a2;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0uLL;
  v16 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v14 = 0u;
  v15 = 0u;
  if (a3)
  {
    a3[14] = 0uLL;
    a3[15] = 0uLL;
    a3[12] = 0uLL;
    a3[13] = 0uLL;
    a3[10] = 0uLL;
    a3[11] = 0uLL;
    a3[8] = 0uLL;
    a3[9] = 0uLL;
    a3[6] = 0uLL;
    a3[7] = 0uLL;
    a3[4] = 0uLL;
    a3[5] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    *a3 = 0uLL;
    a3[1] = 0uLL;
    v4 = DERDecodeSeqContentInit(v19, v18);
    if (v4)
    {
      v11 = v4;
      _AMFDRDecodeSequenceString_cold_1();
    }

    else
    {
      v5 = 0;
      v6 = 255;
      while (1)
      {
        v7 = DERDecodeSeqNext(v18, &v16);
        if (v7)
        {
          break;
        }

        v13 = v17;
        if (v16 == 0x2000000000000011)
        {
          v14 = 0u;
          v15 = 0u;
          v8 = DERParseSequenceToObject(&v13, DERNumAttributeTypeAndValueItemSpecs, &DERAttributeTypeAndValueItemSpecs, &v14, 0x20uLL, 0);
          if (v8)
          {
            v11 = v8;
            AMFDRDecodeLogInternal(3, "%s: malformed AttributeTypeAndValue format: %d", "_AMFDRDecodeSequenceString", v8);
            return v11;
          }

          if (v15)
          {
            v13 = v15;
            v17 = 0uLL;
            v16 = 0;
            v9 = DERDecodeItem(&v13, &v16);
            if (v9)
            {
              v11 = v9;
              AMFDRDecodeLogInternal(3, "%s: malformed attribute: %d");
              return v11;
            }

            if (v16 == 19 || v16 == 12)
            {
              if (v5)
              {
                if (!v6)
                {
                  return 0;
                }

                *(a3 + v5++) = 32;
                --v6;
              }

              v10 = *(&v17 + 1);
              if (v6 < *(&v17 + 1))
              {
                memcpy(a3 + v5, v17, v6);
                return 0;
              }

              v6 -= *(&v17 + 1);
              memcpy(a3 + v5, v17, *(&v17 + 1));
              v5 += v10;
            }
          }
        }

        else
        {
          AMFDRDecodeLogInternal(3, "%s: Attribute must be set container. Found unexpected tag 0x%llu, skipping", "_AMFDRDecodeSequenceString", v16);
        }
      }

      v11 = v7;
      if (v7 == 1)
      {
        return 0;
      }

      AMFDRDecodeLogInternal(3, "%s: failed to decode all sequences: %d");
    }
  }

  else
  {
    _AMFDRDecodeSequenceString_cold_2();
    return 3;
  }

  return v11;
}

uint64_t AMFDRDecodeDigestByLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 48)
  {
    return AMSupportDigestSha384();
  }

  if (a4 == 32)
  {
    return AMSupportDigestSha256();
  }

  return 1;
}

void OUTLINED_FUNCTION_0(unsigned __int8 *a1@<X8>)
{
  v8 = a1[2];
  v9 = a1[3];
  v6 = *a1;
  v7 = a1[1];
  v4 = v1[2];
  v5 = v1[3];
  v2 = *v1;
  v3 = v1[1];
}

uint64_t OUTLINED_FUNCTION_2@<X0>(int a1@<W8>)
{
  result = 0;
  *v3 = v1;
  *v2 = a1;
  return result;
}

void OUTLINED_FUNCTION_4()
{
  *(v0 - 40) = 0;
  *(v0 - 32) = 0;
  *(v0 - 24) = 0;
}

void OUTLINED_FUNCTION_8(unsigned __int8 *a1@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v1 = *a1;
  v2 = a1[1];
}

uint64_t OUTLINED_FUNCTION_12(unint64_t *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return DERParseSequenceContentToObject(a1, 4u, v17, &a17, 0x40uLL, 0);
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return DERParseSequenceContentToObject(va, 3u, a3, va1, 0x30uLL, 0);
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18)
{
  a16 = 0;
  a17 = 0;
  a18 = 0;

  return DERDecodeSeqNext(&a14, &a16);
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v5);
  if (!result)
  {
    if (HIDWORD(v5[0]))
    {
      result = 7;
    }

    else
    {
      result = 0;
      *a2 = v5[0];
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v9[3] = *MEMORY[0x29EDCA608];
  memset(v9, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v9, 0);
  if (result)
  {
    goto LABEL_7;
  }

  v6 = v9[0];
  *a2 = v9[0];
  if (v6 >> 1 != 0x1000000000000008)
  {
    result = 2;
    goto LABEL_7;
  }

  if (__CFADD__(v9[1], v9[2]))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = v9[1] + v9[2];
    if (v9[1] <= v9[1] + v9[2])
    {
      result = 0;
      *a3 = v9[1];
      a3[1] = v7;
LABEL_7:
      v8 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v11[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    result = 1;
    goto LABEL_8;
  }

  v11[0] = *a1;
  v11[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v11, a2, 0);
  if (result)
  {
LABEL_8:
    v10 = *MEMORY[0x29EDCA608];
    return result;
  }

  v8 = a2[1];
  v7 = a2[2];
  if (!__CFADD__(v8, v7))
  {
    v9 = v8 + v7;
    if (v9 <= a1[1] && *a1 <= v9)
    {
      result = 0;
      *a1 = v9;
      goto LABEL_8;
    }

    __break(0x5519u);
  }

  __break(0x5513u);
  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v13[3] = *MEMORY[0x29EDCA608];
  memset(v13, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v13, 0);
  if (!result)
  {
    if (v13[0] == 0x2000000000000010)
    {
      result = DERParseSequenceContentToObject(&v13[1], a2, a3, a4, a5, a6);
    }

    else
    {
      result = 2;
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v38 = *MEMORY[0x29EDCA608];
  v36 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v36 = *a1;
  v37 = v13;
  if (a2)
  {
    v14 = 0;
    while (1)
    {
      memset(v35, 170, sizeof(v35));
      v16 = v36;
      v15 = v37;
      result = DERDecodeSeqNext(&v36, v35);
      if (result)
      {
        if (result == 1)
        {
          if (a2 <= v14)
          {
            result = 0;
          }

          else
          {
            v29 = (a3 + 24 * v14 + 16);
            v30 = a2 - v14;
            result = 0;
            while (1)
            {
              v31 = *v29;
              v29 += 12;
              if ((v31 & 1) == 0)
              {
                break;
              }

              if (!--v30)
              {
                goto LABEL_51;
              }
            }

            result = 5;
          }
        }

        goto LABEL_51;
      }

      if (a2 <= v14)
      {
        result = 2;
        goto LABEL_51;
      }

      while (1)
      {
        if (24 * v14 > ~a3)
        {
          goto LABEL_58;
        }

        v18 = a3 + 24 * v14;
        v19 = *(v18 + 16);
        if ((v19 & 2) != 0 || v35[0] == *(v18 + 8))
        {
          break;
        }

        result = 2;
        if ((v19 & 1) != 0 && a2 > ++v14)
        {
          continue;
        }

        goto LABEL_51;
      }

      if ((v19 & 4) == 0)
      {
        v20 = *v18;
        v21 = *v18 + 16;
        if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
        {
          result = 7;
          goto LABEL_51;
        }

        if (v20 > ~a4)
        {
          goto LABEL_58;
        }

        v23 = (a4 + v20);
        v24 = v23 + 16;
        if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
        {
          goto LABEL_59;
        }

        *v23 = *&v35[1];
        if ((v19 & 8) != 0)
        {
          if (v16 >= v35[1])
          {
            if (v15 < v16 || *(v23 + 1) > v15 - v16)
            {
              goto LABEL_59;
            }

            *v23 = v16;
            result = 3;
            goto LABEL_51;
          }

          v27 = *(v23 + 1);
          v28 = v27 + v35[1] - v16;
          if (__CFADD__(v27, v35[1] - v16))
          {
            __break(0x5500u);
            return result;
          }

          if (v15 < v16 || v28 > v15 - v16)
          {
            goto LABEL_59;
          }

          *v23 = v16;
          *(v23 + 1) = v28;
        }
      }

      if (a2 == ++v14)
      {
        if (!__CFADD__(v35[1], v35[2]))
        {
          v32 = a1[1];
          if (!__CFADD__(*a1, v32))
          {
            v11 = v35[1] + v35[2];
            v13 = *a1 + v32;
            break;
          }
        }

LABEL_58:
        __break(0x5513u);
        goto LABEL_59;
      }

      if (a2 <= v14)
      {
        v11 = v36;
        v13 = v37;
        break;
      }
    }
  }

  if (v11 == v13)
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

LABEL_51:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

uint64_t _AMFDRDecodeComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          v8 = *(a5 + 32);
          if (v8)
          {
            if (*v8 == a4)
            {
              if (DEROidCompare(v8[1], &oidSha1))
              {
                OUTLINED_FUNCTION_9();
                if (!AMSupportDigestSha1())
                {
                  return 0;
                }
              }

              else if (DEROidCompare(*(*(a5 + 32) + 8), &oidSha256))
              {
                OUTLINED_FUNCTION_9();
                if (!AMSupportDigestSha256())
                {
                  return 0;
                }
              }

              else
              {
                if (!DEROidCompare(*(*(a5 + 32) + 8), &oidSha384))
                {
                  return 4;
                }

                OUTLINED_FUNCTION_9();
                if (!AMSupportDigestSha384())
                {
                  return 0;
                }
              }

              return 3;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AMFDRDecodeIterateTrustObjectTrustedBegin(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_4();
  if (DERDecodeSeqContentInit((v2 + 16), (v1 + 64)))
  {
    AMFDRDecodeLogInternal(3, "%s: can't parse FDR Trust Object trusted sequence");
  }

  else if (DERDecodeSeqNext((v1 + 64), v7))
  {
    AMFDRDecodeLogInternal(3, "%s: can't parse FDR Trust Object trusted");
  }

  else if (v7[1] && (OUTLINED_FUNCTION_19(), v4))
  {
    OUTLINED_FUNCTION_3(v3);
    if (v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_0(v5);
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object trusted, expected tag %c%c%c%c found tag %c%c%c%c", "AMFDRDecodeIterateTrustObjectTrustedBegin");
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object trusted, invalid trusted tag length");
  }

  return 0x400000;
}

uint64_t AMFDRDecodeIterateTrustObjectTrustedNext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    OUTLINED_FUNCTION_10();
    v6 = DERDecodeSeqNext((v5 + 64), &v8);
    if (v6)
    {
      if (v6 != 1)
      {
        return 0x400000;
      }

      OUTLINED_FUNCTION_17();
    }

    else
    {
      v7 = v9;
    }

    return OUTLINED_FUNCTION_2(v7);
  }

  return result;
}

uint64_t AMFDRDecodeIterateTrustObjectTrustedKeyBegin(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_4();
  if (DERDecodeSeqContentInit((v2 + 112), (v1 + 128)))
  {
    AMFDRDecodeLogInternal(3, "%s: can't parse FDR Trust Object trusted key sequence");
  }

  else
  {
    v4 = DERDecodeSeqNext((v1 + 128), v8);
    if (v4)
    {
      if (v4 == 1)
      {
        return 0x40000000000000;
      }

      AMFDRDecodeLogInternal(3, "%s: can't parse FDR Trust Object trusted key: %d");
    }

    else if (v8[1] && (OUTLINED_FUNCTION_19(), v6))
    {
      OUTLINED_FUNCTION_3(v5);
      if (v6)
      {
        return 0;
      }

      OUTLINED_FUNCTION_0(v7);
      AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object trusted key, expected tag %c%c%c%c found tag %c%c%c%c", "AMFDRDecodeIterateTrustObjectTrustedKeyBegin");
    }

    else
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object trusted key, invalid trusted key tag length");
    }
  }

  return 0x400000;
}

uint64_t AMFDRDecodeIterateTrustObjectTrustedKeyNext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    OUTLINED_FUNCTION_10();
    v6 = DERDecodeSeqNext((v5 + 128), &v8);
    if (v6)
    {
      if (v6 != 1)
      {
        return 0x400000;
      }

      OUTLINED_FUNCTION_17();
    }

    else
    {
      v7 = v9;
    }

    return OUTLINED_FUNCTION_2(v7);
  }

  return result;
}

uint64_t AMFDRDecodeIterateTrustObjectRevokedBegin(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_4();
  if (DERDecodeSeqContentInit((v2 + 48), (v1 + 80)))
  {
    AMFDRDecodeLogInternal(3, "%s: can't parse FDR Trust Object Revoked sequence");
  }

  else if (DERDecodeSeqNext((v1 + 80), v7))
  {
    AMFDRDecodeLogInternal(3, "%s: can't parse FDR Trust Object Revoked");
  }

  else if (v7[1] && (OUTLINED_FUNCTION_19(), v4))
  {
    OUTLINED_FUNCTION_3(v3);
    if (v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_0(v5);
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object Revoked, expected tag %c%c%c%c found tag %c%c%c%c", "AMFDRDecodeIterateTrustObjectRevokedBegin");
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object Revoked, invalid trusted tag length");
  }

  return 0x400000;
}

uint64_t AMFDRDecodeIterateTrustObjectRevokedNext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    OUTLINED_FUNCTION_10();
    v6 = DERDecodeSeqNext((v5 + 80), &v8);
    if (v6)
    {
      if (v6 == 1)
      {
        OUTLINED_FUNCTION_17();
        return OUTLINED_FUNCTION_2(v7);
      }
    }

    else
    {
      v7 = v9;
      if (v9 == 32)
      {
        return OUTLINED_FUNCTION_2(v7);
      }
    }

    return 0x400000;
  }

  return result;
}

uint64_t AMFDRDecodeIterateTrustObjectSslRootBegin(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_4();
  if (DERDecodeSeqContentInit((v2 + 32), (v1 + 96)))
  {
    AMFDRDecodeLogInternal(3, "%s: can't parse FDR Trust Object SslRoot sequence");
  }

  else if (DERDecodeSeqNext((v1 + 96), v7))
  {
    AMFDRDecodeLogInternal(3, "%s: can't parse FDR Trust Object SslRoot");
  }

  else if (v7[1] && (OUTLINED_FUNCTION_19(), v4))
  {
    OUTLINED_FUNCTION_3(v3);
    if (v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_0(v5);
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object SslRoot, expected tag %c%c%c%c found tag %c%c%c%c", "AMFDRDecodeIterateTrustObjectSslRootBegin");
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: malformed FDR Trust Object SslRoot, invalid trusted tag length");
  }

  return 0x400000;
}

uint64_t AMFDRDecodeIterateTrustObjectSslRootNext(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    OUTLINED_FUNCTION_10();
    v8 = DERDecodeSeqNext((v7 + 96), v11);
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v9 = v12;
      if (v12)
      {
        v10 = v11[1];
LABEL_9:
        result = 0;
        *a2 = v10;
        *a3 = v9;
        return result;
      }
    }

    return 0x400000;
  }

  return result;
}

uint64_t AMFDRDecodeIterateProducerIDBegin(void *a1, uint64_t a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    v6[0] = a2;
    v6[1] = a3;
    if (DERDecodeSeqInit(v6, &v5, a1))
    {
      AMFDRDecodeLogInternal(3, "%s: can't parse FDR Producer ID sequence", "AMFDRDecodeIterateProducerIDBegin");
      return 0x80000000000;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMFDRDecodeIterateProducerIDNext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    OUTLINED_FUNCTION_10();
    v6 = DERDecodeSeqNext(v5, &v8);
    if (v6)
    {
      if (v6 != 1)
      {
        return 0x80000000000;
      }

      OUTLINED_FUNCTION_17();
    }

    else
    {
      v7 = v9;
    }

    return OUTLINED_FUNCTION_2(v7);
  }

  return result;
}

uint64_t AMFDRDecodeCheckProducerIDRevocation(uint64_t a1, uint64_t a2, unsigned int a3)
{
  __n_4 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v3 = 1;
  if (!a1 || !a2 || !a3)
  {
    return v3;
  }

  AMFDRDecodeLogInternal(7, "%s: AMFDRDecodeCheckProducerIDRevocation", "AMFDRDecodeCheckProducerIDRevocation");
  v7 = AMFDRDecodeIterateProducerIDBegin(&__n_4, a2, a3);
  if (v7)
  {
    v3 = v7;
    AMFDRDecodeLogInternal(3, "%s: AMFDRDecodeIterateProducerIDBegin failed with error 0x%016llX");
    return v3;
  }

  v15 = OUTLINED_FUNCTION_22(0, v8, v9, v10, v11, v12, v13, v14, v27, v29, v31, __s2, v34, __n_4, v36, v37, v38, v39);
  if (v15)
  {
    if (v15 != 1)
    {
      v3 = 0x80000000000;
      AMFDRDecodeLogInternal(3, "%s: AMFDRDecodeIterateProducerIDNext(first) failed with error 0x%016llX");
      return v3;
    }

    return 0;
  }

  v16 = v38;
  if (!v38)
  {
    return 0;
  }

  while (2)
  {
    HIDWORD(v34) = 0;
    __s2 = 0;
    v17 = AMFDRDecodeIterateTrustObjectRevokedBegin(a1);
    if (v17)
    {
      v3 = v17;
      AMFDRDecodeLogInternal(3, "%s: AMFDRDecodeIterateTrustObjectRevokedBegin failed");
      return v3;
    }

    while (1)
    {
      v18 = AMFDRDecodeIterateTrustObjectRevokedNext(a1, &__s2, &v34 + 4);
      if (v18)
      {
        v3 = v18;
        AMFDRDecodeLogInternal(3, "%s: AMFDRDecodeIterateTrustObjectRevokedNext failed");
        return v3;
      }

      if (!__s2)
      {
        break;
      }

      if (!memcmp(v16, __s2, HIDWORD(v34)))
      {
        AMFDRDecodeLogInternal(3, "%s: FDR Trust Object revoked certificate found", "AMFDRDecodeCheckProducerIDRevocation");
        return 0x10000000000;
      }
    }

    v25 = OUTLINED_FUNCTION_22(0, 0, v19, v20, v21, v22, v23, v24, v28, v30, v32, 0, v34, __n_4, v36, v37, v38, v39);
    if (v25)
    {
      if (v25 != 1)
      {
        v3 = 0x80000000000;
        AMFDRDecodeLogInternal(3, "%s: AMFDRDecodeIterateProducerIDNext(loop) failed with error 0x%016llX");
        return v3;
      }

      return 0;
    }

    v3 = 0;
    v16 = v38;
    if (v38)
    {
      continue;
    }

    break;
  }

  return v3;
}

uint64_t AMFDRDecodeIterateMultiCombinedDataBeginWithRawData(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = 1;
  if (!a1 || !a2 || !a3)
  {
    return v4;
  }

  if (*a1)
  {
    AMFDRDecodeLogInternal(3, "%s: cannot begin with an already initialized iterator");
    return 1;
  }

  v9 = malloc(0x10uLL);
  *a1 = v9;
  if (!v9)
  {
    AMFDRDecodeLogInternal(3, "%s: failed to allocate *multiCombinedDataIterator");
    return 1;
  }

  *v9 = 0;
  v9[1] = 0;
  v15 = 0uLL;
  v10 = malloc(0x7F8uLL);
  if (v10)
  {
    v11 = v10;
    v10[1] = a2;
    v10[2] = a3;
    v10[252] = a4;
    v12 = _AMFDRDecodeCombined(v10);
    if (v12)
    {
      v4 = v12 | 0x5A01C00;
    }

    else
    {
      PayloadSeqAndSetManifestFromMultiCombinedData = _AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData(v11, &v15);
      if (PayloadSeqAndSetManifestFromMultiCombinedData)
      {
        v4 = PayloadSeqAndSetManifestFromMultiCombinedData | 0x20000;
        AMFDRDecodeLogInternal(3, "%s: Failed to get payload sequence and set manifest from multi combined data", "AMFDRDecodeIterateMultiCombinedDataBeginWithRawData");
      }

      else
      {
        v4 = 0;
        **a1 = v15;
      }
    }

    free(v11);
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeIterateMultiCombinedDataBeginWithRawData");
    return 0x80000000000000;
  }

  return v4;
}

uint64_t AMFDRDecodeIterateMultiCombinedDataNext(unint64_t *a1, void *a2, _DWORD *a3, void *a4, _DWORD *a5, void *a6, _DWORD *a7, void *a8, _DWORD *a9)
{
  result = 1;
  if (!a1 || !a2 || !a4 || !a6 || !a8)
  {
    return result;
  }

  v26 = 0;
  v27[0] = 0;
  v27[1] = 0;
  if (DERDecodeSeqNext(a1, &v26) == 1)
  {
    return 0x40000000000000;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (DERParseSequenceContentToObject(v27, 4u, &DERFDRMultiCombinedItemSpecs, &v22, 0x40uLL, 0))
  {
    AMFDRDecodeLogInternal(3, "%s: MultiCombinedItem malformed for multi combined data");
    return 0x20000;
  }

  if (!v22 || (v18 = DWORD2(v22), !*(&v22 + 1)))
  {
    AMFDRDecodeLogInternal(3, "%s: found an empty data class in multi combined data");
    return 0x20000;
  }

  *a2 = v22;
  *a3 = v18;
  if (v24)
  {
    v19 = DWORD2(v24);
    if (*(&v24 + 1))
    {
      *a4 = v24;
      *a5 = v19;
    }
  }

  if (v25)
  {
    v20 = DWORD2(v25);
    if (*(&v25 + 1))
    {
      *a6 = v25;
      *a7 = v20;
    }
  }

  result = 0;
  v21 = DWORD2(v23);
  *a8 = v23;
  *a9 = v21;
  return result;
}

uint64_t AMFDRDecodePublicKey()
{
  result = OUTLINED_FUNCTION_20();
  if (v0 && v2 && v3)
  {
    *(v0 + 64) = 0u;
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 32) = 0u;
    v5 = 0uLL;
    v4 = 0;
    *(v0 + 32) = v2;
    *(v0 + 40) = v3;
    if (_AMFDRDecodePubKey(v0 + 32, v0, v0 + 48))
    {
      AMFDRDecodeLogInternal(3, "%s: failed to decode public key: %d");
    }

    else
    {
      if (!DEROidCompare(v0 + 48, &oidEcPubKey))
      {
        AMFDRDecodeLogInternal(3, "%s: public key OID is not EC", "AMFDRDecodePublicKey");
        return 64;
      }

      if (!DERDecodeItem(v0 + 64, &v4))
      {
        result = 0;
        *(v0 + 16) = v5;
        return result;
      }

      AMFDRDecodeLogInternal(3, "%s: failed to decode params");
    }

    return 16;
  }

  return result;
}

uint64_t _AMFDRDecodePubKey(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v5;
  v21 = v5;
  v19 = -86;
  OUTLINED_FUNCTION_18();
  result = DERParseSequenceToObject(v6, v7, v8, v9, v10, v11);
  if (!result)
  {
    OUTLINED_FUNCTION_18();
    result = DERParseSequenceContentToObject(v13, v14, v15, v16, v17, v18);
    if (!result)
    {
      if (DEROidCompare(a3, &oidRsa) || DEROidCompare(a3, &oidEcPubKey))
      {
        result = DERParseBitString(&v21, a2, &v19);
        if (!result)
        {
          if (v19)
          {
            return 3;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t AMFDRDecodeCertificate()
{
  result = OUTLINED_FUNCTION_20();
  if (v0)
  {
    v4 = v2;
    if (v2)
    {
      v5 = v3;
      if (v3)
      {
        bzero(v0, 0x130uLL);
        v0[32] = v4;
        v0[33] = v5;
        if (DERParseSequenceToObject((v0 + 32), DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v0, 0x30uLL, 0x30uLL) || DERParseSequenceToObject(v0, 0xAu, &FDRDERTBSCertItemSpecs, (v0 + 6), 0xA0uLL, 0xA0uLL) || _AMFDRDecodePubKey((v0 + 18), v0 + 26, (v0 + 28)))
        {
          return 0x40000000000;
        }

        if (v0[31])
        {
          if (DEROidCompare((v0 + 28), &oidEcPubKey))
          {
            if (v0[31] != 10)
            {
              return 0x40000000000;
            }

            v6 = v0[30];
            if (*v6 != 6 || v6[1] != 8 || memcmp(v6 + 2, &_oidEcPrime256v1, 8uLL))
            {
              return 0x40000000000;
            }
          }

          else if (DEROidCompare((v0 + 28), &oidRsa))
          {
            if (v0[31] != 2)
            {
              return 0x40000000000;
            }

            v7 = v0[30];
            if (*v7 != 5 || v7[1])
            {
              return 0x40000000000;
            }
          }
        }

        v9 = 0xAAAAAAAAAAAAAAAALL;
        if (_AMFDRDecodeParseExtension((v0 + 6), &___oidAppleFDRClientID, &v9, v0 + 34, 1))
        {
          AMFDRDecodeLogInternal(5, "%s: ClientID extension not found", "AMFDRDecodeCertificate");
        }

        else if (v9 != 12)
        {
          return 0x40000000000;
        }

        if (_AMFDRDecodeParseExtension((v0 + 6), &___oidAppleSecureBootCertificateProperties, &v9, v0 + 36, 0))
        {
          AMFDRDecodeLogInternal(5, "%s: Certificate Properties extension not found", "AMFDRDecodeCertificate");
          return 0;
        }

        OUTLINED_FUNCTION_14();
        if (v8)
        {
          return 0;
        }

        return 0x40000000000;
      }
    }
  }

  return result;
}

uint64_t _AMFDRDecodeParseExtension(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v18[0] = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = 0xAAAAAAAAAAAAAAAALL;
  memset(v16, 170, sizeof(v16));
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = v5;
  v15 = v5;
  memset(v13, 170, sizeof(v13));
  v6 = 1;
  v14[0] = v5;
  if (a1 && a2 && a4)
  {
    *a4 = 0;
    a4[1] = 0;
    if (*(a1 + 152) && *(a1 + 144))
    {
      v17 = 0xAAAAAAAAAAAAAAAALL;
      v6 = 16;
      if (!DERDecodeSeqInit(a1 + 144, &v17, v18) && v17 == 0x2000000000000010)
      {
        v6 = 2;
        while (!DERDecodeSeqNext(v18, v16))
        {
          if (v16[0] != 0x2000000000000010 || DERParseSequenceContentToObject(&v16[1], DERNumExtensionItemSpecs, &DERExtensionItemSpecs, v14, 0x30uLL, 0x30uLL))
          {
            return 16;
          }

          if (DEROidCompare(a2, v14))
          {
            if (DERDecodeItem(&v15, v13))
            {
              return 0x40000000000;
            }

            v6 = 0;
            *a3 = v13[0];
            if (a5)
            {
              v11 = &v13[1];
            }

            else
            {
              v11 = &v15;
            }

            *a4 = *v11;
            return v6;
          }
        }
      }
    }

    else
    {
      return 512;
    }
  }

  return v6;
}

double AMFDRDecodeImage4Certificate()
{
  OUTLINED_FUNCTION_20();
  if (v0)
  {
    v4 = v1;
    if (v1)
    {
      v5 = v2;
      if (v2)
      {
        bzero(v0, 0x130uLL);
        v37 = 0u;
        v38 = 0u;
        memset(v36, 0, sizeof(v36));
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        memset(v31, 0, sizeof(v31));
        v29 = 0;
        v30 = 0uLL;
        *&v39 = v4;
        *(&v39 + 1) = v5;
        if (DERParseSequenceToObject(&v39, 4u, &DERFDRImage4CertItemSpecs, v36, 0x40uLL, 0x40uLL))
        {
          AMFDRDecodeLogInternal(3, "%s: failed to parse im4c: %d");
        }

        else if (*&v36[0] && *(&v36[0] + 1) == 4)
        {
          if (**&v36[0] == *"IM4C")
          {
            if (DERDecodeItem(&v37, v31))
            {
              AMFDRDecodeLogInternal(3, "%s: failed to parse signed section sequence: %d");
            }

            else
            {
              OUTLINED_FUNCTION_14();
              if (v6)
              {
                OUTLINED_FUNCTION_18();
                if (DERParseSequenceContentToObject(v7, v8, v9, v10, v11, v12))
                {
                  AMFDRDecodeLogInternal(3, "%s: failed to parse signed section of im4c: %d");
                }

                else if (DERDecodeItem(&v35, &v29))
                {
                  AMFDRDecodeLogInternal(3, "%s: failed to parse public key of im4c: %d");
                }

                else
                {
                  OUTLINED_FUNCTION_18();
                  if (DERParseSequenceToObject(v13, v14, v15, v16, v17, v18))
                  {
                    AMFDRDecodeLogInternal(3, "%s: failed to parse cert properties: %d");
                  }

                  else if (v32 && *(&v32 + 1) == 4)
                  {
                    if (*v32 == *"CRTP")
                    {
                      v19 = 0;
                      v20 = 0;
                      do
                      {
                        v21 = *(&kAMFDRDecodeEcdsaInfoList + v19);
                        v22 = *(v21 + 4);
                        v23 = 3;
                        while (*(&v38 + 1) != v22)
                        {
                          ++v22;
                          if (!--v23)
                          {
                            goto LABEL_23;
                          }
                        }

                        v20 = *(v21 + 24);
LABEL_23:
                        ++v19;
                      }

                      while (v19 != 3);
                      if (v20)
                      {
                        v24 = 0;
                        while (1)
                        {
                          v25 = *(&kAMFDRDecodeEcdsaInfoList + v24);
                          if (*(&v30 + 1) == *v25)
                          {
                            break;
                          }

                          v24 += 8;
                          if (v24 == 24)
                          {
                            goto LABEL_28;
                          }
                        }

                        v26 = *(v25 + 16);
                        if (!v26)
                        {
LABEL_28:
                          AMFDRDecodeLogInternal(3, "%s: unsupported public key length: %lu");
                          return result;
                        }

                        *v0 = v37;
                        v0[2] = v38;
                        v0[1] = *v20;
                        v0[13] = v30;
                        v0[14] = oidEcPubKey;
                        v27 = *v26;
                        v0[18] = v33;
                        v28 = v39;
                        v0[15] = v27;
                        v0[16] = v28;
                        result = *&v30;
                        v0[9] = v30;
                      }

                      else
                      {
                        AMFDRDecodeLogInternal(3, "%s: unsupported signature length: %lu");
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_8(v32);
                      AMFDRDecodeLogInternal(3, "%s: malformed cert property key: %c%c%c%c");
                    }
                  }

                  else
                  {
                    AMFDRDecodeLogInternal(3, "%s: malformed cert property key length: %lu");
                  }
                }
              }

              else
              {
                AMFDRDecodeLogInternal(3, "%s: unexpected signed section tag: 0x%llx");
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_8(*&v36[0]);
            AMFDRDecodeLogInternal(3, "%s: malformed im4c tag: %c%c%c%c");
          }
        }

        else
        {
          AMFDRDecodeLogInternal(3, "%s: malformed im4c tag length: %lu");
        }
      }
    }
  }

  return result;
}

uint64_t AMFDRDecodeIterateCertChainBegin(void *a1, uint64_t a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a1 = a2;
      a1[1] = a3;
      a1[2] = 0;
    }
  }

  return result;
}

void AMFDRDecodeIterateCertChainNextWithOptions(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16 = 0;
  if (a1)
  {
    OUTLINED_FUNCTION_20();
    if (v7)
    {
      if (*v3)
      {
        v8 = v5;
        v9 = *(v3 + 8);
        if (v9)
        {
          v10 = v6;
          if (!AMFDRDecodeParseDERLengthFromBuffer(*v3, v9, &v16) && *(v3 + 8) >= v16)
          {
            v11 = *a3;
            v12 = *v3;
            if ((v8 & 0x100) != 0)
            {
              AMFDRDecodeImage4Certificate();
            }

            else
            {
              v13 = AMFDRDecodeCertificate();
            }

            if (!v13)
            {
              v14 = *(v3 + 16);
              *(v3 + 16) = v14 + 1;
              *v10 = v14;
              v15 = *(v3 + 8) - v16;
              *v3 += v16;
              *(v3 + 8) = v15;
            }
          }
        }

        else
        {
          *a3 = 0;
        }
      }
    }
  }
}

uint64_t AMFDRDecodeParseDERLengthFromBuffer(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  memset(v6, 170, sizeof(v6));
  result = 1;
  if (a1 && a3)
  {
    v7[0] = a1;
    v7[1] = a2;
    if (DERDecodeItemPartialBufferGetLength(v7, v6, 0))
    {
      AMFDRDecodeLogInternal(3, "%s: failed to decode DER", "AMFDRDecodeParseDERLengthFromBuffer");
      return 2;
    }

    else
    {
      result = 0;
      *a3 = LODWORD(v6[2]) - a1 + LODWORD(v6[1]);
    }
  }

  return result;
}

uint64_t AMFDRDecodeMultiSealingResponse(uint64_t a1, int a2, _BYTE *a3)
{
  v3 = 1;
  if (a1 && a2 && a3)
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_6();
    v11 = DERParseSequenceToObject(v5, v6, v7, v8, v9, v10);
    if (v11)
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response Format");
      return 16;
    }

    if (OUTLINED_FUNCTION_13(v11, v12, &DERFDRMultiSealingResponsePayloadItemSpecs, v13, v14))
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response Payload Format");
      return 16;
    }

    if (v25 && (v16 = OUTLINED_FUNCTION_16(), (v19 = _AMFDRDecodeMultiSealingResposeRecords(v16, v17, v18)) != 0) || v26 && (v20 = OUTLINED_FUNCTION_15(), (v19 = _AMFDRDecodeMultiSealingResposeRecords(v20, v21, v22)) != 0))
    {
      v3 = v19;
      AMFDRDecodeLogInternal(3, "%s: _AMFDRDecodeMultiSealingResposeRecords failed with error 0x%llX", "AMFDRDecodeMultiSealingResponse", v19);
    }

    else if (v23 && v24 == 1)
    {
      v3 = 0;
      *a3 = *v23;
    }

    else
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response actionCode Format", "AMFDRDecodeMultiSealingResponse");
      return 32;
    }
  }

  return v3;
}

uint64_t _AMFDRDecodeMultiSealingResposeRecords(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  *&v49 = 0xAAAAAAAAAAAAAAAALL;
  *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!a2 || !*a2 || !a2[1])
  {
    return 1;
  }

  v48[0] = 0;
  v48[1] = 0;
  v47 = 0uLL;
  v46 = 0;
  if (DERDecodeSeqContentInit(a2, v48))
  {
    AMFDRDecodeLogInternal(3, "%s: can't parse FDR Multi-response payload");
    return 16;
  }

  else
  {
    v5 = 0uLL;
    v4 = 16;
    while (1)
    {
      v42 = v5;
      v44 = v5;
      v45 = v5;
      *v36 = v5;
      v39 = v5;
      v6 = DERDecodeSeqNext(v48, &v46);
      if (v6)
      {
        break;
      }

      if (!*(&v47 + 1))
      {
        return v4;
      }

      if (v46 != 0x2000000000000010)
      {
        AMFDRDecodeLogInternal(3, "%s: Record must be SEQUENCE Container");
        return 32;
      }

      v49 = v47;
      v14 = OUTLINED_FUNCTION_12(&v49, v7, v8, v9, v10, v11, v12, v13, v32, v33, v34, v35, v36[0], v36[1], v39, *(&v39 + 1), v42);
      if (v14)
      {
        AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response Payload Record Format");
        return 16;
      }

      if (v44)
      {
        v49 = v44;
        v14 = DERDecodeItem(&v49, &v46);
        if (v14)
        {
          AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response value Format");
          return 32;
        }

        if (v46 != 4)
        {
          AMFDRDecodeLogInternal(3, "%s: Record value must be OCTET_STRING", "_AMFDRDecodeMultiSealingResposeRecords");
          return 64;
        }

        if (!v47)
        {
          AMFDRDecodeLogInternal(3, "%s: Record value is NULL");
          return 32;
        }

        if (!*(&v47 + 1))
        {
          AMFDRDecodeLogInternal(3, "%s: Record value length is 0");
          return 32;
        }
      }

      if (v45)
      {
        v49 = v45;
        OUTLINED_FUNCTION_6();
        v14 = DERParseSequenceToObject(v22, v23, v24, v25, v26, v27);
        if (v14)
        {
          AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response Error Format");
          return 16;
        }

        if (!v37 || v38 != 1)
        {
          AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response Error Code Format");
          return 32;
        }
      }

      if (a3)
      {
        v28 = OUTLINED_FUNCTION_1(v14, v15, v16, v17, v18, v19, v20, v21, v32, v33, v34, v35, v37, v38, v40, v41, v43);
        v29 = a3(v28);
        if (v29)
        {
          v31 = v29;
          AMFDRDecodeLogInternal(3, "%s: multiResponseCallback failed with error 0x%llX", "_AMFDRDecodeMultiSealingResposeRecords", v29);
          return v31;
        }
      }

      v5 = 0uLL;
    }

    if (v6 == 1)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t AMFDRDecodeMultiResponse(uint64_t a1, int a2, _BYTE *a3)
{
  v3 = 1;
  if (a1 && a2 && a3)
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_6();
    v11 = DERParseSequenceToObject(v5, v6, v7, v8, v9, v10);
    if (v11)
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response Format");
      return 16;
    }

    if (OUTLINED_FUNCTION_13(v11, v12, &DERFDRMultiResponsePayloadItemSpecs, v13, v14))
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response Payload Format");
      return 16;
    }

    if (v25 && (v16 = OUTLINED_FUNCTION_16(), (v19 = _AMFDRDecodeMultiResposeRecords(v16, v17, v18)) != 0) || v26 && (v20 = OUTLINED_FUNCTION_15(), (v19 = _AMFDRDecodeMultiResposeRecords(v20, v21, v22)) != 0))
    {
      v3 = v19;
      AMFDRDecodeLogInternal(3, "%s: _AMFDRDecodeMultiResposeRecords failed with error 0x%llX", "AMFDRDecodeMultiResponse", v19);
    }

    else if (v23 && v24 == 1)
    {
      v3 = 0;
      *a3 = *v23;
    }

    else
    {
      AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response actionCode Format", "AMFDRDecodeMultiResponse");
      return 32;
    }
  }

  return v3;
}

uint64_t _AMFDRDecodeMultiResposeRecords(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0;
  *&v49 = 0xAAAAAAAAAAAAAAAALL;
  if (!a2 || !*a2 || !a2[1])
  {
    return 1;
  }

  v48[0] = 0;
  v48[1] = 0;
  v47 = 0uLL;
  v46 = 0;
  if (DERDecodeSeqInit(a2, &v50, v48))
  {
    AMFDRDecodeLogInternal(3, "%s: can't parse FDR Multi-response payload");
    return 16;
  }

  else if (v50 == 0x2000000000000011)
  {
    v5 = 0uLL;
    v4 = 16;
    while (1)
    {
      v42 = v5;
      v44 = v5;
      v45 = v5;
      *v36 = v5;
      v39 = v5;
      v6 = DERDecodeSeqNext(v48, &v46);
      if (v6)
      {
        break;
      }

      if (!*(&v47 + 1))
      {
        return v4;
      }

      if (v46 != 0x2000000000000010)
      {
        AMFDRDecodeLogInternal(3, "%s: Record must be SEQUENCE Container");
        return 32;
      }

      v49 = v47;
      v14 = OUTLINED_FUNCTION_12(&v49, v7, v8, v9, v10, v11, v12, v13, v32, v33, v34, v35, v36[0], v36[1], v39, *(&v39 + 1), v42);
      if (v14)
      {
        AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response Payload Record Format");
        return 16;
      }

      if (v44)
      {
        v49 = v44;
        v14 = DERDecodeItem(&v49, &v46);
        if (v14)
        {
          AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response value Format");
          return 32;
        }

        if (v46 != 4)
        {
          AMFDRDecodeLogInternal(3, "%s: Record value must be OCTET_STRING", "_AMFDRDecodeMultiResposeRecords");
          return 64;
        }

        if (!v47)
        {
          AMFDRDecodeLogInternal(3, "%s: Record value is NULL");
          return 32;
        }

        if (!*(&v47 + 1))
        {
          AMFDRDecodeLogInternal(3, "%s: Record value length is 0");
          return 32;
        }
      }

      if (v45)
      {
        v49 = v45;
        OUTLINED_FUNCTION_6();
        v14 = DERParseSequenceToObject(v22, v23, v24, v25, v26, v27);
        if (v14)
        {
          AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response Error Format");
          return 16;
        }

        if (!v37 || v38 != 1)
        {
          AMFDRDecodeLogInternal(3, "%s: malformed FDR Multi-Response Error Code Format");
          return 32;
        }
      }

      if (a3)
      {
        v28 = OUTLINED_FUNCTION_1(v14, v15, v16, v17, v18, v19, v20, v21, v32, v33, v34, v35, v37, v38, v40, v41, v43);
        v29 = a3(v28);
        if (v29)
        {
          v31 = v29;
          AMFDRDecodeLogInternal(3, "%s: multiResponseCallback failed with error 0x%llX", "_AMFDRDecodeMultiResposeRecords", v29);
          return v31;
        }
      }

      v5 = 0uLL;
    }

    if (v6 == 1)
    {
      return 0;
    }
  }

  else
  {
    AMFDRDecodeLogInternal(3, "%s: Records must be SET Container");
    return 32;
  }

  return v4;
}

uint64_t AMFDRDecodeMetadata(uint64_t a1, int a2)
{
  v26 = 0;
  v4 = 1;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_21();
    v23[0] = 0;
    v23[1] = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v24 = v5;
    v25 = v6;
    if (DERDecodeSeqInit(&v24, &v26, v23))
    {
      AMFDRDecodeLogInternal(3, "%s: can't parse FDR Multi-response Metadata");
      return 16;
    }

    else if (v26 == 0x2000000000000011)
    {
      v7 = 0uLL;
      v4 = 16;
      while (1)
      {
        v18 = v7;
        v19 = v7;
        v8 = DERDecodeSeqNext(v23, &v20);
        if (v8)
        {
          break;
        }

        if (!v22)
        {
          return 512;
        }

        if (v20 != 0x2000000000000010)
        {
          AMFDRDecodeLogInternal(3, "%s: MetadataRecord must be SEQUENCE Container");
          return 32;
        }

        v24 = v21;
        v25 = v22;
        OUTLINED_FUNCTION_6();
        if (DERParseSequenceContentToObject(v9, v10, v11, v12, v13, v14))
        {
          AMFDRDecodeLogInternal(3, "%s: malformed FDR Metadata Record Format");
          return 16;
        }

        if (v3)
        {
          v15 = v3(v18, DWORD2(v18), v19, DWORD2(v19), v2);
          if (v15)
          {
            v17 = v15;
            AMFDRDecodeLogInternal(3, "%s: metadataRecordCallback failed with error 0x%llX", "AMFDRDecodeMetadata", v15);
            return v17;
          }
        }

        v7 = 0uLL;
      }

      if (v8 == 1)
      {
        return 0;
      }
    }

    else
    {
      AMFDRDecodeLogInternal(3, "%s: Metadata must be SET Container");
      return 32;
    }
  }

  return v4;
}

uint64_t AMFDRDecodeGetImg4RawData(uint64_t a1, int a2)
{
  v8[57] = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_21();
    memset(v8, 170, 0x1C8uLL);
    if (Img4DecodeInit())
    {
      result = 0x2000;
    }

    else
    {
      result = 0;
      if (v3 && v2)
      {
        result = 0;
        v6 = v8[18];
        *v3 = v8[17];
        *v2 = v6;
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMFDRDecodeGetImg4Manifest(uint64_t a1, int a2)
{
  __b[57] = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_21();
    memset(__b, 170, 0x1C8uLL);
    if (Img4DecodeInit())
    {
      AMFDRDecodeLogInternal(3, "%s: FDR failed to decode Data img4", "AMFDRDecodeGetImg4Manifest");
      result = 0x2000;
    }

    else
    {
      result = 0;
      if (v3 && v2)
      {
        result = 0;
        v6 = __b[4];
        *v3 = __b[3];
        *v2 = v6;
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMFDRDecodeMetaProperty(uint64_t a1, int a2)
{
  v3 = 1;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_21();
    v16[0] = 0;
    v16[1] = 0;
    v15 = 0uLL;
    v14 = 0;
    *&v17 = v4;
    *(&v17 + 1) = v5;
    if (DERDecodeSeqContentInit(&v17, v16) || DERDecodeSeqNext(v16, &v14))
    {
      AMFDRDecodeLogInternal(3, "%s: can't parse FDR property meta");
      return 16;
    }

    v17 = v15;
    if (DERDecodeSeqContentInit(&v17, v16) || DERDecodeSeqNext(v16, &v14))
    {
      AMFDRDecodeLogInternal(3, "%s: can't parse MinimalManifestMetaData");
      return 16;
    }

    v17 = v15;
    OUTLINED_FUNCTION_6();
    if (DERParseSequenceContentToObject(v7, v8, v9, v10, v11, v12))
    {
      AMFDRDecodeLogInternal(3, "%s: malformed metaProperty Format");
      return 16;
    }

    v17 = 0u;
    if (DERDecodeSeqContentInit(&v17, v16))
    {
      AMFDRDecodeLogInternal(3, "%s: can't parse content of MinimalManifestMetaData");
      return 16;
    }

    v3 = 34;
    while (1)
    {
      v13 = DERDecodeSeqNext(v16, &v14);
      if (v13)
      {
        break;
      }

      if (!*(&v15 + 1))
      {
        return 512;
      }

      if (v2)
      {
        AMFDRDecodeLogInternal(3, "%s: unsupported meta property type", "AMFDRDecodeMetaProperty");
        return v3;
      }
    }

    if (v13 == 1)
    {
      return 0;
    }

    else
    {
      return 16;
    }
  }

  return v3;
}

uint64_t AMFDRDecodeIterateSysconfigBegin(uint64_t a1, unsigned int a2, void *a3, _BYTE *a4)
{
  v18 = 0;
  v4 = 1;
  if (!a1)
  {
    return v4;
  }

  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  v7 = a4;
  if (!a4)
  {
    return v4;
  }

  v9 = *a3;
  v10 = *a3;
  if (!*a3)
  {
    v10 = malloc(0x78uLL);
    if (!v10)
    {
      return 0x80000000000000;
    }
  }

  v10[14] = 0;
  *(v10 + 5) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *v10 = 0u;
  v19[0] = a1;
  v19[1] = a2;
  v11 = DERParseSequenceToObject(v19, 5u, &DERSysconfigItemSpecs, (v10 + 1), 0x50uLL, 0);
  if (v11)
  {
    AMFDRDecodeLogInternal(3, "%s: failed to parse sysconfig sequence: %d", "AMFDRDecodeIterateSysconfigBegin", v11);
    v4 = 0x400000000000000;
    goto LABEL_32;
  }

  v12 = v10[2];
  if (v12 != 4)
  {
    AMFDRDecodeLogInternal(3, "%s: magic size is invalid: %lu", "AMFDRDecodeIterateSysconfigBegin", v12);
    OUTLINED_FUNCTION_11();
    v4 = v16 + 16;
    goto LABEL_32;
  }

  for (i = 3; i != -1; --i)
  {
    *v7++ = *(v10[1] + i);
  }

  if (v10[4] != 4)
  {
    AMFDRDecodeLogInternal(3, "%s: version size is invalid: %lu");
    goto LABEL_25;
  }

  v14 = *v10[3];
  if (!v14)
  {
    AMFDRDecodeLogInternal(3, "%s: minor version not supported: 0x%x");
    goto LABEL_25;
  }

  if ((v14 & 0xFFFF00) != 0x30000)
  {
    AMFDRDecodeLogInternal(3, "%s: sysconfig version not supported: 0x%x");
LABEL_25:
    v4 = 0x402000000000000;
    goto LABEL_32;
  }

  if (DERDecodeSeqInit((v10 + 5), &v18, v10 + 11))
  {
    v4 = 0x400000000000010;
    AMFDRDecodeLogInternal(3, "%s: failed to decode sysconfig payload: %d");
    goto LABEL_32;
  }

  if (v18 != 0x2000000000000011)
  {
    AMFDRDecodeLogInternal(3, "%s: invalid payload tag: 0x%llx");
LABEL_31:
    OUTLINED_FUNCTION_11();
    v4 = v17 + 48;
    goto LABEL_32;
  }

  if (!DERDecodeSeqInit((v10 + 7), &v18, v10 + 13))
  {
    if (v18 == 0x2000000000000011)
    {
      v4 = 0;
      *v10 = 1;
      *a3 = v10;
      return v4;
    }

    AMFDRDecodeLogInternal(3, "%s: invalid metadata tag: 0x%llx");
    goto LABEL_31;
  }

  v4 = 0x400000000000010;
  AMFDRDecodeLogInternal(3, "%s: failed to decode sysconfig metadata: %d");
LABEL_32:
  if (!v9)
  {
    free(v10);
  }

  return v4;
}

uint64_t AMFDRDecodeIterateSysconfigPayloadNext(uint64_t a1, _BYTE *a2, _BYTE *a3, void *a4, _DWORD *a5, _BYTE *a6)
{
  v27 = 0;
  v28[0] = 0;
  v28[1] = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  v6 = 1;
  v22 = 0;
  if (!a3)
  {
    return v6;
  }

  if (!a1)
  {
    return v6;
  }

  v7 = a2;
  if (!a2 || !a4 || !a5)
  {
    return v6;
  }

  if ((*a1 & 1) == 0)
  {
    AMFDRDecodeLogInternal(3, "%s: sysconfig context is not initialized");
    return 0x400000000000000;
  }

  v12 = DERDecodeSeqNext((a1 + 88), &v27);
  if (v12 == 1)
  {
    return 0x40000000000000;
  }

  if (v12 || (OUTLINED_FUNCTION_14(), !v13))
  {
    AMFDRDecodeLogInternal(3, "%s: failed to decode payload: %d", "AMFDRDecodeIterateSysconfigPayloadNext", v12);
    OUTLINED_FUNCTION_11();
    return v20 + 48;
  }

  v14 = DERParseSequenceContentToObject(v28, 5u, &DERSysconfigPayloadItemSpecs, v23, 0x50uLL, 0);
  if (v14)
  {
    v6 = 0x400000000000010;
    AMFDRDecodeLogInternal(3, "%s: failed to parse payload content: %d", "AMFDRDecodeIterateSysconfigPayloadNext", v14);
    return v6;
  }

  if (*(&v23[0] + 1) != 4)
  {
    AMFDRDecodeLogInternal(3, "%s: invalid key length: %lu", "AMFDRDecodeIterateSysconfigPayloadNext", *(&v23[0] + 1));
    OUTLINED_FUNCTION_11();
    return v21 + 16;
  }

  v15 = *&v23[0];
  for (i = 3; i != -1; --i)
  {
    *v7++ = *(v15 + i);
  }

  if (DERParseBooleanWithDefault(&v26, 0, &v22))
  {
    AMFDRDecodeLogInternal(3, "%s: failed to parse BOOLean: %d");
    return 0x400000000000000;
  }

  if (v22)
  {
    v6 = 0;
    *a3 = v22;
  }

  else
  {
    v17 = DWORD2(v25);
    if (*(&v25 + 1))
    {
      *a4 = v25;
      *a5 = v17;
      v6 = 0;
      if (a6)
      {
        *a6 = 1;
      }
    }

    else
    {
      v6 = 0;
      v18 = DWORD2(v24);
      *a4 = v24;
      *a5 = v18;
    }
  }

  return v6;
}

uint64_t AMFDRDecodeEcdsaVerifySignature(const void *a1, size_t a2)
{
  result = 1;
  if (a1 && a2)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_7();

      return AMSupportEcDsaVerifySignature();
    }

    else
    {
      v5 = malloc(a2 | 1);
      if (v5)
      {
        v6 = v5;
        *v5 = 4;
        memcpy(v5 + 1, a1, a2);
        OUTLINED_FUNCTION_7();
        v7 = AMSupportEcDsaVerifySignature();
        free(v6);
        return v7;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t _AMFDRDecodeVerifyChain_cold_1(void *a1)
{
  result = AMFDRDecodeLogInternal(3, "%s: _AMFDRDecodeIterateCertChainBegin failed", "_AMFDRDecodeVerifyChain");
  *a1 |= 1uLL;
  return result;
}

uint64_t _AMFDRDecodeFindDataFromMultiCombined_cold_3(void *a1)
{
  result = AMFDRDecodeLogInternal(3, "%s: found multiple entries that match, uniqueID is required in this case", "_AMFDRDecodeFindDataFromMultiCombined");
  *a1 |= 0x4000uLL;
  return result;
}