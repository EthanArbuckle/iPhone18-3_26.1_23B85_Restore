uint64_t sub_1B01E83E0(uint64_t a1, uint64_t a2)
{
  memset(v27, 170, 32);
  memset(v25, 170, sizeof(v25));
  memset(v24, 170, sizeof(v24));
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v3;
  v23 = v3;
  v20 = v3;
  v21 = v3;
  memset(v18, 170, sizeof(v18));
  v4 = 6;
  v19[0] = v3;
  v19[1] = v3;
  if (!a1 || !a2)
  {
    goto LABEL_43;
  }

  if (!*(a1 + 320) || !*(a1 + 312))
  {
    v4 = 0;
    v16 = 0x200000000000;
    goto LABEL_36;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_1B01E7424(a1 + 312, &v26, &v27[2]);
  if (v6)
  {
    v4 = v6;
    sub_1B01EC520();
    goto LABEL_44;
  }

  if (v26 != 0x2000000000000011)
  {
    v4 = 2;
    goto LABEL_44;
  }

  v7 = 0;
  do
  {
LABEL_8:
    v8 = sub_1B01E750C(&v27[2], v25);
    if (v8)
    {
      if (v8 != 1)
      {
        sub_1B01EC750();
        goto LABEL_55;
      }

      if (!v7)
      {
        sub_1B01EC558();
        goto LABEL_55;
      }

      return 0;
    }

    ++v7;
    v9 = (a1 + 56);
    if (v25[0] == 0xE00000004D414E50)
    {
      break;
    }

    if (v25[0] != 0xE00000004F424A50)
    {
LABEL_41:
      sub_1B01E94F4(3, "%s: unexpected tag 0x%llX in certificate properties");
      goto LABEL_42;
    }

    v9 = (a1 + 72);
  }

  while ((*(a2 + 2016) & 0x80) != 0);
  v18[0] = *v9;
  v10 = sub_1B01ECD8C(&v25[1], v25[0], &v21);
  if (v10)
  {
    v4 = v10;
    sub_1B01EC590();
    goto LABEL_43;
  }

  if (*(&v23 + 1) != 0x2000000000000011)
  {
LABEL_42:
    v4 = 2;
    goto LABEL_43;
  }

  v11 = sub_1B01E74E0(&v22 + 1, v27);
  if (v11)
  {
    v4 = v11;
    sub_1B01EC5C8();
    goto LABEL_43;
  }

  v12 = 0;
  while (1)
  {
    v13 = sub_1B01E750C(v27, v24);
    if (v13)
    {
      break;
    }

    v14 = sub_1B01ECD8C(&v24[1], v24[0], v19);
    if (v14)
    {
      v4 = v14;
      sub_1B01EC638();
      goto LABEL_43;
    }

    sub_1B01F701C(v18, v24[0], &v18[1]);
    v4 = v15;
    if (*(&v20 + 1) <= 4uLL && ((1 << SBYTE8(v20)) & 0x16) != 0)
    {
      if (v15)
      {
        sub_1B01EC670();
        goto LABEL_43;
      }

      if (v24[2] != *(&v18[1] + 1))
      {
        sub_1B01EC6A8();
        goto LABEL_55;
      }

      if (memcmp(v24[1], *&v18[1], v24[2]))
      {
        sub_1B01EC718();
        goto LABEL_55;
      }
    }

    else
    {
      if (*(&v20 + 1) == 0xA000000000000000)
      {
        if (v15 == 1)
        {
          sub_1B01E94F4(7, "%s: manifest or object missing required property '%c%c%c%c'", "_AMFDRDecodeEvaluateCertificateProperties", SBYTE3(v24[0]), SBYTE2(v24[0]), SBYTE1(v24[0]), SLOBYTE(v24[0]));
          v4 = 0;
          *a2 |= 0x200000000000uLL;
        }

        goto LABEL_28;
      }

      if (*(&v20 + 1) != 0xA000000000000001)
      {
        goto LABEL_41;
      }

      if (v15 != 1)
      {
        sub_1B01E94F4(3, "%s: validation failed for property 0x%llX - tag present");
        goto LABEL_42;
      }
    }

    v4 = 0;
LABEL_28:
    --v12;
    if (v4)
    {
      sub_1B01E94F4(3, "%s: validation failed for property 0x%llX", "_AMFDRDecodeEvaluateCertificateProperties", v24[0]);
      goto LABEL_43;
    }
  }

  if (v13 == 1)
  {
    if (v12)
    {
      goto LABEL_8;
    }

    sub_1B01EC600();
  }

  else
  {
    sub_1B01EC6E0();
  }

LABEL_55:
  v4 = 0xFFFFFFFFLL;
LABEL_43:
  if (a2)
  {
LABEL_44:
    v16 = 0x800000000000;
LABEL_36:
    *a2 |= v16;
  }

  return v4;
}

uint64_t sub_1B01E8778(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v22, 170, sizeof(v22));
  if (a8)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__s1 = v11;
    v23[0] = a1;
    v23[1] = a2;
    if (sub_1B01E6E2C(v23, v22))
    {
      v12 = "%s: malformed offline signing public key";
    }

    else
    {
      if (v22[0] != 2)
      {
        v13 = 3;
        sub_1B01E94F4(3, "%s: malformed offline signing public key tag", "_AMFDRDecodeVerifyChainOffline");
        v14 = *a8 | 0x40;
        goto LABEL_8;
      }

      v16 = *(a8 + 296);
      v17 = *(a8 + 304);
      if (!sub_1B01F6550())
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
            *(a8 + 312) = xmmword_1E7A93AB0;
            return v13;
          }

          v20 = "%s: offline signing public key mismatch";
        }

        else
        {
          v20 = "%s: offline signing public key length mismatch";
        }

        v13 = 3;
        sub_1B01E94F4(3, v20, "_AMFDRDecodeVerifyChainOffline");
        v14 = *a8 | 0x20000000000000;
        goto LABEL_8;
      }

      v12 = "%s: fail to decode certificate of offline signing";
    }

    v13 = 3;
    sub_1B01E94F4(3, v12, "_AMFDRDecodeVerifyChainOffline");
    v14 = *a8 | 0x40000000000;
LABEL_8:
    *a8 = v14;
    return v13;
  }

  sub_1B01E94F4(3, "%s: context must be non NULL", "_AMFDRDecodeVerifyChainOffline");
  return 6;
}

uint64_t sub_1B01E896C(int a1, uint64_t *a2, int a3, uint64_t a4)
{
  v41 = 0;
  v40 = 0;
  if (!a4)
  {
    sub_1B01E94F4(3, "%s: fdrDecode is NULL", "_AMFDRDecodeVerifyDataCallback");
    return 6;
  }

  if (!a2)
  {
    sub_1B01E94F4(3, "%s: property is NULL", "_AMFDRDecodeVerifyDataCallback");
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
        v8 = sub_1B01ED418(a2, 1400010324, &v40, &v41);
        if (v8)
        {
          v6 = v8;
          sub_1B01E94F4(3, "%s: Img4DecodeGetPropertyData(kFDRTag_SrvT) failed.");
          goto LABEL_33;
        }

        if (v41 != 1)
        {
          sub_1B01E94F4(3, "%s: Invalid property length of kFDRTag_SrvT", "_AMFDRDecodeVerifyDataCallback");
          v6 = 0;
          v11 = *a4 | 0x200;
          goto LABEL_97;
        }

        if (*v40 != 48 && (*(a4 + 2017) & 4) != 0)
        {
          v6 = 3;
          sub_1B01E94F4(3, "%s: Staged sealing is not allowed", "_AMFDRDecodeVerifyDataCallback");
          v11 = *a4 | 0x800000000000000;
          goto LABEL_97;
        }

        return 0;
      }

      goto LABEL_37;
    }

    if (a1 == 1145525076)
    {
      if ((*(a4 + 2017) & 0x10) == 0)
      {
        v10 = sub_1B01ED418(a2, 1145525076, &v40, &v41);
        if (v10)
        {
          v6 = v10;
          sub_1B01E94F4(3, "%s: Img4DecodeGetPropertyData(kImg4Tag_DGST) failed.");
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
          sub_1B01E94F4(3, v28, "_AMFDRDecodeVerifyDataCallback");
        }

LABEL_96:
        v11 = *a4 | 0x8000;
        goto LABEL_97;
      }

      v18 = "%s: verifying subCC, skip comparing digest of the entire data";
    }

    else
    {
      if (a1 != 1396917319)
      {
        goto LABEL_37;
      }

      v7 = sub_1B01ED418(a2, 1396917319, &v40, &v41);
      if (v7)
      {
        v6 = v7;
        sub_1B01E94F4(3, "%s: Img4DecodeGetPropertyData(kFDRTag_SCDG) failed.");
        goto LABEL_96;
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
            v27 = sub_1B01E79C8(v26);
            if (sub_1B01EAF88(*(a4 + 360), *(a4 + 368), v27, &__s1))
            {
              v6 = 0;
              sub_1B01E94F4(3, "%s: failed to find subCC digest");
            }

            else if (*(a4 + 400) == 1)
            {
              if (__n == **(*(a4 + 2008) + 32))
              {
                if (!memcmp(__s1, (a4 + 584), __n))
                {
                  sub_1B01E94F4(5, "%s: subCC digest verified", "_AMFDRDecodeVerifyDataCallback");
                  v6 = 0;
                  *(a4 + 376) = 1;
                  return v6;
                }

                v6 = 3;
                sub_1B01E94F4(3, "%s: subCC digest mismatch");
              }

              else
              {
                v6 = 3;
                sub_1B01E94F4(3, "%s: subCC digest length mismatch");
              }
            }

            else
            {
              v6 = 3;
              sub_1B01E94F4(3, "%s: subCC is not hashed");
            }

            v11 = *a4 | 0x1000000000000000;
            goto LABEL_97;
          }
        }

        sub_1B01EC788(a4);
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
      v12 = sub_1B01ED418(a2, 1634953572, &v40, &v41);
      if (v12)
      {
        v6 = v12;
        sub_1B01E94F4(3, "%s: Img4DecodeGetPropertyData(kFDRTag_asid) failed.");
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
        sub_1B01E94F4(3, v23, "_AMFDRDecodeVerifyDataCallback");
        v11 = *a4 | 0x200000000000000;
        goto LABEL_97;
      }

      v18 = "%s: Skip verifying assembly identifier";
      goto LABEL_42;
    }

    if (a1 == 1668047219)
    {
      if (sub_1B01ED418(a2, 1668047219, &v40, &v41))
      {
        v9 = "%s: Img4DecodeGetPropertyData(kFDRTag_clas) failed.";
      }

      else
      {
        if (v40 && v41)
        {
          return 0;
        }

        v34 = v41;
        v9 = "%s: propertyValue must be non NULL with a non-zero length (length=%u)";
      }

      v6 = 3;
      sub_1B01E94F4(3, v9, "_AMFDRDecodeVerifyDataCallback", v34);
      v11 = *a4 | 0x400;
      goto LABEL_97;
    }

LABEL_37:
    v15 = -1;
    v16 = "#BLMcaMWcaMBdies2iesdistiemi2emidiemdiun#blm#prd#craukswnvrsemitdilcukskLCrP#doMngeRUKSWDROBMODSdicadiee#tabpcprkadskadbkadmkadpbupsbupbbupmatemPvrSTvrSSHLC3iesmpusrooCbmcmnSCRGDCSkadeofnivpmv";
    while (v15 != 47)
    {
      v17 = *v16;
      v16 += 4;
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
    sub_1B01E94F4(v19, v18, "_AMFDRDecodeVerifyDataCallback", v34, v35, v36, v37);
    return 0;
  }

  if (a1 != 1717660003)
  {
    if (a1 == 1768846196)
    {
      v14 = sub_1B01ED418(a2, 1768846196, &v40, &v41);
      if (v14)
      {
        v6 = v14;
        sub_1B01E94F4(3, "%s: Img4DecodeGetPropertyData(kFDRTag_inst) failed.", "_AMFDRDecodeVerifyDataCallback");
      }

      else
      {
        if (a3 != 1)
        {
          if (!a3 && (sub_1B01EADB4(v40, v41, *(a4 + 136), *(a4 + 144), *(a4 + 168), *(a4 + 176), 0, a4) & 1) == 0)
          {
            sub_1B01E94F4(3, "%s: kFDRTag_inst property != fdrDecode->manifestUniqueID", "_AMFDRDecodeVerifyDataCallback");
            v6 = 0;
            v11 = *a4 | 0x40000000;
            goto LABEL_97;
          }

          return 0;
        }

        v29 = *(a4 + 104);
        if (v29 && (v30 = *(a4 + 112)) != 0)
        {
          if (sub_1B01EADB4(v40, v41, v29, v30, *(a4 + 184), *(a4 + 192), 1, a4))
          {
            return 0;
          }

          sub_1B01E94F4(3, "%s: kFDRTag_inst property != fdrDecode->uniqueID");
        }

        else
        {
          if ((*(a4 + 2017) & 0x20) != 0)
          {
            sub_1B01E94F4(3, "%s: no uniqueID is specified, but this is allowed, skip comparing kFDRTag_inst object property");
            return 0;
          }

          sub_1B01E94F4(3, "%s: no uniqueID is specified, cannot verify kFDRTag_inst property");
        }

        v6 = 0;
      }

      v11 = *a4 | 0x4000;
      goto LABEL_97;
    }

    if (a1 == 1886546276)
    {
      v5 = sub_1B01ED418(a2, 1886546276, &v40, &v41);
      if (v5)
      {
        v6 = v5;
        sub_1B01E94F4(3, "%s: Img4DecodeGetPropertyData(kFDRTag_prid) failed.");
LABEL_33:
        v11 = *a4 | 0x2000;
        goto LABEL_97;
      }

      v24 = v40;
      v25 = v41;
      *(a4 + 200) = v40;
      *(a4 + 208) = v25;
      if (!*(a4 + 1944) || !*(a4 + 1952))
      {
        sub_1B01E94F4(4, "%s: Skipping revocation check (trustobject unset)", "_AMFDRDecodeVerifyDataCallback");
        v6 = 0;
        v11 = *a4 | 0x200000;
        goto LABEL_97;
      }

      v32 = sub_1B01F62B8(a4 + 1768, v24, v25);
      if (v32)
      {
        v33 = v32;
        v6 = 3;
        sub_1B01E94F4(3, "%s: AMFDRDecodeCheckProducerIDRevocation failed with error 0x%016llX", "_AMFDRDecodeVerifyDataCallback", v32);
        v11 = *a4 | v33;
        goto LABEL_97;
      }

      return 0;
    }

    goto LABEL_37;
  }

  LOBYTE(__s1) = 0;
  if (sub_1B01F7674(a2, 1717660003, &__s1))
  {
    v6 = 3;
    sub_1B01E94F4(3, "%s: Img4DecodeGetPropertyData(kFDRTag_faic) failed.", "_AMFDRDecodeVerifyDataCallback");
    v11 = *a4 | 0x400000000;
LABEL_97:
    *a4 = v11;
    return v6;
  }

  v6 = 0;
  *(a4 + 2004) = __s1;
  return v6;
}

uint64_t sub_1B01E919C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 2024);
  }

  sub_1B01E94F4(3, "%s: fdrDecode is NULL", "_AMFDRDecodeGetExpectedManifestHash");
  return 0;
}

uint64_t sub_1B01E91E8(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v17 = a5;
  v18 = 0xAAAAAAAAAAAA0000;
  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = 0xAAAAAAAAAAAAAAAALL;
  if (a5)
  {
    if (*(a5 + 104) && *(a5 + 112))
    {
      v8 = 0;
      goto LABEL_7;
    }

    if ((*(a5 + 2017) & 0x20) != 0)
    {
      v8 = 1;
LABEL_7:
      v9 = sub_1B01E74E0(a1, v16);
      if (v9)
      {
        v11 = v9;
        sub_1B01EC7CC();
        return v11;
      }

      while (1)
      {
        if (v18)
        {
          goto LABEL_22;
        }

        v10 = sub_1B01ECEBC(v16, a2, a3, a4);
        if (v10 == 1)
        {
          break;
        }

        v11 = v10;
        if (v10)
        {
          sub_1B01E94F4(3, "%s: failed to find property tag 0x%llu", "_AMFDRDecodePropertiesFilterCallback", a2);
          return v11;
        }

        if (v8 & BYTE1(v18))
        {
          sub_1B01E94F4(3, "%s: multiple entries for tag 0x%llu found, but no unique ID specified", "_AMFDRDecodePropertiesFilterCallback", a2);
          if (v18)
          {
            return 0;
          }

          v11 = 0;
          v13 = v17;
          v14 = *v17 | 0x4000;
LABEL_24:
          *v13 = v14;
          return v11;
        }

        v12 = sub_1B01F76F0((a4 + 24), 1, sub_1B01EAC1C, &v17);
        if (v12)
        {
          v11 = v12;
          sub_1B01EC804();
          return v11;
        }
      }

      if (BYTE1(v18) == 1)
      {
        sub_1B01E94F4(3, "%s: failed to find matching inst object propery, returning a mismatched one", "_AMFDRDecodePropertiesFilterCallback");
      }

      if (v18)
      {
        if (!v8)
        {
          return 0;
        }
      }

      else
      {
        *v17 |= 0x4000uLL;
LABEL_22:
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      sub_1B01E94F4(3, "%s: uniqueID is not specified, which is allowed, skip uniqueID mismatch errors", "_AMFDRDecodePropertiesFilterCallback");
      v11 = 0;
      v13 = v17;
      v14 = *v17 & 0xFFFFFFFFFFFFBFFFLL;
      goto LABEL_24;
    }

    sub_1B01EC83C();
  }

  else
  {
    sub_1B01E94F4(3, "%s: fdrDecode is NULL", "_AMFDRDecodePropertiesFilterCallback");
  }

  return 6;
}

uint64_t sub_1B01E93EC(unsigned __int8 **a1, uint64_t a2, unsigned int a3)
{
  v10[0] = a2;
  v10[1] = a3;
  if (sub_1B01E75CC(v10, 5u, &unk_1B01FF798, a1, 0x90uLL, 0))
  {
    sub_1B01E94F4(3, "%s: malformed FDR Trust Object Format");
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
      sub_1B01E94F4(3, "%s: malformed FDR Trust Object, expected tag %c%c%c%c found tag %c%c%c%c", "AMFDRDecodeTrustObject", aSecb[0], aSecb[1]);
    }

    else
    {
      sub_1B01E94F4(3, "%s: malformed FDR Trust Object, invalid tag length");
    }
  }

  return 0x400000;
}

uint64_t sub_1B01E94F4(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v22 = *MEMORY[0x1E69E9840];
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
  if (off_1EB6D0108)
  {
    result = off_1EB6D0108(a1, __str);
  }

  else
  {
    result = sub_1B01DAE64("%s", __str);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01E95C4(uint64_t a1)
{
  if (!*(a1 + 72) || !*(a1 + 80))
  {
    *a1 |= 0x40000uLL;
  }

  if ((!*(a1 + 104) || !*(a1 + 112)) && (*(a1 + 2017) & 0x20) == 0)
  {
    sub_1B01E94F4(3, "%s: fdrDecode->uniqueID is NULL or 0 size", "AMFDRDecodeEvaluateTrustInternal");
    result = *a1 | 1;
LABEL_12:
    *a1 = result;
    return result;
  }

  if (*(a1 + 8) && *(a1 + 16))
  {
    if (sub_1B01E9968(a1))
    {
      sub_1B01E94F4(4, "%s: data is unwrapped", "AMFDRDecodeEvaluateTrustInternal");
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

  v4 = sub_1B01EAA70(a1);
  if (v4)
  {
    *a1 |= v4;
  }

  v5 = sub_1B01EB0C0(a1);
  if (v5)
  {
    *a1 |= v5;
  }

  v25 = 0;
  v24 = 0;
  if ((!*(a1 + 344) || !*(a1 + 352)) && (!*(a1 + 232) || !*(a1 + 240)))
  {
    sub_1B01E94F4(6, "%s: No need to verify subCC and asid");
    goto LABEL_25;
  }

  v6 = sub_1B01F6B4C(*(a1 + 1912), *(a1 + 1920), &v25, &v24);
  v7 = v25;
  if (!v25 || v6)
  {
    sub_1B01E94F4(3, "%s: FDR 3.0 Data can't be decoded!");
    goto LABEL_54;
  }

  v8 = 0;
  while (1)
  {
    v23 = 0;
    __n_7 = 0;
    __n = 0;
    __s2 = 0;
    v9 = sub_1B01F6DF8(v7, &v23, &__n_7, &__s2, &__n, 0);
    if (v9)
    {
      if (v9 == 0x40000000000000)
      {
        if (*(a1 + 232) && !((*(a1 + 240) == 0) | v8 & 1))
        {
          sub_1B01E94F4(4, "%s: kFDRTag_asid doesn't exist, but this is allowed");
        }

        goto LABEL_25;
      }

      sub_1B01E94F4(3, "%s: failed to decode payload: 0x%llx!");
LABEL_54:
      v17 = *a1 | 0x400000000000000;
      goto LABEL_58;
    }

    v10 = sub_1B01E79C8(&v23);
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
            sub_1B01E94F4(3, "%s: asid subCC length != fdrDecode->asidSubCCID.length", "_AMFDRDecodeVerifySubCC");
            *a1 |= 0x200000000000000uLL;
            v11 = *(a1 + 232);
            v12 = __n;
          }

          if (memcmp(v11, __s2, v12))
          {
            sub_1B01E94F4(3, "%s: asid subCC data != fdrDecode->asidSubCCID", "_AMFDRDecodeVerifySubCC");
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
    sub_1B01E94F4(3, "%s: No SCDG in manifest, subCC digest missing");
    goto LABEL_57;
  }

  v18 = 0;
  v19 = 0;
  if (!sub_1B01EAF88(v15, v16, v10, &v18) && v19 && v18)
  {
    v13 = *(a1 + 352);
    goto LABEL_51;
  }

  sub_1B01E94F4(3, "%s: cannot find subCC digest for %u");
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

uint64_t sub_1B01E9968(uint64_t a1)
{
  memset(v25, 170, sizeof(v25));
  v23 = 0u;
  *v24 = 0u;
  v22 = 0u;
  if (sub_1B01E6E2C(a1 + 8, v25))
  {
    sub_1B01E94F4(3, "%s: failed to decode FDR Combined Format", "_AMFDRDecodeCombined");
    *a1 |= 0x80uLL;
    return 128;
  }

  if (v25[0] != 0x2000000000000010)
  {
    sub_1B01E94F4(3, "%s: FDR Combined Format unexpected tag: %llu", "_AMFDRDecodeCombined", v25[0]);
    *a1 |= 0x10000uLL;
    return 0x10000;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 8) + v3;
  if (v4 < v25[1] + v25[2])
  {
    sub_1B01E94F4(3, "%s: item is bigger on the inside", "_AMFDRDecodeCombined");
    *a1 |= 4uLL;
    return 4;
  }

  if (v4 > v25[1] + v25[2])
  {
    sub_1B01E94F4(3, "%s: Buffer contains %lu unused bytes", "_AMFDRDecodeCombined", v3 - v25[2]);
    *a1 |= 8uLL;
    return 8;
  }

  if (sub_1B01E7698(&v25[1], 3u, &unk_1B01FF720, &v22, 0x30uLL, 0))
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
    v2 = 512;
    goto LABEL_20;
  }

  v20 = 0u;
  v21 = 0u;
  if (sub_1B01E7698(&v23, 2u, &unk_1B01FF768, &v20, 0x20uLL, 0))
  {
    sub_1B01E94F4(3, "%s: malformed FDR Combined Format (DERFDRItemSpecs)");
    goto LABEL_30;
  }

  if (!v20 || *(&v20 + 1) != 4)
  {
LABEL_29:
    sub_1B01E94F4(3, "%s: malformed FDR Combined Format, invalid tag length");
    goto LABEL_30;
  }

  if (*v20 != *"fdrd")
  {
    v16 = *(v20 + 2);
    v18 = *(v20 + 3);
    v12 = *v20;
    v14 = *(v20 + 1);
    sub_1B01E94F4(3, "%s: malformed FDR Combined Format, expected tag %c%c%c%c found tag %c%c%c%c", "_AMFDRDecodeCombined", aFdrd[0], aFdrd[1]);
    goto LABEL_30;
  }

  v9 = *(&v21 + 1);
  *(a1 + 24) = v21;
  *(a1 + 32) = v9;
  if ((*(a1 + 2017) & 8) != 0)
  {
    v2 = sub_1B01EB588(a1);
    if (v2)
    {
      sub_1B01E94F4(4, "%s: cannot decode to a multicombined data, proceed with combined format", "_AMFDRDecodeCombined");
      v11 = *(&v21 + 1);
      *(a1 + 24) = v21;
      *(a1 + 32) = v11;
    }
  }

  else
  {
    v2 = 0;
  }

LABEL_20:
  if (!v24[0] || !v24[1])
  {
    v7 = *a1 | 0x200000;
LABEL_38:
    *a1 = v7;
    return v2;
  }

  v20 = 0u;
  v21 = 0u;
  if (sub_1B01E7698(v24, 2u, &unk_1B01FF768, &v20, 0x20uLL, 0))
  {
    sub_1B01E94F4(3, "%s: malformed FDR Combined Format (trustObject)");
LABEL_36:
    v8 = 0x20000;
    v2 = 0x20000;
LABEL_37:
    v7 = *a1 | v8;
    goto LABEL_38;
  }

  if (!v20 || *(&v20 + 1) != 4)
  {
    sub_1B01E94F4(3, "%s: malformed FDR Combined Format (trustObject), invalid tag length");
    goto LABEL_36;
  }

  if (*v20 != *"secb")
  {
    v17 = *(v20 + 2);
    v19 = *(v20 + 3);
    v13 = *v20;
    v15 = *(v20 + 1);
    sub_1B01E94F4(3, "%s: malformed FDR Combined Format (trustObject), expected tag %c%c%c%c found tag %c%c%c%c", "_AMFDRDecodeCombined", aSecb[0], aSecb[1]);
    goto LABEL_36;
  }

  v10 = v21;
  *(a1 + 1944) = v21;
  v8 = 0x200000;
  if (!v10 || !*(&v10 + 1))
  {
    goto LABEL_37;
  }

  return v2;
}

uint64_t sub_1B01E9D88(uint64_t a1, _OWORD *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[26] = v4;
  v24[27] = v4;
  v24[24] = v4;
  v24[25] = v4;
  v24[22] = v4;
  v24[23] = v4;
  v24[20] = v4;
  v24[21] = v4;
  v24[18] = v4;
  v24[19] = v4;
  v24[16] = v4;
  v24[17] = v4;
  v24[14] = v4;
  v24[15] = v4;
  v24[12] = v4;
  v24[13] = v4;
  v24[10] = v4;
  v24[11] = v4;
  v24[8] = v4;
  v24[9] = v4;
  v24[6] = v4;
  v24[7] = v4;
  v24[4] = v4;
  v24[5] = v4;
  v24[3] = v4;
  v24[1] = v4;
  v24[2] = v4;
  v24[0] = v4;
  v19 = 0;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0;
  memset(v16, 170, sizeof(v16));
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (sub_1B01E6E2C(a1 + 24, &v21))
  {
    sub_1B01E94F4(3, "%s: failed to decode FDR Multi Combined Format", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData");
    *a1 |= 0x80uLL;
    result = 128;
    goto LABEL_7;
  }

  if (v21 != 0x2000000000000010)
  {
    sub_1B01E94F4(3, "%s: FDR Multi Combined Format unexpected tag: %llu", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData", v21);
    *a1 |= 0x10000uLL;
    result = 0x10000;
    goto LABEL_7;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v6 + v7 < (v22 + v23))
  {
    sub_1B01E94F4(3, "%s: item is bigger on the inside", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData");
    *a1 |= 4uLL;
    result = 4;
    goto LABEL_7;
  }

  if (v6 + v7 > (v22 + v23))
  {
    sub_1B01E94F4(3, "%s: Buffer contains %lu unused bytes", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData", v7 - v23);
    *a1 |= 8uLL;
    result = 8;
    goto LABEL_7;
  }

  v10 = sub_1B01ED4C8(v6, v7, v24);
  if (v9)
  {
    sub_1B01E94F4(3, "%s: FDR failed to decode multi combined Data img4", v10);
LABEL_19:
    result = 0x2000;
    goto LABEL_7;
  }

  if (sub_1B01F75C8(v24, &v18, &v19))
  {
    if ((*(a1 + 2016) & 2) == 0)
    {
      sub_1B01E94F4(3, "%s: FDR failed to get restitched manifest from multi combined data", v11);
      goto LABEL_19;
    }

    sub_1B01E94F4(3, "%s: No restitch manifest, but allow unsealed, try to proceed with the data manifest...", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData");
    v18 = 0;
    v19 = 0;
  }

  if (sub_1B01ED0E4(v24, &v17))
  {
    sub_1B01E94F4(3, "%s: FDR failed to get payload type from multi combined data", v12);
    goto LABEL_19;
  }

  v13 = v17;
  if (v13 != sub_1B01E79C8("mcmb"))
  {
    sub_1B01E94F4(3, "%s: multi combined payload type is not mcmb", "_AMFDRDecodeGetPayloadSeqAndSetManifestFromMultiCombinedData");
LABEL_24:
    result = 0x20000;
    goto LABEL_7;
  }

  if (sub_1B01ED0A0(v24, v20))
  {
    sub_1B01E94F4(3, "%s: FDR failed to get payload from multi combined data", v14);
    goto LABEL_19;
  }

  if (sub_1B01E7424(v20, &v16[16], v16) || *&v16[16] != 0x2000000000000011)
  {
    sub_1B01EC874();
    goto LABEL_24;
  }

  v15 = v19;
  *(a1 + 280) = v18;
  *(a1 + 288) = v15;
  result = 0;
  if (a2)
  {
    *a2 = *v16;
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B01EA0BC(__int16 a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 2) != 0 && (a2 & 0x2600000000100) != 0)
  {
    sub_1B01E94F4(4, "%s: ignoring unsealed error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", a2 & 0x2600000000100);
    v2 &= 0xFFFD9FFFFFFFFEFFLL;
  }

  if ((a1 & 4) != 0 && (v2 & 0x140000) != 0)
  {
    sub_1B01E94F4(4, "%s: ignoring trust object mismatch error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", v2 & 0x140000);
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
      sub_1B01E94F4(4, "%s: ignoring raw error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", v5);
      v2 ^= v5;
    }
  }

  if ((a1 & 0x10) != 0 && (v2 & 0x1040000300000) != 0)
  {
    sub_1B01E94F4(4, "%s: ignoring offline signing verification error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", v2 & 0x1040000300000);
    v2 &= 0xFFFEFBFFFFCFFFFFLL;
  }

  if ((a1 & 0x40) != 0 && (v2 & 0x2C0100) != 0)
  {
    sub_1B01E94F4(4, "%s: ignoring no trustobject error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", v2 & 0x2C0100);
    v2 &= 0xFFFFFFFFFFD3FEFFLL;
  }

  if ((a1 & 0x4000) != 0 && (v2 & 0x1000000000000000) != 0)
  {
    sub_1B01E94F4(4, "%s: ignoring incomplete subcc error 0x%016llX", "_AMFDRDecodeTolerateErrorsForOptions", v2 & 0x1000000000000000);
    return v2 & 0xEFFFFFFFFFFFFFFFLL;
  }

  return v2;
}

uint64_t sub_1B01EA264(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  __n = 0;
  __s2 = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __s1[0] = v4;
  __s1[1] = v4;
  v19[0] = v4;
  v19[1] = v4;
  __n_4[0] = v4;
  __n_4[1] = v4;
  v5 = sub_1B01F527C(*(a2 + 256), *(a2 + 264), __s1);
  if (v5 || (v5 = sub_1B01F527C(*(a2 + 144), *(a2 + 152), v19)) != 0)
  {
LABEL_6:
    v8 = v5;
    v9 = "%s: AMSupportDigestSha256 failed";
LABEL_7:
    sub_1B01E94F4(3, v9, "AMFDRDecodeCheckCertRevocation");
    goto LABEL_8;
  }

  v6 = *(a2 + 272);
  if (v6 && (v7 = *(a2 + 280)) != 0)
  {
    v5 = sub_1B01F527C(v6, v7, __n_4);
    if (v5)
    {
      goto LABEL_6;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1B01F60C8(a1);
  if (v13)
  {
    v8 = v13;
    sub_1B01E94F4(3, "%s: AMFDRDecodeIterateTrustObjectRevokedBegin failed");
  }

  else
  {
    v14 = sub_1B01F61B4(a1, &__s2, &__n);
    if (v14)
    {
      v8 = v14;
      sub_1B01E94F4(3, "%s: AMFDRDecodeIterateTrustObjectRevokedNext failed");
    }

    else
    {
      v9 = "%s: AMFDRDecodeIterateTrustObjectRevokedNext failed";
      while (1)
      {
        v8 = __s2;
        if (!__s2)
        {
          break;
        }

        v15 = __n;
        if (!memcmp(__s1, __s2, __n))
        {
          v8 = 0x10000000000;
          sub_1B01E94F4(3, "%s: FDR Trust Object revoked certificate found");
          break;
        }

        if (!memcmp(v19, v8, v15))
        {
          v8 = 0x10000000000;
          sub_1B01E94F4(3, "%s: FDR Trust Object revoked public key found");
          break;
        }

        if (v12 && !memcmp(__n_4, v8, v15))
        {
          v8 = 0x10000000000;
          sub_1B01E94F4(3, "%s: FDR Trust Object revoked client ID found");
          break;
        }

        v8 = sub_1B01F61B4(a1, &__s2, &__n);
        if (v8)
        {
          goto LABEL_7;
        }
      }
    }
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1B01EA448(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  if (!a3)
  {
    sub_1B01EC8AC();
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
        if (sub_1B01EB7B0(*(a2 + 208), *(a2 + 216), *(a1 + 32), v9, *a1, *(a1 + 8), *(a1 + 16), v8, a2 + 240, 1, a5))
        {
          v10 = 0x20000000000;
          sub_1B01E94F4(3, "%s: PKI: im4c cert signature validation with issuer pubkey failed");
        }

        else
        {
          sub_1B01E94F4(7, "%s: PKI: verify im4c cert was issued and signed by issuer (success)", "_AMFDRDecodeVerifyImage4CertIssuer");
          v10 = sub_1B01EA264(a3, a1);
          if (v10)
          {
            sub_1B01E94F4(3, "%s: im4c revocation check failed");
          }
        }
      }

      else
      {
        v10 = 0x40000000000;
        sub_1B01E94F4(3, "%s: decoded IM4C signature is empty");
      }
    }

    else
    {
      v10 = 0x40000000000;
      sub_1B01E94F4(3, "%s: decoded IM4C signature OID is empty");
    }

    return v10;
  }

  return sub_1B01EA584(a1, a2, a3, a5);
}

uint64_t sub_1B01EA584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
    sub_1B01E94F4(3, "%s: PKI: cert was not issued by issuer (subject != issuer)", "_AMFDRDecodeVerifyCertIssuerInternal");
    v10 = malloc(0x100uLL);
    if (sub_1B01EBAB4(*(a2 + 128), *(a2 + 136), v10))
    {
      v11 = "decode error";
    }

    else
    {
      v11 = v10;
    }

    v12 = malloc(0x100uLL);
    if (sub_1B01EBAB4(*(a1 + 96), *(a1 + 104), v12))
    {
      v13 = "decode error";
    }

    else
    {
      v13 = v12;
    }

    sub_1B01E94F4(3, "%s: subject: %s, issuer: %s", "_AMFDRDecodeVerifyCertIssuerInternal", v11, v13);
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
  if (sub_1B01E7698((a1 + 16), 2u, &unk_1B01FF510, v19, 0x20uLL, 0x20uLL))
  {
    sub_1B01E94F4(3, "%s: decodeAlgId failed");
    return 0x40000000000;
  }

  if (sub_1B01E71E4(a1 + 32, &v16, &v18))
  {
    sub_1B01E94F4(3, "%s: DERParseBitString(sig) failed");
    return 0x40000000000;
  }

  if (v18)
  {
    sub_1B01E94F4(3, "%s: numUnused != 0");
    return 0x40000000000;
  }

  if (sub_1B01EB7B0(*(a2 + 208), *(a2 + 216), v16, v17, *a1, *(a1 + 8), *&v19[0], DWORD2(v19[0]), a1 + 240, 0, a4))
  {
    sub_1B01E94F4(3, "%s: PKI: cert signature validation with issuer pubkey failed", "_AMFDRDecodeVerifyCertIssuerInternal");
    return 0x20000000000;
  }

  sub_1B01E94F4(7, "%s: PKI: verify cert was issued and signed by issuer (success)", "_AMFDRDecodeVerifyCertIssuerInternal");
  if (!a3)
  {
    return 0;
  }

  v14 = sub_1B01EA264(a3, a1);
  if (v14)
  {
    sub_1B01E94F4(3, "%s: revocation check failed", "_AMFDRDecodeVerifyCertIssuerInternal");
  }

  return v14;
}

uint64_t sub_1B01EA7E4(uint64_t *a1, void *a2, _DWORD *a3)
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
          v27 = off_1F26378F8;
          if (!v26)
          {
            v27 = off_1F2637930;
          }

          *(v7 + 2008) = v27;
          if ((v10 & 0x100) != 0)
          {
            *(v7 + 2008) = off_1F2637930;
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

          v32 = sub_1B01E95C4(v7);
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
            v12 = sub_1B01EA0BC(a1[18], v32);
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_14;
        }

        sub_1B01E94F4(3, "%s: outRawData and outRawDataLength must be non NULL");
      }

      else
      {
        sub_1B01E94F4(3, "%s: ctx->inData must be non NULL and ctx->inDataLength must be non 0");
      }
    }

    else
    {
      sub_1B01E94F4(3, "%s: ctx must be non NULL");
    }

    v12 = 1;
LABEL_14:
    free(v7);
    return v12;
  }

  sub_1B01E94F4(3, "%s: Failed to malloc fdrDecode", "AMFDRDecodeTrustEvaluation");
  return 0x80000000000000;
}

uint64_t sub_1B01EAA70(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1944);
  if (!v2)
  {
    sub_1B01E94F4(3, "%s: FDR Trust Object is NULL", "_AMFDRDecodeVerifyTrustObject");
    v4 = 0x200000;
    goto LABEL_5;
  }

  v3 = sub_1B01E93EC((a1 + 1768), v2, *(a1 + 1952));
  if (!v3)
  {
    if (!*(a1 + 72))
    {
      sub_1B01E94F4(3, "%s: FDR Trust Object digest is NULL", "_AMFDRDecodeVerifyTrustObject");
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
      v9 = *(a1 + 1952);
      if (sub_1B01F52E8(*(a1 + 1944)))
      {
LABEL_11:
        sub_1B01E94F4(3, "%s: AMSupportDigestSha256 failed");
LABEL_16:
        v4 = 0x100000;
        goto LABEL_5;
      }
    }

    else
    {
      if (v8 != 32)
      {
        sub_1B01E94F4(3, "%s: FDR Trust Object digest size not supported. digest is of size %zu", "_AMFDRDecodeVerifyTrustObject", v8);
        v4 = 0x80000;
        goto LABEL_5;
      }

      if (sub_1B01F527C(*(a1 + 1944), *(a1 + 1952), __s2))
      {
        goto LABEL_11;
      }
    }

    if (!memcmp(*(a1 + 72), __s2, *(a1 + 80)))
    {
      v4 = 0;
      goto LABEL_6;
    }

    sub_1B01E94F4(3, "%s: FDR Trust Object digest mismatch.");
    goto LABEL_16;
  }

  v4 = v3;
  sub_1B01E94F4(3, "%s: malformed FDR Trust Object Format", "_AMFDRDecodeVerifyTrustObject");
LABEL_5:
  *a1 |= v4;
LABEL_6:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1B01EAC1C(int a1, uint64_t *a2, int a3, _WORD *a4)
{
  v10 = 0;
  if (!*a4)
  {
    sub_1B01E94F4(3, "%s: fdrDecode is NULL", "_AMFDRDecodeFilterDataInstanceCallback");
    return 6;
  }

  *v9 = 0xAAAAAAAAAAAAAAAALL;
  if (!a2)
  {
    sub_1B01E94F4(3, "%s: property is NULL", "_AMFDRDecodeFilterDataInstanceCallback");
    **a4 |= 1uLL;
    return 6;
  }

  if (a1 != 1768846196)
  {
    return 0;
  }

  v6 = sub_1B01ED418(a2, 1768846196, v9, &v10);
  if (v6)
  {
    v7 = v6;
    sub_1B01E94F4(3, "%s: Img4DecodeGetPropertyData(kFDRTag_inst) failed.", "_AMFDRDecodeFilterDataInstanceCallback");
    **a4 |= 0x4000uLL;
    return v7;
  }

  if (a3 != 1)
  {
    sub_1B01E94F4(3, "%s: unexpected property type != kImg4ObjectProperty", "_AMFDRDecodeFilterDataInstanceCallback");
    return 0;
  }

  if (sub_1B01EADB4(*v9, v10, *(*a4 + 104), *(*a4 + 112), *(*a4 + 184), *(*a4 + 192), 1, *a4))
  {
    sub_1B01E94F4(6, "%s: kFDRTag_inst property == fdrDecode->uniqueID, found corresponding Data Instance.", "_AMFDRDecodeFilterDataInstanceCallback");
    v7 = 0;
    a4[4] = 1;
  }

  else
  {
    sub_1B01E94F4(3, "%s: kFDRTag_inst property != fdrDecode->uniqueID", "_AMFDRDecodeFilterDataInstanceCallback");
    v7 = 0;
    a4[4] = 256;
  }

  return v7;
}

uint64_t sub_1B01EADB4(_DWORD *a1, uint64_t a2, void *__s2, size_t __n, const void *a5, size_t a6, int a7, void *a8)
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
      sub_1B01E94F4(v13, v12, "_AMFDRDecodeInstPropertyMatching", v17, v18);
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

uint64_t sub_1B01EAF88(uint64_t a1, uint64_t a2, int a3, void *a4)
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
  if (sub_1B01E7424(v15, &v14, v13) || v14 != 0x2000000000000011)
  {
    sub_1B01EC954();
    return 2;
  }

  if (sub_1B01E750C(v13, &v11))
  {
LABEL_8:
    sub_1B01E94F4(3, "%s: cannot find tag in property list", "_AMFDRDecodeSearchEntryFromPropertyList");
    return 2;
  }

  while (1)
  {
    v9 = 0u;
    v10 = 0u;
    if (sub_1B01E7698(v12, 2u, &unk_1B01FF768, &v9, 0x20uLL, 0))
    {
      sub_1B01EC8E4();
      return 2;
    }

    if (*(&v9 + 1) == 4 && sub_1B01E79C8(v9) == a3)
    {
      break;
    }

    if (sub_1B01E750C(v13, &v11))
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
    sub_1B01EC91C();
    return 1;
  }

  return result;
}

uint64_t sub_1B01EB0C0(uint64_t a1)
{
  v29 = 0;
  v2 = *(a1 + 2016);
  if ((~*(a1 + 2016) & 0x1080) == 0)
  {
    sub_1B01E94F4(3, "%s: cannot set kAMFDRDecodeOptionManifestOnly and kAMFDRDecodeOptionSubCCOnly at the same time");
    goto LABEL_68;
  }

  if ((v2 & 0x80) != 0)
  {
    if (!sub_1B01ED5B0(*(a1 + 24), *(a1 + 32), a1 + 400))
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (a1 + 400);
  if ((v2 & 0x1000) == 0)
  {
    v6 = sub_1B01ED4C8(v3, v4, v5);
    if (!v7)
    {
LABEL_5:
      v2 = *(a1 + 2016);
      goto LABEL_9;
    }

LABEL_7:
    sub_1B01E94F4(3, "%s: FDR failed to decode Data img4", v6);
LABEL_18:
    v9 = *a1;
    v10 = 83901440;
LABEL_19:
    result = v9 | v10;
    *a1 = v9 | v10;
    v12 = *(a1 + 32);
    *(a1 + 1912) = *(a1 + 24);
    *(a1 + 1920) = v12;
    return result;
  }

  *(a1 + 848) = 0;
  v6 = 0.0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *v5 = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 408) = v3;
  *(a1 + 416) = v4;
  *(a1 + 488) = "IM4P";
  *(a1 + 496) = 4;
  *(a1 + 536) = v3;
  *(a1 + 544) = v4;
LABEL_9:
  v8 = *(a1 + 280);
  if ((v2 & 0x1000) != 0)
  {
    if (v8)
    {
      goto LABEL_16;
    }

    sub_1B01E94F4(3, "%s: trust evaluation on subCC requires a reStitchManifest");
LABEL_68:
    result = *a1 | 1;
    goto LABEL_36;
  }

  if (!v8)
  {
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v29 = sub_1B01E79C8(*(a1 + 88));
    goto LABEL_22;
  }

LABEL_16:
  *(a1 + 424) = *(a1 + 280);
  if (sub_1B01ECC6C((a1 + 280), a1 + 632))
  {
    sub_1B01E94F4(3, "%s: FDR failed to decode manifestOverride", v6);
    goto LABEL_18;
  }

  v2 = *(a1 + 2016);
  if ((v2 & 0x1000) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((v2 & 0x80) == 0)
  {
    if (sub_1B01ED0E4(a1 + 400, &v29))
    {
      sub_1B01E94F4(3, "%s: FDR failed to get payload type", v6);
      goto LABEL_18;
    }

    if (*(a1 + 528) != 3)
    {
      v28 = *(a1 + 528);
      sub_1B01E94F4(3, "%s: Payload version is wrong size. got %zu expected %d");
      goto LABEL_50;
    }

    v21 = *(a1 + 520);
    v22 = *v21;
    v23 = *(v21 + 2);
    if (v22 != 11825 || v23 != 48)
    {
      sub_1B01E94F4(3, "%s: Payload version mismatch");
LABEL_50:
      v9 = *a1;
      v10 = 0x8005001C00;
      goto LABEL_19;
    }
  }

LABEL_22:
  v13 = *(a1 + 88);
  if (!v13)
  {
    goto LABEL_25;
  }

  if ((*(a1 + 96) - 3) >= 2)
  {
    sub_1B01E94F4(3, "%s: Invalid data class length", v6);
LABEL_35:
    result = *a1 | 0x100000004000C00;
LABEL_36:
    *a1 = result;
    return result;
  }

  v14 = sub_1B01E79C8(v13);
  if (v14 != v29)
  {
    sub_1B01E94F4(3, "%s: Payload type mismatch", v15);
    goto LABEL_35;
  }

LABEL_25:
  v16 = *a1;
  if ((*(a1 + 2016) & 0x80) != 0)
  {
    if (!sub_1B01F7814(a1 + 400, off_1F26379A0, *(a1 + 2008), a1))
    {
      goto LABEL_59;
    }
  }

  else if (!sub_1B01ED738(v29, a1 + 400, off_1F26379A0, *(a1 + 2008), a1))
  {
    goto LABEL_59;
  }

  v17 = *a1;
  if ((*a1 & 0x1000000000000) == 0)
  {
LABEL_54:
    sub_1B01E94F4(3, "%s: FDR data trust evaluation failed.", "_AMFDRDecodeVerifyData");
    if (!*a1)
    {
      *a1 = 0x100000000000;
    }

    goto LABEL_61;
  }

  v18 = *(a1 + 2008);
  if (v18 == off_1F26378F8)
  {
    v19 = "%s: Evaluation returned code=0x%016llX, re-evaluate with FDR 2.0 format";
    v20 = off_1F2637930;
    goto LABEL_44;
  }

  if (v18 == off_1F2637930)
  {
    v19 = "%s: Evaluation returned code=0x%016llX, re-evaluate with FDR 1.0 format";
    v20 = off_1F26378F8;
LABEL_44:
    *(a1 + 2008) = v20;
    sub_1B01E94F4(4, v19, "_AMFDRDecodeVerifyData", v17);
  }

  v25 = *(a1 + 2008);
  if (v25 != off_1F26378F8 && v25 != off_1F2637930)
  {
    goto LABEL_54;
  }

  v26 = *a1;
  *a1 = v16;
  *(a1 + 400) = 0;
  if ((*(a1 + 2016) & 0x80) != 0)
  {
    v27 = sub_1B01F7814(a1 + 400, off_1F26379A0, v25, a1);
  }

  else
  {
    v27 = sub_1B01ED738(v29, a1 + 400, off_1F26379A0, v25, a1);
  }

  if (v27)
  {
    sub_1B01E94F4(4, "%s: Re-evaluation returned code=0x%016llX", "_AMFDRDecodeVerifyData", *a1);
    *a1 = v26;
    goto LABEL_54;
  }

  if ((*(a1 + 2016) & 0x20) != 0)
  {
    sub_1B01E94F4(3, "%s: Re-evaluation succeeded but decode options require version2", "_AMFDRDecodeVerifyData");
    *a1 |= 0x2000000000000uLL;
  }

  else
  {
    sub_1B01E94F4(4, "%s: Re-evaluation succeeded", "_AMFDRDecodeVerifyData");
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
    if ((*(a1 + 376) & 1) == 0)
    {
      result |= 0x1000000000000000uLL;
      *a1 = result;
    }
  }

  else
  {
    result = *a1;
  }

  *(a1 + 1912) = *(a1 + 536);
  *(a1 + 1920) = *(a1 + 544);
  return result;
}

uint64_t sub_1B01EB588(uint64_t a1)
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
  v3 = sub_1B01E9D88(a1, &v16);
  if (v3)
  {
    v10 = v3;
    sub_1B01EC98C(a1);
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
      sub_1B01ECA90();
      return 1;
    }

    v4 = 1;
  }

  if (sub_1B01E750C(&v16, &v17))
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
      if (sub_1B01E7698(v18, 4u, &unk_1B01FF900, __s1, 0x40uLL, 0))
      {
        sub_1B01EC9D0();
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
      if (sub_1B01E750C(&v16, &v17))
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
      sub_1B01E94F4(5, "%s: found data in multi combined format", "_AMFDRDecodeFindDataFromMultiCombined");
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
    sub_1B01E94F4(5, "%s: found data in multi combined format", "_AMFDRDecodeFindDataFromMultiCombined");
    v6 = *(&v13 + 1);
    v7 = v13;
    v5 = 1;
    if (sub_1B01E750C(&v16, &v17))
    {
      goto LABEL_29;
    }
  }

  sub_1B01ECA08(a1);
LABEL_36:
  sub_1B01ECA58();
  return 512;
}

uint64_t sub_1B01EB7B0(const void *a1, unsigned int a2, uint64_t a3, uint64_t a4, char *a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, char a10, void *a11)
{
  v28 = *MEMORY[0x1E69E9840];
  v25[0] = a7;
  v25[1] = a8;
  if (sub_1B01E7974(v25, &off_1E7A93A80))
  {
    memset(v26, 170, 20);
    if (sub_1B01F5240(a5))
    {
      goto LABEL_33;
    }

    result = sub_1B01F5324();
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

  if (sub_1B01E7974(v25, &off_1E7A93A90))
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v26 = v16;
    *&v26[16] = v16;
    if (sub_1B01F527C(a5, a6, v26))
    {
      goto LABEL_33;
    }

    result = sub_1B01F53A0();
    if (a11)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (sub_1B01E7974(v25, &off_1E7A93AA0))
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v26[16] = v17;
    v27 = v17;
    *v26 = v17;
    if (sub_1B01F52E8(a5))
    {
      goto LABEL_33;
    }

    result = sub_1B01F541C();
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

  if (sub_1B01E7974(v25, &off_1E7A93AC0))
  {
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v26 = v18;
    *&v26[16] = v18;
    v23 = 0;
    v24 = 0uLL;
    if (!a9)
    {
      sub_1B01ECB38();
      goto LABEL_33;
    }

    if (!a10)
    {
      if (sub_1B01E6E2C(a9, &v23))
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    if (*(a9 + 8))
    {
      v24 = *a9;
LABEL_25:
      if (sub_1B01F527C(a5, a6, v26))
      {
        goto LABEL_33;
      }

      v20 = a2;
      v21 = a1;
      goto LABEL_30;
    }

LABEL_38:
    sub_1B01ECAC8();
    result = 6;
    goto LABEL_35;
  }

  if (sub_1B01E7974(v25, &off_1E7A93AD0))
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v26[16] = v19;
    v27 = v19;
    *v26 = v19;
    v23 = 0;
    v24 = 0uLL;
    if (!a9)
    {
      sub_1B01ECB00();
      goto LABEL_33;
    }

    if (a10)
    {
      if (!*(a9 + 8))
      {
        goto LABEL_38;
      }

      v24 = *a9;
    }

    else if (sub_1B01E6E2C(a9, &v23))
    {
      goto LABEL_33;
    }

    if (sub_1B01F52E8(a5))
    {
      goto LABEL_33;
    }

    v20 = a2;
    v21 = a1;
LABEL_30:
    result = sub_1B01EC258(v21, v20);
    if (!a11)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  result = 4;
LABEL_35:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01EBAB4(unint64_t a1, unint64_t a2, _OWORD *a3)
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
    v4 = sub_1B01E74E0(v19, v18);
    if (v4)
    {
      v11 = v4;
      sub_1B01ECB70();
    }

    else
    {
      v5 = 0;
      v6 = 255;
      while (1)
      {
        v7 = sub_1B01E750C(v18, &v16);
        if (v7)
        {
          break;
        }

        v13 = v17;
        if (v16 == 0x2000000000000011)
        {
          v14 = 0u;
          v15 = 0u;
          v8 = sub_1B01E75CC(&v13, 2u, &unk_1B01FF488, &v14, 0x20uLL, 0);
          if (v8)
          {
            v11 = v8;
            sub_1B01E94F4(3, "%s: malformed AttributeTypeAndValue format: %d", "_AMFDRDecodeSequenceString", v8);
            return v11;
          }

          if (v15)
          {
            v13 = v15;
            v17 = 0uLL;
            v16 = 0;
            v9 = sub_1B01E6E2C(&v13, &v16);
            if (v9)
            {
              v11 = v9;
              sub_1B01E94F4(3, "%s: malformed attribute: %d");
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
          sub_1B01E94F4(3, "%s: Attribute must be set container. Found unexpected tag 0x%llu, skipping", "_AMFDRDecodeSequenceString", v16);
        }
      }

      v11 = v7;
      if (v7 == 1)
      {
        return 0;
      }

      sub_1B01E94F4(3, "%s: failed to decode all sequences: %d");
    }
  }

  else
  {
    sub_1B01ECBA8();
    return 3;
  }

  return v11;
}

uint64_t sub_1B01EBCE0(char *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 48)
  {
    return sub_1B01F52E8(a1);
  }

  if (a4 == 32)
  {
    return sub_1B01F527C(a1, a2, a3);
  }

  return 1;
}

void sub_1B01EBD00(unsigned __int8 *a1@<X8>)
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

uint64_t sub_1B01EBD34@<X0>(int a1@<W8>)
{
  result = 0;
  *v3 = v1;
  *v2 = a1;
  return result;
}

void sub_1B01EBD54()
{
  *(v0 - 40) = 0;
  *(v0 - 32) = 0;
  *(v0 - 24) = 0;
}

void sub_1B01EBD80(unsigned __int8 *a1@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v1 = *a1;
  v2 = a1[1];
}

uint64_t sub_1B01EBE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18)
{
  a16 = 0;
  a17 = 0;
  a18 = 0;

  return sub_1B01E750C(&a14, &a16);
}

uint64_t sub_1B01EBE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
              if (sub_1B01E7974(v8[1], &off_1E7A93AE0))
              {
                v9 = sub_1B01EBD9C();
                if (!sub_1B01F5240(v9))
                {
                  return 0;
                }
              }

              else if (sub_1B01E7974(*(*(a5 + 32) + 8), &off_1E7A93AF0))
              {
                v10 = sub_1B01EBD9C();
                if (!sub_1B01F527C(v10, v11, v12))
                {
                  return 0;
                }
              }

              else
              {
                if (!sub_1B01E7974(*(*(a5 + 32) + 8), &off_1E7A93B00))
                {
                  return 4;
                }

                v13 = sub_1B01EBD9C();
                if (!sub_1B01F52E8(v13))
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

uint64_t sub_1B01EBEFC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v5;
  v21 = v5;
  v19 = -86;
  sub_1B01EBDDC();
  result = sub_1B01E75CC(v6, v7, v8, v9, v10, v11);
  if (!result)
  {
    sub_1B01EBDDC();
    result = sub_1B01E7698(v13, v14, v15, v16, v17, v18);
    if (!result)
    {
      if (sub_1B01E7974(a3, &off_1E7A93A70) || sub_1B01E7974(a3, &xmmword_1E7A93AB0))
      {
        result = sub_1B01E71E4(&v21, a2, &v19);
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

uint64_t sub_1B01EBFE4(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
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
      if (!sub_1B01E7424(a1 + 144, &v17, v18) && v17 == 0x2000000000000010)
      {
        v6 = 2;
        while (!sub_1B01E750C(v18, v16))
        {
          if (v16[0] != 0x2000000000000010 || sub_1B01E7698(&v16[1], 3u, &unk_1B01FF4C0, v14, 0x30uLL, 0x30uLL))
          {
            return 16;
          }

          if (sub_1B01E7974(a2, v14))
          {
            if (sub_1B01E6E2C(&v15, v13))
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

void sub_1B01EC17C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16 = 0;
  if (a1)
  {
    sub_1B01EBDF4();
    if (v7)
    {
      if (*v3)
      {
        v8 = v5;
        v9 = *(v3 + 8);
        if (v9)
        {
          v10 = v6;
          if (!sub_1B01F6AB0(*v3, v9, &v16) && *(v3 + 8) >= v16)
          {
            v11 = *a3;
            v12 = *v3;
            if ((v8 & 0x100) != 0)
            {
              sub_1B01F6750();
            }

            else
            {
              v13 = sub_1B01F6550();
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

uint64_t sub_1B01EC258(const void *a1, size_t a2)
{
  result = 1;
  if (a1 && a2)
  {
    if (a2)
    {
      sub_1B01EBD64();

      return sub_1B01DA7C4(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    else
    {
      v5 = malloc(a2 | 1);
      if (v5)
      {
        v6 = v5;
        *v5 = 4;
        memcpy(v5 + 1, a1, a2);
        sub_1B01EBD64();
        v15 = sub_1B01DA7C4(v7, v8, v9, v10, v11, v12, v13, v14);
        free(v6);
        return v15;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t sub_1B01EC348(void *a1)
{
  result = sub_1B01E94F4(3, "%s: _AMFDRDecodeIterateCertChainBegin failed", "_AMFDRDecodeVerifyChain");
  *a1 |= 1uLL;
  return result;
}

uint64_t sub_1B01ECA08(void *a1)
{
  result = sub_1B01E94F4(3, "%s: found multiple entries that match, uniqueID is required in this case", "_AMFDRDecodeFindDataFromMultiCombined");
  *a1 |= 0x4000uLL;
  return result;
}

uint64_t sub_1B01ECBE0(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (sub_1B01E7320(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1B01ECC88(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = sub_1B01E75CC(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (sub_1B01ECBE0(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = sub_1B01E7320(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1B01ECD8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = sub_1B01E7424(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = sub_1B01E750C(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = sub_1B01E7320(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = sub_1B01E750C(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = sub_1B01E750C(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B01ECEBC(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = sub_1B01E750C(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return sub_1B01F7498(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B01ECF68(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = sub_1B01E6E2C(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = sub_1B01E7320(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = sub_1B01F756C(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = sub_1B01F756C(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_1B01ED0A0(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = (a1 + 136);
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *v2;
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B01ED0E4(uint64_t a1, _DWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = sub_1B01E7320(a1 + 104, a2);
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (result)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_1B01ED144(void *a1, unsigned int a2, _BYTE *a3)
{
  result = 6;
  if (a2 <= 1 && a1 && a3)
  {
    if (a2)
    {
      if (a1[55])
      {
        v5 = a1[56];
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else if (a1[33])
    {
      v5 = a1[34];
      if (!v5)
      {
LABEL_12:
        result = 0;
        *a3 = v5;
        return result;
      }

LABEL_10:
      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B01ED19C(uint64_t a1, unsigned int a2, uint64_t a3, BOOL *a4)
{
  memset(v8, 0, sizeof(v8));
  v4 = 6;
  if (a1)
  {
    if (a4)
    {
      sub_1B01ED344(a1, a2, a3 | 0xE000000000000000, 1uLL, v8);
      v4 = v6;
      if (!v6)
      {
        return sub_1B01E72A4(&v8[1] + 1, a4);
      }
    }
  }

  return v4;
}

double sub_1B01ED20C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11[0] = 0;
  v11[1] = 0;
  result = 0.0;
  memset(v10, 0, sizeof(v10));
  if (a1 && a5 && (sub_1B01ECF38(a1, v11, 0) || sub_1B01F756C(v11, a2 | 0xE000000000000000, 0x2000000000000011uLL, v10) || sub_1B01F756C(&v10[1] + 1, a3, a4, a5)))
  {
    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

void sub_1B01ED2C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    sub_1B01ED20C(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

double sub_1B01ED344(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  *v11 = 0uLL;
  if (a2 <= 1 && a1 && a5)
  {
    v12 = 0;
    if (!sub_1B01ED144(a1, a2, &v12) && v12 == 1)
    {
      if (a2)
      {
        *v11 = *(a1 + 440);
        goto LABEL_9;
      }

      if (!sub_1B01ECF38(a1, 0, v11))
      {
LABEL_9:
        if (!sub_1B01F756C(v11, a3, a4, a5))
        {
          return result;
        }
      }
    }

    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t sub_1B01ED418(uint64_t *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = 6;
  if (a3 && a4)
  {
    v8 = *a1;
    v9 = *(a1 + 2);
    v11[0] = v8;
    v11[1] = v9;
    result = sub_1B01ECD8C(v11, a2 | 0xE000000000000000, &v12);
    if (!result)
    {
      if (*(&v14 + 1) == 4)
      {
        v10 = v14;
        if (!DWORD1(v14))
        {
          result = 0;
          *a3 = *(&v13 + 1);
LABEL_7:
          *a4 = v10;
          return result;
        }

        result = 7;
      }

      else
      {
        result = 2;
      }
    }

    v10 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  return result;
}

double sub_1B01ED4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!sub_1B01F7084(v9, &v5) && !sub_1B01F7310(&v6, a3 + 88) && !sub_1B01ECC6C(&v7, a3 + 232) && !sub_1B01F7418(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

uint64_t sub_1B01ED5C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = sub_1B01ECD54(&v15, v10);
      }

      else
      {
        result = sub_1B01ECD70(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = sub_1B01ECC6C(&v15, v9);
      }

      else
      {
        result = sub_1B01ECD38(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = sub_1B01E6E34(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t sub_1B01ED704(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return sub_1B01ED9E8(a1, a2, v6, a4, 0, a5);
}

uint64_t sub_1B01ED744(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  a12 = 0u;
  a13 = 0u;
  a11 = 0u;
  v14 = *(a1 + 2);
  a9 = *a1;
  a10 = v14;
  v15 = a2 | 0xE000000000000000;

  return sub_1B01ECD8C(&a9, v15, &a11);
}

void sub_1B01ED78C(void *a1, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = 0;
  v18 = 0uLL;
  __n = 0;
  v17 = 0;
  v14 = 0;
  __s1 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  __s2 = 0uLL;
  v7 = 0uLL;
  if (a1 && a1[40] && !sub_1B01E7424((a1 + 39), &v19, v21) && v19 == 0x2000000000000011)
  {
    while (1)
    {
      if (sub_1B01E750C(v21, &v17))
      {
        return;
      }

      v4 = (a1 + 7);
      switch(v17)
      {
        case 0xE00000004D414E50:
LABEL_11:
          v7 = *v4;
          if (sub_1B01ECD8C(&v18, v17, &v11) || *(&v13 + 1) != 0x2000000000000011 || sub_1B01E74E0(&v12 + 1, v20))
          {
            return;
          }

          while (1)
          {
            v5 = sub_1B01E750C(v20, &v14);
            if (v5)
            {
              break;
            }

            if (sub_1B01ECD8C(&__s1, v14, v9))
            {
              return;
            }

            sub_1B01F701C(&v7, v14, &__s2);
            if (*(&v10 + 1) <= 4uLL && ((1 << SBYTE8(v10)) & 0x16) != 0)
            {
              if (v6)
              {
                return;
              }

              if (__n != *(&__s2 + 1))
              {
                return;
              }

              v6 = memcmp(__s1, __s2, __n);
              if (v6)
              {
                return;
              }
            }

            else if (*(&v10 + 1) != 0xA000000000000000)
            {
              if (*(&v10 + 1) != 0xA000000000000001 || v6 != 1)
              {
                return;
              }

              v6 = 0;
            }

            if (v6)
            {
              return;
            }
          }

          if (v5 != 1)
          {
            return;
          }

          break;
        case 0xE00000006D616E78:
          if (a2)
          {
            *a2 = v18;
          }

          break;
        case 0xE00000004F424A50:
          v4 = (a1 + 9);
          if (a1[9])
          {
            goto LABEL_11;
          }

          v4 = (a1 + 9);
          if (a1[10])
          {
            goto LABEL_11;
          }

          break;
        default:
          return;
      }
    }
  }
}

uint64_t sub_1B01ED9E8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  memset(v23, 0, sizeof(v23));
  result = 6;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!*a3)
  {
    return result;
  }

  if (!*a4)
  {
    return result;
  }

  if (!*(a4 + 24))
  {
    return result;
  }

  if (!*(a4 + 8))
  {
    return result;
  }

  if (!*(a4 + 16))
  {
    return result;
  }

  v10 = *(a4 + 32);
  if (!v10)
  {
    return result;
  }

  if (!*(a2 + 24))
  {
    return 6;
  }

  if (*v10 > 0x30uLL)
  {
    return 7;
  }

  v14 = *(a2 + 32);
  result = (*a4)();
  if (result)
  {
    return result;
  }

  *(a2 + 1) = 1;
  v15 = *(a3 + 8);
  if (v15 && (v16 = v15(a2, a6)) != 0 && !memcmp((a2 + 328), v16, **(a4 + 32)))
  {
    v17 = 0;
  }

  else
  {
    result = (*(a4 + 8))(*(a2 + 296), *(a2 + 304), &v21, &v22, a2 + 312, a2 + 320, a4, a6);
    if (result)
    {
      return result;
    }

    if (**(a4 + 32) > 0x30uLL)
    {
      return 7;
    }

    result = (*a4)(*(a2 + 264), *(a2 + 272), a2 + 376);
    if (result)
    {
      return result;
    }

    result = (*(a4 + 16))(v21, v22, *(a2 + 280), *(a2 + 288), a2 + 376, **(a4 + 32), a4, a6);
    if (result)
    {
      return result;
    }

    v17 = 1;
  }

  result = sub_1B01ECF38(a2, a2 + 40, a2 + 56);
  if (result)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
    v18 = *(a3 + 16);
    v19 = (a2 + 40);
    v20 = a1 | 0xE000000000000000;
    if (v18)
    {
      result = v18(v19, v20, 0x2000000000000011, v23, a6);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = sub_1B01F756C(v19, v20, 0x2000000000000011uLL, v23);
      if (result)
      {
        return result;
      }
    }

    *(a2 + 72) = *(&v23[1] + 8);
  }

  if (v17)
  {
    result = (*(a4 + 24))(a2, a6);
    if (result)
    {
      return result;
    }
  }

  if (**(a4 + 32) > 0x30uLL)
  {
    return 7;
  }

  if (*(a2 + 136) && *(a2 + 144))
  {
    result = (*a4)(*(a2 + 8), *(a2 + 16), a2 + 184);
    if (result)
    {
      return result;
    }

    *a2 = 1;
  }

  result = sub_1B01F76F0((a2 + 56), 0, *a3, a6);
  if (!result)
  {
    if (a5)
    {
      return 0;
    }

    result = sub_1B01F76F0((a2 + 72), 1, *a3, a6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B01EDC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (a5 != 4096 && a5 != 3072)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v19[0] = 0;
  v19[1] = 0;
  v9 = (a5 + 63) >> 6;
  MEMORY[0x1EEE9AC00]();
  v11 = (&v16 - v10);
  bzero(&v16 - v10, v10);
  *v11 = v9;
  v12 = *(a1 + 8);
  v18[0] = *a1;
  v18[1] = v12;
  v16 = 0u;
  v17 = 0u;
  if (sub_1B01E75CC(v18, 2u, &unk_1B01FF580, &v16, 0x20uLL, 0x20uLL) || sub_1B01EDEC0(v11, *(&v16 + 1), v16, *(&v17 + 1), v17))
  {
    goto LABEL_9;
  }

  if (&unk_1B01FF190 && qword_1F25E30B8)
  {
    if (sub_1B01E2610(v11, a2, *(a3 + 8), *a3, *(a4 + 8), *a4, v19) || sub_1B01DF37C(16, &unk_1B01FF190, v19))
    {
LABEL_9:
      result = 0xFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  LOBYTE(v16) = 0;
  v14 = sub_1B01E24D0(v11, a2, *(a3 + 8), *a3, *(a4 + 8), *a4, &v16);
  result = 0xFFFFFFFFLL;
  if (!v14 && (v16 & 1) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01EDE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = sub_1B01EDC6C(v13, v9[4], v11, v12, 4096);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1B01EDEC0(uint64_t result, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned __int8 *a5)
{
  v5 = a3;
  v6 = a2;
  if (a2)
  {
    while (!*v5)
    {
      if (v5 == -1)
      {
        __break(0x5513u);
        goto LABEL_11;
      }

      ++v5;
      if (!--v6)
      {
        v5 = &a3[a2];
        break;
      }
    }
  }

  if (v6 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_11:
    __break(0x5500u);
  }

  else
  {
    v7 = (v6 + 7) >> 3;
    if (v7 <= *result)
    {
      *result = v7;
      return sub_1B01E4CBC(result, a4, a5, v6, v5);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_1B01EDF34(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v9 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(&v31, 0x2F0uLL);
        v29[0] = a1;
        v29[1] = v9;
        v30[0] = &unk_1B01FFE70;
        v30[1] = 1215;
        if (!sub_1B01EE7D4(v29, v30, 3u) && !sub_1B01EE204(v30, 3u, &v32, v34, v37, v40))
        {
          v27 = a3;
          v25 = a6;
          v26 = a5;
          v15 = v35;
          v16 = &v33;
          v17 = 0;
          v18 = 2;
          v19 = v35;
          while (1)
          {
            v20 = &v34[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = sub_1B01EE450(&v37[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              v28 = 0uLL;
              if (v34 > 0xFFFFFFFFFFFFFF5FLL)
              {
LABEL_34:
                __break(0x5513u);
                return result;
              }

              v45[0] = 0;
              v45[1] = 0;
              v43 = 0;
              v44[0] = 0;
              v44[1] = 0;
              if (sub_1B01E74E0(v36, v45))
              {
                return 0xFFFFFFFFLL;
              }

LABEL_14:
              if (!sub_1B01E750C(v45, &v43) && v43 == 0x2000000000000011)
              {
                v50[0] = 0;
                v50[1] = 0;
                v48 = 0;
                v49[0] = 0;
                v49[1] = 0;
                v46 = 0u;
                v47 = 0u;
                if (!sub_1B01E74E0(v44, v50))
                {
                  do
                  {
                    v23 = sub_1B01E750C(v50, &v48);
                    if (v23)
                    {
                      if (v23 == 1)
                      {
                        goto LABEL_14;
                      }

                      return 0xFFFFFFFFLL;
                    }

                    if (v48 != 0x2000000000000010 || sub_1B01E7698(v49, 2u, &unk_1B01FF488, &v46, 0x20uLL, 0x20uLL))
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }

                  while (!sub_1B01E7974(&off_1E7A93B40, &v46));
                  v28 = v47;
                  result = sub_1B01E7974(&off_1E7A93C40, &v28);
                  if (!result)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  if (v37 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  *v27 = v38;
                  *a4 = v39;
                  if (v40 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  if (!v41)
                  {
                    return 0;
                  }

                  v24 = v42;
                  if (!v42)
                  {
                    return 0;
                  }

                  result = 0;
                  if (v26)
                  {
                    if (v25)
                    {
                      result = 0;
                      *v26 = v41;
                      *v25 = v24;
                    }
                  }

                  return result;
                }
              }

              return 0xFFFFFFFFLL;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_1B01EE204(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v7 = result;
  v8 = 0;
  v19 = ~result;
  v18 = ~a3;
  v16 = ~a4;
  v14 = ~a5;
  v9 = ~a6;
  v10 = a2;
  while (1)
  {
    v11 = 16 * v8;
    if (16 * v8 > v19 || 48 * v8 > v18)
    {
      break;
    }

    result = sub_1B01E75CC(v7 + 16 * v8, 3u, &unk_1B01FF340, a3 + 48 * v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (160 * v8 > v16)
    {
      break;
    }

    v12 = a4 + 160 * v8;
    result = sub_1B01E75CC(a3 + 48 * v8, 0xAu, &unk_1B01FF390, v12, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v14)
    {
      break;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (sub_1B01E7698((v12 + 96), 2u, &unk_1B01FF548, &v23, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (sub_1B01E7698(&v23, 2u, &unk_1B01FF510, &v20, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    result = sub_1B01E7974(&v20, &off_1E7A93A70);
    if (!result)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(&v21 + 1))
    {
      if (*(&v21 + 1) != 2 || *v21 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21 == -1)
      {
        break;
      }

      if (*(v21 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = sub_1B01E71E4(&v24, (a5 + 16 * v8), &v22);
    if (result || v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v9)
    {
      break;
    }

    result = sub_1B01EE8B0(v12, (a6 + 16 * v8));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v8 == v10)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1B01EE450(void *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_22;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  memset(v14, 0, sizeof(v14));
  v9 = 0;
  v10 = 0;
  v5 = *(a3 + 32);
  if (!v5 || !v5[2] || !*a3 || !*(a3 + 40) || *v5 > 0x30uLL || sub_1B01E7698(a2 + 2, 2u, &unk_1B01FF510, &v12, 0x20uLL, 0x20uLL))
  {
    goto LABEL_22;
  }

  if (!*(&v13 + 1) || (result = sub_1B01E7974(&v12, &xmmword_1E7A93AB0), (result & 1) != 0))
  {
LABEL_16:
    if (sub_1B01E7974(&v12, *(a3 + 40)) && !(*a3)(*a2, a2[1], v14, **(a3 + 32), a3) && !sub_1B01E71E4((a2 + 4), &v9, &v11) && !v11)
    {
      result = (*(a3 + 16))(*a1, a1[1], v9, v10, v14, **(a3 + 32), a3, 0);
      if (!result)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_22;
  }

  if (*(&v13 + 1) != 2 || *v13 != 5)
  {
LABEL_22:
    result = 0xFFFFFFFFLL;
LABEL_21:
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v13 != -1)
  {
    if (!*(v13 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1B01EE5F8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v22, 0x300uLL);
        v21[0] = a1;
        v21[1] = v10;
        if (a8(v21, v22, 2))
        {
          return 0xFFFFFFFFLL;
        }

        result = sub_1B01EE204(v22, 2u, v23, v24, v27, v28);
        if (result)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          v15 = 1;
          v16 = 1;
          while ((v15 & 1) != 0)
          {
            v17 = &v24[10 * v16];
            if (__n == *(v17 + 7) && !memcmp(__s1, *(v17 + 6), __n))
            {
              result = sub_1B01EE450(v27, &v23[3 * v16], a7);
              v15 = 0;
              v16 = 2;
              if (!result)
              {
                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v27 > 0xFFFFFFFFFFFFFFEFLL || (*a3 = v27[2], *a4 = v27[3], v28 > 0xFFFFFFFFFFFFFFEFLL))
          {
            __break(0x5513u);
          }

          else if (v29 && (v18 = v30) != 0)
          {
            result = 0;
            if (a5 && a6)
            {
              result = 0;
              *a5 = v29;
              *a6 = v18;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B01EE79C(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &unk_1B0200368;
  a2[1] = 1374;
  if (sub_1B01EE7D4(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01EE7D4(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v18 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = ~a2;
  v6 = 1;
  v7 = *a1;
  v8 = a1[1];
  while (1)
  {
    v18 = v7;
    v19 = v8;
    result = sub_1B01E6E2C(&v18, &v15);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (__CFADD__(v16, v17))
    {
      break;
    }

    v10 = v16 + v17;
    v11 = v16 + v17 - v7;
    v12 = !(v11 >> 17) && v8 >= v11;
    if (!v12 || v6 >= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 16 * v6)
    {
      break;
    }

    v14 = (a2 + 16 * v6);
    *v14 = v7;
    v14[1] = v11;
    if (v10 < v7)
    {
      break;
    }

    v12 = v8 >= v11;
    v8 -= v11;
    if (!v12)
    {
      goto LABEL_21;
    }

    ++v6;
    v7 = v10;
    if (!v8)
    {
      if (v6 == a3)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  __break(0x5513u);
LABEL_21:
  __break(0x5515u);
  return result;
}

uint64_t sub_1B01EE8B0(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  a2[1] = 0;
  if (!*(a1 + 152))
  {
    return 0;
  }

  if (sub_1B01E7424(a1 + 144, &v10, v11) || v10 != 0x2000000000000010)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 1;
  while (1)
  {
    v4 = sub_1B01E750C(v11, &v8);
    if (v4)
    {
      break;
    }

    if (v8 != 0x2000000000000010 || sub_1B01E7698(v9, 3u, &unk_1B01FF4C0, v6, 0x30uLL, 0x30uLL))
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 0;
    if (sub_1B01E7974(&off_1E7A93B50, v6))
    {
      memset(v12, 0, sizeof(v12));
      if (sub_1B01E6E2C(&v7, v12) || v12[0] != 0x2000000000000011)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 0;
      *a2 = v7;
    }
  }

  if (v4 != 1 || (v3 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01EEA1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v8 = sub_1B01EEA10();
    if (v8)
    {
      v8(2, "%s the refcon arg was NULL", "DERReturn _DERDecodeSysConfig3ParseAndPopulateMetadataSequence(DERDecodedInfo *__single, _Bool *__single, void *__single)");
    }

    return 6;
  }

  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if ((qword_1EB6CFFC0 & 0xFFFC) == 0)
  {
    v4 = sub_1B01E7698((result + 8), qword_1EB6CFFC0, &unk_1EB6CFF78, &v9, 0x30uLL, 0x30uLL);
    if (!v4)
    {
      v5 = sub_1B01EEB34(&v9);
      v6 = sub_1B01EEB34(&v11);
      v7 = sub_1B01EF604(v5, v10, DWORD2(v10), v6);
      sub_1B01F0040(a3, v7);
      sub_1B01EF7A4(v7);
      if (v5)
      {
        free(v5);
      }

      if (v6)
      {
        free(v6);
      }
    }

    return v4;
  }

  __break(0x5519u);
  return result;
}

char *sub_1B01EEB34(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = malloc(v2 + 1);
  if (v3)
  {
    v4 = &v3[v2 + 1];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 < v3 || v2 > v4 - v3;
  if (v5 || ((v6 = v3, memcpy(v3, v1, v2), v7 = &v6[v2], &v6[v2] >= v6) ? (v8 = v7 >= v4) : (v8 = 1), v8 || ((*v7 = 0, v7 + 1 >= v7) ? (v9 = (v7 + 1) > v4) : (v9 = 1), v9)))
  {
    __break(0x5519u);
    return 0;
  }

  return v6;
}

uint64_t sub_1B01EEBCC(uint64_t result, unsigned int a2)
{
  v24[0] = result;
  v24[1] = a2;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  if ((qword_1EB6D0090 & 0xFFFEu) < 6uLL)
  {
    if (sub_1B01E75CC(v24, qword_1EB6D0090, &unk_1EB6D0018, &v19, 0x50uLL, 0x50uLL))
    {
      return 0;
    }

    v2 = 0;
    if (*(&v19 + 1) == 4 && v19)
    {
      v2 = *v19;
    }

    v3 = 0;
    if (*(&v20 + 1) == 4 && v20)
    {
      v3 = *v20;
    }

    v4 = sub_1B01EFAC0(v2, v3);
    if (!v4)
    {
      v7 = sub_1B01EEA10();
      if (v7)
      {
        v7(2, "Unable to allocate sysconfig3vX object. Likely due to an unsupported magic: 0x%X or version: 0x%X", v2, v3);
      }

      return 0;
    }

    v5 = v4;
    v28 = 0uLL;
    *&v29 = 0;
    if (sub_1B01E6E2C(&v21, &v28))
    {
      v6 = sub_1B01EEA10();
      if (v6)
      {
        v6(2, "Unable to decode payload with error %d");
      }

LABEL_21:
      sub_1B01EFCCC(v5);
      return 0;
    }

    if (v28 != 0x2000000000000011)
    {
      v9 = sub_1B01EEA10();
      if (v9)
      {
        v9(2, "Tag was not the expected Payload tag %llX");
      }

      goto LABEL_21;
    }

    if (sub_1B01EEF54(&v21, sub_1B01EF01C, v5))
    {
      goto LABEL_17;
    }

    v28 = 0uLL;
    *&v29 = 0;
    if (sub_1B01E6E2C(&v22, &v28))
    {
      v10 = sub_1B01EEA10();
      if (v10)
      {
        v10(2, "Unable to decode metadata with error %d");
      }

      goto LABEL_21;
    }

    if (v28 != 0x2000000000000011)
    {
      v12 = sub_1B01EEA10();
      if (v12)
      {
        v12(2, "Tag was not the expected metadata tag %llX");
      }

      goto LABEL_21;
    }

    if (sub_1B01EEF54(&v22, sub_1B01EEA1C, v5))
    {
LABEL_17:
      v8 = sub_1B01EEA10();
      if (v8)
      {
        v8(2, "Decode sequence error: %d");
      }

      goto LABEL_21;
    }

    memset(v31, 0, sizeof(v31));
    result = sub_1B01E6E2C(&v23, v31);
    if (result)
    {
      v11 = sub_1B01EEA10();
      if (v11)
      {
        v11(2, "Unable to decode manifest with error %d");
      }

      goto LABEL_21;
    }

    if (v31[0] != 0x2000000000000010)
    {
      v16 = sub_1B01EEA10();
      if (v16)
      {
        v16(2, "Tag was not the expected manifest tag %llX");
      }

      goto LABEL_21;
    }

    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    if ((qword_1EB6D0010 & 0xFFFC) == 0)
    {
      v13 = sub_1B01E75CC(&v23, qword_1EB6D0010, &unk_1EB6CFFC8, &v28, 0x30uLL, 0x30uLL);
      if (v13)
      {
        v14 = v13;
        v15 = sub_1B01EEA10();
        if (v15)
        {
          v15(2, "Decode manifest sequence error: %d", v14);
        }
      }

      else
      {
        v27[0] = v28;
        v27[1] = DWORD2(v28);
        v26[0] = v29;
        v26[1] = DWORD2(v29);
        v25[0] = v30;
        v25[1] = DWORD2(v30);
        if (DWORD2(v29) | DWORD2(v28) | DWORD2(v30))
        {
          v17 = sub_1B01EFD44(v5);
          v18 = sub_1B01EF810(v17, v27, v26, v25);
          sub_1B01EFBF8(v5, v18);
          sub_1B01EFA50(v18);
        }
      }

      return v5;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1B01EEF54(uint64_t a1, uint64_t (*a2)(unint64_t *, char *, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7[0] = 0;
  v7[1] = 0;
  result = sub_1B01E6E2C(a1, &v6);
  if (!result)
  {
    if (v6 - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v10[0] = 0;
      v10[1] = 0;
      result = sub_1B01E74E0(v7, v10);
      if (!result)
      {
        memset(v9, 0, sizeof(v9));
        v8 = 0;
        do
        {
          if (v8)
          {
            return 0;
          }

          LODWORD(result) = sub_1B01E750C(v10, v9);
          if (result)
          {
            break;
          }

          LODWORD(result) = a2(v9, &v8, a3);
        }

        while (!result);
        if (result <= 1)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_1B01EF01C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 6;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if ((qword_1EB6CFF70 & 0xFFFEu) < 6uLL)
  {
    v4 = sub_1B01E7698((result + 8), qword_1EB6CFF70, &unk_1EB6CFEF8, &v10, 0x50uLL, 0x50uLL);
    if (!v4)
    {
      v9 = 0;
      v4 = sub_1B01E72E0(&v14, 0, &v9);
      if (!v4)
      {
        v5 = 0;
        if (*(&v10 + 1) == 4 && v10)
        {
          v5 = *v10;
        }

        v6 = sub_1B01EEB34(&v11);
        v7 = sub_1B01EEB34(&v13);
        v8 = sub_1B01EF154(v5, v6, v12, DWORD2(v12), v7, v9);
        sub_1B01EFF68(a3, v8);
        sub_1B01EF4E4(v8);
        if (v6)
        {
          free(v6);
        }

        if (v7)
        {
          free(v7);
        }
      }
    }

    return v4;
  }

  __break(0x5519u);
  return result;
}

char *sub_1B01EF154(int a1, const char *a2, const void *a3, size_t a4, const char *a5, int a6)
{
  if (!a1)
  {
    v12 = sub_1B01EEA10();
    if (v12)
    {
      v12(2, "%s key was invalid");
    }

    return 0;
  }

  if (a6)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = (a3 != 0) | (2 * (a5 != 0)) | v9;
  if (!v10)
  {
    v13 = sub_1B01EEA10();
    if (v13)
    {
      v13(2, "%s one of data, string, or deleted must be provided");
    }

    return 0;
  }

  if ((v10 & (v10 - 1)) != 0)
  {
    v11 = sub_1B01EEA10();
    if (v11)
    {
      v11(2, "%s data, string and deleted are mutually exclusive. Caller provided parameters [%s%s%s ]");
    }

    return 0;
  }

  if (a3 && !a4)
  {
    v17 = sub_1B01EEA10();
    if (v17)
    {
      v17(2, "%s data was 0 length");
    }

    return 0;
  }

  result = malloc(0x30uLL);
  v20 = result + 48;
  if (result)
  {
    v21 = result + 48;
  }

  else
  {
    v21 = 0;
  }

  if (v21 >= result && (v21 - result) >= 0x30)
  {
    v18 = result;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
    if (v20 <= v21)
    {
      *result = a1;
      if (!a2 || !*a2)
      {
        a2 = ".";
      }

      result = sub_1B01EF380(a2, 0x1000000uLL);
      *(v18 + 1) = result;
      if (a3)
      {
        result = sub_1B01EF43C(a3, a4);
        if (v22 < result || (v22 - result) < a4)
        {
          goto LABEL_35;
        }

        *(v18 + 3) = result;
        *(v18 + 8) = a4;
      }

      if (a5)
      {
        result = sub_1B01EF380(a5, 0x1000000uLL);
        *(v18 + 2) = result;
      }

      v18[4] = a6 << 31 >> 31;
      *(v18 + 5) = 0;
      if (v18 < v20)
      {
        return v18;
      }
    }
  }

LABEL_35:
  __break(0x5519u);
  return result;
}

char *sub_1B01EF380(const char *a1, size_t a2)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  v3 = strnlen(a1, a2);
  v4 = malloc(v3 + 1);
  strlcpy(v4, a1, v3 + 1);
  v5 = &v4[v3];
  if (v4 > &v4[v3])
  {
    goto LABEL_10;
  }

  v6 = &v4[v3 + 1];
  if (!v4)
  {
    v6 = 0;
  }

  v7 = v5 + 1 < v5 || (v5 + 1) > v6;
  if (v7 || *v5)
  {
LABEL_10:
    __break(0x5519u);
LABEL_11:
    v8 = sub_1B01EEA10();
    if (v8)
    {
      v8(2, "%s source string was NULL", "char *__single __terminated_by(0)_allocAndCopyString(const char *__single __terminated_by(0), size_t)");
    }

    return 0;
  }

  return v4;
}

void *sub_1B01EF43C(const void *a1, size_t __size)
{
  if (__size)
  {
    v3 = __size;
    result = malloc(__size);
    if (result)
    {
      v5 = result + v3;
    }

    else
    {
      v5 = 0;
    }

    if (v5 < result || v5 - result < v3)
    {
      __break(0x5519u);
      return result;
    }

    v7 = result;
    memcpy(result, a1, v3);
  }

  else
  {
    v8 = sub_1B01EEA10();
    if (v8)
    {
      v8(2, "%s data was zero length", "uint8_t *__indexable_allocAndCopyData(const uint8_t *__single __counted_by(dataLength), uint32_t)");
    }

    return 0;
  }

  return v7;
}

void sub_1B01EF4E4(void *a1)
{
  if (a1)
  {
    *a1 = 0;
    v2 = a1[1];
    if (v2)
    {
      free(v2);
      a1[1] = 0;
    }

    v3 = a1[3];
    if (v3)
    {
      free(v3);
      a1[3] = 0;
      *(a1 + 8) = 0;
    }

    v4 = a1[2];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

unsigned int *sub_1B01EF554(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

BOOL sub_1B01EF560(_BOOL8 result)
{
  if (result)
  {
    return *(result + 4) != 0;
  }

  return result;
}

uint64_t sub_1B01EF574(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_1B01EF580(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(a1 + 32);
      *a2 = v2;
      *(a2 + 8) = v3;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = sub_1B01EEA10();
    if (result)
    {
      (result)(2, "%s invalid arguments. Either entry or data was NULL", "_Bool sysConfig3PayloadEntryGetData(struct __SysConfig3PayloadEntry *__single, SysConfigData *__single)");
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B01EF5F8(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

char *sub_1B01EF604(const char *a1, unint64_t a2, size_t a3, const char *a4)
{
  if (!a1)
  {
    v9 = sub_1B01EEA10();
    if (v9)
    {
      v9(2, "%s key must be non-NULL");
    }

    return 0;
  }

  if (a2 && a4)
  {
    v8 = sub_1B01EEA10();
    if (v8)
    {
      v8(2, "%s data and string are mutually exclusive");
    }

    return 0;
  }

  if (!(a2 | a4))
  {
    v11 = sub_1B01EEA10();
    if (v11)
    {
      v11(2, "%s either data or string must be non-null");
    }

    return 0;
  }

  if (a2 && !a3)
  {
    v10 = sub_1B01EEA10();
    if (v10)
    {
      v10(2, "%s data cannot be length zero");
    }

    return 0;
  }

  result = malloc(0x28uLL);
  v14 = result + 40;
  if (result)
  {
    v15 = result + 40;
  }

  else
  {
    v15 = 0;
  }

  if (v15 >= result && (v15 - result) >= 0x28)
  {
    v12 = result;
    *(result + 4) = 0;
    *result = 0u;
    *(result + 1) = 0u;
    result = sub_1B01EF380(a1, 0x100uLL);
    if (v14 <= v15)
    {
      *v12 = result;
      if (a2)
      {
        result = sub_1B01EF43C(a2, a3);
        if (v16 < result || (v16 - result) < a3)
        {
          goto LABEL_30;
        }

        *(v12 + 2) = result;
        *(v12 + 6) = a3;
      }

      if (a4)
      {
        result = sub_1B01EF380(a4, 0x1000000uLL);
        *(v12 + 1) = result;
      }

      *(v12 + 4) = 0;
      if (v12 < v14)
      {
        return v12;
      }
    }
  }

LABEL_30:
  __break(0x5519u);
  return result;
}

void sub_1B01EF7A4(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      free(v3);
      a1[2] = 0;
      *(a1 + 6) = 0;
    }

    v4 = a1[1];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

char *sub_1B01EF810(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_24;
  }

  v8 = malloc(0x38uLL);
  v9 = v8 + 56;
  if (v8)
  {
    v10 = v8 + 56;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= v8 && (v10 - v8) >= 0x38)
  {
    v11 = v8;
    *(v8 + 6) = 0;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    if (v9 <= v10)
    {
      *v8 = a1;
      if (*a2 && a2[2])
      {
        if (v8 >= v9)
        {
          goto LABEL_23;
        }

        sub_1B01EF950(a2, (v8 + 8));
      }

      if (*a3 && a3[2])
      {
        if (v11 >= v9)
        {
          goto LABEL_23;
        }

        sub_1B01EF950(a3, (v11 + 24));
      }

      if (!*a4 || !a4[2])
      {
LABEL_22:
        if (v11 < v9)
        {
          return v11;
        }

        goto LABEL_23;
      }

      if (v11 < v9)
      {
        sub_1B01EF950(a4, (v11 + 40));
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  __break(0x5519u);
LABEL_24:
  v12 = sub_1B01EEA10();
  if (v12)
  {
    v12(2, "%s one of the hmacs were NULL. payload ptr: %p metdata ptr: %p full ptr: %p", "struct __SysConfig3ManifestEntry *__singleallocSysConfig3Manifest(SysConfig3Version, const SysConfigData *__single, const SysConfigData *__single, const SysConfigData *__single)", a2, a3, a4);
  }

  return 0;
}

char *sub_1B01EF950(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    if (*a1)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      result = sub_1B01EEA10();
      if (result)
      {
        return (result)(2, "%s sourceData was 0 length");
      }
    }

    else
    {
      result = malloc(*(a1 + 8));
      v7 = &result[v4];
      if (!result)
      {
        v7 = 0;
      }

      v8 = v7 >= result;
      v9 = v7 - result;
      v10 = !v8 || v9 < v4;
      if (v10 || (*a2 = result, *(a2 + 8) = v4, v11 = *(a1 + 8), v11 > v4))
      {
        __break(0x5519u);
      }

      else
      {
        v12 = *a1;

        return memcpy(result, v12, v11);
      }
    }
  }

  else
  {
    result = sub_1B01EEA10();
    if (result)
    {
      return (result)(2, "%s sourceData or destData was NULL");
    }
  }

  return result;
}

void sub_1B01EFA50(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
      a1[1] = 0;
      *(a1 + 4) = 0;
    }

    v3 = a1[3];
    if (v3)
    {
      free(v3);
      a1[3] = 0;
      *(a1 + 8) = 0;
    }

    v4 = a1[5];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

_OWORD *sub_1B01EFAC0(int a1, int a2)
{
  if (!a1)
  {
    v9 = sub_1B01EEA10();
    if (v9)
    {
      v9(2, "%s invalid magic provided 0x%08X");
    }

    return 0;
  }

  if ((a2 - 196609) >= 3)
  {
    v10 = sub_1B01EEA10();
    if (v10)
    {
      v10(2, "%s invalid version provided 0x%08X");
    }

    return 0;
  }

  result = malloc(0x30uLL);
  v5 = (result + 3);
  if (result)
  {
    v6 = (result + 3);
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= result && (v6 - result) >= 0x30)
  {
    v7 = result;
    result[1] = 0u;
    result[2] = 0u;
    *result = 0u;
    if (v5 <= v6)
    {
      *result = a1;
      *(result + 1) = a2;
      *(result + 2) = 0;
      *(result + 3) = 0;
      *(result + 1) = 0;
      v12 = 0;
      v11[0] = &v12;
      v11[1] = 1;
      result = sub_1B01EF810(a2, v11, v11, v11);
      if (v7 < v5)
      {
        v8 = result;
        sub_1B01EFBF8(v7, result);
        sub_1B01EFA50(v8);
        return v7;
      }
    }
  }

  __break(0x5519u);
  return result;
}

void (*sub_1B01EFBF8(uint64_t a1, int *a2))(uint64_t, const char *)
{
  if (!a1 || !a2)
  {
    result = sub_1B01EEA10();
    if (!result)
    {
      return result;
    }

    result(2, "%s sysconfig (0x%p) or manifest (0x%p) argument was null");
    return 0;
  }

  if (*(a1 + 4) == *a2)
  {
    sub_1B01EFA50(*(a1 + 24));
    *(a1 + 24) = 0;
    v4 = sub_1B01EF810(*a2, a2 + 2, a2 + 6, a2 + 10);
    *(a1 + 24) = v4;
    return (v4 != 0);
  }

  result = sub_1B01EEA10();
  if (result)
  {
    v6 = *(a1 + 4);
    v7 = *a2;
    result(2, "%s sysconfig version (0X%08X) did not match manifest version (0X%08X");
    return 0;
  }

  return result;
}

void sub_1B01EFCCC(void *a1)
{
  if (a1)
  {
    *a1 = 0;
    while (1)
    {
      v2 = a1[1];
      if (!v2)
      {
        break;
      }

      a1[1] = v2[5];
      sub_1B01EF4E4(v2);
    }

    while (1)
    {
      v3 = a1[2];
      if (!v3)
      {
        break;
      }

      a1[2] = v3[4];
      sub_1B01EF7A4(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      sub_1B01EFA50(v4);
    }

    free(a1);
  }
}

uint64_t sub_1B01EFD44(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t sub_1B01EFD50(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void *sub_1B01EFD5C(uint64_t a1, int a2)
{
  if (!a1)
  {
    v10 = sub_1B01EEA10();
    if (v10)
    {
      v10(2, "%s invalid argument. sysconfig cannot be NULL", "_Bool _sysConfig3DeletePayloadEntryForKey(struct __SysConfig3 *__single, uint32_t)");
    }

    return (a1 != 0);
  }

  v4 = (a1 + 8);
  result = *(a1 + 8);
  if (!result)
  {
    return (a1 != 0);
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    if (*result != a2)
    {
      v7 = (result + 6);
      v9 = (result + 5);
      v8 = result;
      v6 = result;
      goto LABEL_11;
    }

    if (!v6)
    {
      *v4 = result[5];
      sub_1B01EF4E4(result);
      v9 = (a1 + 8);
      goto LABEL_11;
    }

    if ((v6 + 6) > v7 || v8 > v6)
    {
      break;
    }

    v6[5] = result[5];
    v9 = (v6 + 5);
    sub_1B01EF4E4(result);
LABEL_11:
    result = *v9;
    if (!*v9)
    {
      return (a1 != 0);
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1B01EFE58(uint64_t a1, char *__s2)
{
  if (a1)
  {
    v2 = __s2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v2)
  {
    v12 = sub_1B01EEA10();
    if (v12)
    {
      v12(2, "%s invalid argument. sysconfig and key cannot be NULL", "_Bool _sysConfig3DeleteMetadataEntryForKey(struct __SysConfig3 *__single, const char *__single __terminated_by(0))");
    }

    return v3;
  }

  v4 = (a1 + 16);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v3;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    result = strncmp(*v5, __s2, 0x100uLL);
    if (!result)
    {
      break;
    }

    v8 = v5 + 40;
    v11 = (v5 + 32);
    v9 = v5;
    v7 = v5;
LABEL_17:
    v5 = *v11;
    if (!*v11)
    {
      return v3;
    }
  }

  if (!v7)
  {
    *v4 = *(v5 + 32);
    sub_1B01EF7A4(v5);
    v11 = v4;
    goto LABEL_17;
  }

  if (v7 + 40 <= v8 && v9 <= v7)
  {
    *(v7 + 32) = *(v5 + 32);
    v11 = (v7 + 32);
    sub_1B01EF7A4(v5);
    goto LABEL_17;
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1B01EFF68(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    result = sub_1B01EFD5C(a1, *a2);
    if (result)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *(v5 + 40);
        }

        while (v5);
        v7 = sub_1B01EF154(*a2, *(a2 + 8), *(a2 + 24), *(a2 + 32), *(a2 + 16), *(a2 + 4) != 0);
        *(v6 + 40) = v7;
      }

      else
      {
        v7 = sub_1B01EF154(*a2, *(a2 + 8), *(a2 + 24), *(a2 + 32), *(a2 + 16), *(a2 + 4) != 0);
        *(a1 + 8) = v7;
      }

      *(v7 + 5) = 0;
      return 1;
    }
  }

  else
  {
    result = sub_1B01EEA10();
    if (result)
    {
      (result)(2, "%s invalid argument. sysconfig and etnry cannot be NULL", "_Bool _sysConfig3AddPayloadEntry(struct __SysConfig3 *__single, struct __SysConfig3PayloadEntry *__single)");
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B01F0040(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    result = sub_1B01EFE58(a1, *a2);
    if (result)
    {
      v5 = *(a1 + 16);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *(v5 + 32);
        }

        while (v5);
        v7 = sub_1B01EF604(*a2, *(a2 + 16), *(a2 + 24), *(a2 + 8));
        *(v6 + 32) = v7;
      }

      else
      {
        v7 = sub_1B01EF604(*a2, *(a2 + 16), *(a2 + 24), *(a2 + 8));
        *(a1 + 16) = v7;
      }

      *(v7 + 4) = 0;
      return 1;
    }
  }

  else
  {
    result = sub_1B01EEA10();
    if (result)
    {
      (result)(2, "%s invalid argument. sysconfig and entry cannot be NULL", "_Bool _sysConfig3AddMetadataEntry(struct __SysConfig3 *__single, struct __SysConfig3MetadataEntry *__single)");
      return 0;
    }
  }

  return result;
}

void sub_1B01F017C(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "request for unknown screen param %d", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B01F01FC()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = qword_1ED446D78;
  _os_log_fault_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "invalid product id '%@'", &v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1B01F02AC()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __error();
  v1 = strerror(*v0);
  v3 = 136315138;
  v4 = v1;
  _os_log_error_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "sysctl hw.cpusubfamily failed: %s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B01F034C(const void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 909, @"failed to create CFNumber for mode", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "failed to create CFNumber for mode", v9, v10, v11, v12, 0);
  }

  CFRelease(a1);
}

void sub_1B01F03CC(void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 905, @"failed to create options", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "failed to create options", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F0448(unsigned int *a1, uint64_t a2, const void *a3)
{
  v6 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  v13 = qword_1E7A92830[*a1];
  _MGLog(v6, 954, @"%@ does not return a BOOL, actually returns a %s", v7, v8, v9, v10, v11, a2);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12 = qword_1E7A92830[*a1];
    *buf = 138412546;
    v15 = a2;
    v16 = 2080;
    v17 = v12;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ does not return a BOOL, actually returns a %s", buf, 0x16u);
    if (!a3)
    {
LABEL_3:
      abort();
    }
  }

  else if (!a3)
  {
    goto LABEL_3;
  }

  CFRelease(a3);
  abort();
}

void sub_1B01F0514(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  v7 = qword_1E7A92830[a1];
  _MGLog(v6, 978, @"%@ value %@ can't be converted to %s", v8, v9, v10, v11, v12, a2);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v14 = a2;
    v15 = 2112;
    v16 = a3;
    v17 = 2080;
    v18 = v7;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ value %@ can't be converted to %s", buf, 0x20u);
  }

  abort();
}

void sub_1B01F05D0(const __CFData *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  Length = CFDataGetLength(a1);
  _os_log_fault_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "TMAC address has unexpected length %zu", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B01F0654(void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 4946, @"no Postponement status available", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "no Postponement status available", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F06D0(void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 4940, @"no sim status available", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "no sim status available", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F074C()
{
  v0 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v0, 4934, @"No status in postponement info", v1, v2, v3, v4, v5, v11);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v6, "No status in postponement info", v7, v8, v9, v10, 0);
  }
}

void sub_1B01F07B8(void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 4930, @"_CTServerConnectionCopyPostponementStatus returned NULL", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "_CTServerConnectionCopyPostponementStatus returned NULL", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F085C(const __CFData *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  Length = CFDataGetLength(a1);
  _MGLog(v4, 9439, @"DeviceDBVDependentVSHCompensationTraits: invalid DT entry size: %d", v6, v7, v8, v9, v10, Length);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = CFDataGetLength(a1);
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "DeviceDBVDependentVSHCompensationTraits: invalid DT entry size: %d", buf, 8u);
  }

  *a2 = 0;
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1B01F0944(void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 9443, @"DeviceDBVDependentVSHCompensationTraits: failed to create dictionary", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "DeviceDBVDependentVSHCompensationTraits: failed to create dictionary", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F09C0(void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 9438, @"DeviceDBVDependentVSHCompensationTraits: failed to access device tree", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "DeviceDBVDependentVSHCompensationTraits: failed to access device tree", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F0A3C(void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 4996, @"No status in postponement info for copyBasebandStatusKey", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "No status in postponement info for copyBasebandStatusKey", v9, v10, v11, v12, 0);
  }

  *a1 = @"BBNotAnswering";
}

void sub_1B01F0AD4(void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 6372, @"Could not create string", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "Could not create string", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F0B50(void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 6361, @"Could not copy NVRAMDictionary", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "Could not copy NVRAMDictionary", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F0C28(const void *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 3703, @"Could not get list of power sources", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "Could not get list of power sources", v9, v10, v11, v12, 0);
  }

  CFRelease(a1);
}

void sub_1B01F0CA8(_BYTE *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 3700, @"Could not get power source info", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "Could not get power source info", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F0D24()
{
  v0 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v0, 9221, @"country code is unpexpected type", v1, v2, v3, v4, v5, v11);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v6, "country code is unpexpected type", v7, v8, v9, v10, 0);
  }
}

void sub_1B01F0D90()
{
  v0 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v0, 9223, @"failed to copy country code", v1, v2, v3, v4, v5, v11);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v6, "failed to copy country code", v7, v8, v9, v10, 0);
  }
}

void sub_1B01F0DFC()
{
  v0 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v0, 9220, @"country code is NULL", v1, v2, v3, v4, v5, v11);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v6, "country code is NULL", v7, v8, v9, v10, 0);
  }
}

void sub_1B01F0E68(_BYTE *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 9218, @"locale is NULL", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "locale is NULL", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F0EE4(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v4, 7552, @"Unexpected size %lu for %@", v5, v6, v7, v8, v9, a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v12 = a1;
    v13 = 2112;
    v14 = a2;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unexpected size %lu for %@", buf, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B01F0FB4(_BYTE *a1)
{
  v2 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
  _MGLog(v2, 7539, @"outRect is NULL", v3, v4, v5, v6, v7, v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v8, "outRect is NULL", v9, v10, v11, v12, 0);
  }

  *a1 = 0;
}

void sub_1B01F1030()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getNFSecureElementClass(void)_block_invoke") description:{@"MGSecureElement.m", 20, @"Unable to find class %s", "NFSecureElement"}];
  __break(1u);
}

void sub_1B01F1098(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *NearFieldLibrary(void)") description:{@"MGSecureElement.m", 18, @"%s", *a1}];
  __break(1u);
}

void sub_1B01F1100()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getNFHardwareManagerClass(void)_block_invoke") description:{@"MGSecureElement.m", 21, @"Unable to find class %s", "NFHardwareManager"}];
  __break(1u);
}

void sub_1B01F1168()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getBKDeviceManagerClass(void)_block_invoke") description:{@"MGSecureElement.m", 31, @"Unable to find class %s", "BKDeviceManager"}];
  __break(1u);
}

void sub_1B01F11D0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *BiometricKitLibrary(void)") description:{@"MGSecureElement.m", 30, @"%s", *a1}];
  __break(1u);
}

void sub_1B01F1260(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unexpected type returned for key %@.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B01F12E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B01C3928(&dword_1B0190000, MEMORY[0x1E69E9C10], a3, "%s returning previously initialized sysconfig dictionary", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B01F135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B01C3928(&dword_1B0190000, MEMORY[0x1E69E9C10], a3, "%s creating new sysconfig dictionary", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B01F13D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B01C3928(&dword_1B0190000, MEMORY[0x1E69E9C10], a3, "%s not caching sysconfig dictionary because device is in RestoreOS", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1454(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4[0] = 67109634;
  v4[1] = a3;
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Appending syscfg key (0x%X): %@ from %@", v4, 0x1Cu);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1574(_BYTE *a1)
{
  v2 = sub_1B01C3950();
  v3 = sub_1B01C3944(v2);
  _MGLog(v3, 1828, @"invalid entitlement length", v4, v5, v6, v7, v8, v14);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v9, "invalid entitlement length", v10, v11, v12, v13, 0);
  }

  *a1 = 0;
}

void sub_1B01F15F4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = sub_1B01C3950();
  v3 = sub_1B01C3944(v2);
  _MGLog(v3, 1796, @"failed to locate AP ticket: %ld", v4, v5, v6, v7, v8, a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a1;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to locate AP ticket: %ld", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B01F16B8()
{
  dlerror();
  v0 = abort_report_np();
  return sub_1B01F16DC(v0);
}

void sub_1B01F16DC(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = sub_1B01C3950();
  v3 = sub_1B01C3944(v2);
  _MGLog(v3, 1805, @"failed to read AP ticket: %d", v4, v5, v6, v7, v8, a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = a1;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to read AP ticket: %d", buf, 8u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B01F17A0()
{
  v0 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c", 47);
  if (v0)
  {
    v6 = v0 + 1;
  }

  else
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/IORegistryUtilities/sysconfig.c";
  }

  _MGLog(v6, 1802, @"failed to create path URL", v1, v2, v3, v4, v5, v12);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v7, "failed to create path URL", v8, v9, v10, v11, 0);
  }
}

void sub_1B01F1824(_BYTE *a1)
{
  v2 = sub_1B01C3950();
  v3 = sub_1B01C3944(v2);
  _MGLog(v3, 1845, @"failed to decode APTicket", v4, v5, v6, v7, v8, v14);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v9, "failed to decode APTicket", v10, v11, v12, v13, 0);
  }

  *a1 = 0;
}

void sub_1B01F18A4(_BYTE *a1)
{
  v2 = sub_1B01C3950();
  v3 = sub_1B01C3944(v2);
  _MGLog(v3, 1841, @"failed to obtain APTicket", v4, v5, v6, v7, v8, v14);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v9, "failed to obtain APTicket", v10, v11, v12, v13, 0);
  }

  *a1 = 0;
}

void sub_1B01F1924(_BYTE *a1)
{
  v2 = sub_1B01C3950();
  v3 = sub_1B01C3944(v2);
  _MGLog(v3, 1829, @"failed to get entitlement string", v4, v5, v6, v7, v8, v14);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v9, "failed to get entitlement string", v10, v11, v12, v13, 0);
  }

  *a1 = 0;
}

void sub_1B01F19A4(_BYTE *a1)
{
  v2 = sub_1B01C3950();
  v3 = sub_1B01C3944(v2);
  _MGLog(v3, 1827, @"entitlement is NULL", v4, v5, v6, v7, v8, v14);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    sub_1B01BB3D4(&dword_1B0190000, MEMORY[0x1E69E9C10], v9, "entitlement is NULL", v10, v11, v12, v13, 0);
  }

  *a1 = 0;
}

void sub_1B01F1A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B01C3928(&dword_1B0190000, MEMORY[0x1E69E9C10], a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1AAC(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Last busy service of unexpected type %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1B2C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Busy service: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1BAC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1C2C()
{
  sub_1B01D8114();
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B01F1C68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1CE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1D68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1DE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1E68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1EE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1F68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F1FE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2068()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F20E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2168()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F21E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2268()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F22E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2368()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F23E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2468()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F24E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2568()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F25E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2668()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F26E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2768()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F27E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2868()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F28E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2968()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F29E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2A68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2AE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2B68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2BE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2C68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2CE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2D68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2DE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2E68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2EE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2F68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F2FE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3068()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F30E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3168()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F31E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3268()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F32E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3368()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F33E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3468()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F34E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3568()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F35E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3668()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F36E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3768()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F37E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3868()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F38E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3968()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F39E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3A68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3AE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3B68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3BE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3C68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3CE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3D68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3DE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3E68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3EE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3F68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F3FE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4068()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F40E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4168()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F41E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4268()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F42E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4368()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F43E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4468()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F44E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4568()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F45E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4668()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F46E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4768()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F47E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4868()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F48E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4968()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F49E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4A68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4AE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4B68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4BE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4C68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4CE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4D68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4DE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4E68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4EE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4F68()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F4FE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F5068()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F50E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B01F5168()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B01D8108();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B01F5240(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  sub_1B01DA938();
  sub_1B01DBC50(off_1EB6CFEC8, v1, v2, v3);
  return 0;
}

uint64_t sub_1B01F527C(char *a1, size_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = off_1EB6CFED0;
  if (!off_1EB6CFED0)
  {
    v6 = sub_1B01E6D04();
    off_1EB6CFED0 = v6;
  }

  sub_1B01DBC50(v6, a2, a1, a3);
  return 0;
}

uint64_t sub_1B01F52E8(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  sub_1B01DA938();
  sub_1B01DBC50(off_1EB6CFED8, v1, v2, v3);
  return 0;
}

uint64_t sub_1B01F5324()
{
  sub_1B01DA944(*MEMORY[0x1E69E9840]);
  if (v3 == 20)
  {
    v4 = sub_1B01DA968(v1, "\x06\x05+\x0E\x03\x02\x1A", v2);
    if (v4)
    {
      v5 = v0;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == -13)
    {
      v0 = 2;
    }

    else
    {
      v0 = v5;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t sub_1B01F53A0()
{
  sub_1B01DA944(*MEMORY[0x1E69E9840]);
  if (v3 == 32)
  {
    if (v4)
    {
      v5 = v0;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == -13)
    {
      v0 = 2;
    }

    else
    {
      v0 = v5;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t sub_1B01F541C()
{
  sub_1B01DA944(*MEMORY[0x1E69E9840]);
  if (v3 == 48)
  {
    if (v4)
    {
      v5 = v0;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == -13)
    {
      v0 = 2;
    }

    else
    {
      v0 = v5;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t sub_1B01F5498(const __CFAllocator *a1, CFTypeRef cf, CFTypeRef *a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = 1;
  v21 = 1;
  if (cf && a3)
  {
    v7 = CFRetain(cf);
    v8 = CFRetain(cf);
    v9 = 0;
    Mutable = 0;
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = sub_1B01F5814(v7, &v21);
      if (v13)
      {
        v4 = v13;
        goto LABEL_25;
      }

      if (!v21)
      {
        goto LABEL_21;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v11 = CFStringCreateWithFormat(a1, 0, @"~%d", v12);
      if (!v11)
      {
        goto LABEL_38;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      Mutable = CFStringCreateMutable(a1, 0);
      if (!Mutable)
      {
        break;
      }

      v9 = CFURLCopyFileSystemPath(cf, kCFURLPOSIXPathStyle);
      if (!v9)
      {
        goto LABEL_38;
      }

      CFStringAppend(Mutable, v9);
      CFStringAppend(Mutable, v11);
      if (v8)
      {
        CFRelease(v8);
      }

      v8 = CFRetain(v7);
      CFRelease(v7);
      v14 = CFURLCreateWithFileSystemPath(a1, Mutable, kCFURLPOSIXPathStyle, 0);
      if (!v14)
      {
        v4 = 2;
LABEL_28:
        CFRelease(v11);
        goto LABEL_29;
      }

      v7 = v14;
      if (v21)
      {
        v15 = v12 > 0x1E;
        v12 = (v12 + 1);
        if (!v15)
        {
          continue;
        }
      }

LABEL_21:
      if (a4)
      {
        v16 = v7;
      }

      else
      {
        v16 = v8;
      }

      v4 = 0;
      *a3 = CFRetain(v16);
      goto LABEL_25;
    }

    v9 = 0;
LABEL_38:
    v4 = 2;
LABEL_25:
    if (v7)
    {
      CFRelease(v7);
    }

    if (v11)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1B01F56BC(const __CFAllocator *a1, void *a2, const __CFURL *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = sub_1B01DAF14(a3, "rb");
  if (!v5)
  {
    v15 = 4;
    goto LABEL_9;
  }

  v6 = v5;
  bzero(&v20, 0x90uLL);
  v7 = fileno(v6);
  fstat(v7, &v20);
  st_size = v20.st_size;
  if (v20.st_size)
  {
    v9 = *MEMORY[0x1E695E488];
    v10 = MEMORY[0x1B2720660](*MEMORY[0x1E695E488], v20.st_size, 3826552447, 0);
    if (!v10)
    {
      goto LABEL_10;
    }

    if (fread(v10, 1uLL, st_size, v6) != st_size)
    {
      v15 = 4;
      goto LABEL_8;
    }

    v11 = sub_1B01DAB4C();
    v13 = CFDataCreateWithBytesNoCopy(v11, v12, st_size, v9);
    if (v13)
    {
      v14 = v13;
      *a2 = CFRetain(v13);
      CFRelease(v14);
      v15 = 0;
    }

    else
    {
LABEL_10:
      v15 = 2;
    }
  }

  else
  {
    bytes = 0;
    v16 = CFDataCreate(a1, &bytes, 0);
    v15 = 0;
    *a2 = v16;
  }

LABEL_8:
  fclose(v6);
LABEL_9:
  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t sub_1B01F5814(const __CFURL *a1, BOOL *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a1 && a2)
  {
    bzero(&v8, 0x90uLL);
    bzero(buffer, 0x400uLL);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = stat(buffer, &v8);
      result = 0;
      *a2 = v5 == 0;
    }

    else
    {
      result = 3;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01F58D8(const __CFAllocator *a1, void *a2, const __CFURL *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(&context, 0, sizeof(context));
  bzero(&v22, 0x90uLL);
  v6 = sub_1B01DAF14(a3, "rb");
  v7 = v6;
  if (v6)
  {
    v8 = fileno(v6);
    fstat(v8, &v22);
    st_size = v22.st_size;
    if (v22.st_size < 0)
    {
LABEL_5:
      v12 = 0;
      v13 = 0;
LABEL_6:
      v14 = 0;
LABEL_7:
      v15 = 2;
      goto LABEL_13;
    }

    if (v22.st_size)
    {
      v10 = fileno(v7);
      v11 = mmap(0, st_size, 1, 16386, v10, 0);
      if ((v11 + 1) < 2)
      {
        goto LABEL_5;
      }

      v12 = v11;
      context.version = 0;
      context.info = st_size;
      context.deallocate = sub_1B01DAFE0;
      v13 = CFAllocatorCreate(a1, &context);
      if (!v13)
      {
        goto LABEL_6;
      }

      v17 = CFDataCreateWithBytesNoCopy(a1, v12, st_size, v13);
      v14 = v17;
      if (!v17)
      {
        goto LABEL_7;
      }

      v16 = CFRetain(v17);
      v15 = 0;
      v12 = 0;
    }

    else
    {
      bytes = 0;
      v16 = CFDataCreate(a1, &bytes, 0);
      v15 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    *a2 = v16;
  }

  else
  {
    st_size = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 4;
  }

LABEL_13:
  sub_1B01DAB2C(v14);
  sub_1B01DAB2C(v13);
  if (v12)
  {
    munmap(v12, st_size);
  }

  if (v7)
  {
    fclose(v7);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1B01F5AB4(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t))
{
  v4 = (a1 + 63) >> 6;
  if (!(*a3)(a3, 8 * v4, a2))
  {
    sub_1B01E1278();
    *(a2 + 8 * v4 - 8) &= v5;
  }
}

uint64_t sub_1B01F5B1C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = sub_1B01E6C58(&a1[5 * *a1 + 4]);
  if ((sub_1B01E0A24(v4, a2, v5) & 0x80000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_1B01E1274(*a1, a2))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1B01F5B8C(uint64_t a1, unint64_t *a2, int a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  if (!a4)
  {
    return 4294967289;
  }

  v11 = *a2;
  if (a4 == 1 && !*a5)
  {
    return 4294967136;
  }

  switch(a3)
  {
    case 4:
      v12 = 4294967124;
      if (a4 != (sub_1B01DFC08(a2) + 7) >> 3)
      {
        return v12;
      }

LABEL_22:
      v15 = *(a1 + 16);
      v16 = (*(a1 + 24))(a1, v11);
      if (a3 == 4)
      {
        v17 = a5;
      }

      else
      {
        v17 = a5 + 1;
      }

      v18 = sub_1B01DFC08(a2);
      v19 = sub_1B01E1298(v11, a6, (v18 + 7) >> 3, v17);
      if (!v19)
      {
        if (sub_1B01E0A24(v11, a6, a2 + 3) != -1)
        {
LABEL_38:
          *(a1 + 16) = v15;
          return v12;
        }

        if ((a3 - 3) > 1)
        {
          v22 = &a5[(sub_1B01DFC08(a2) + 7) >> 3];
          v23 = &a6[*a2];
          v24 = sub_1B01DFC08(a2);
          v19 = sub_1B01E1298(v11, v23, (v24 + 7) >> 3, v22 + 1);
          if (!v19)
          {
            if (a3 == 2)
            {
              v27 = a6[*a2];
              sub_1B01E277C();
              if (!v14)
              {
                v12 = 4294967125;
                goto LABEL_38;
              }
            }

            goto LABEL_37;
          }
        }

        else
        {
          v19 = sub_1B01DD958(a1, a2, a6, a6);
          if (!v19)
          {
            sub_1B01DB970(a2, v16, &a6[*a2]);
            v20 = &a6[*a2];
            if (a3 == 4)
            {
              v21 = sub_1B01E0A24(v11, v16, v20) >> 31;
            }

            else
            {
              v25 = *v20;
              sub_1B01E277C();
              if (v14)
              {
                LOBYTE(v21) = 0;
              }

              else
              {
                LOBYTE(v21) = 1;
              }
            }

            sub_1B01E0764(v11, v21, v20, v16, v20);
LABEL_37:
            v12 = 0;
            goto LABEL_38;
          }
        }
      }

      v12 = v19;
      goto LABEL_38;
    case 1:
      sub_1B01DFC08(a2);
      sub_1B01E2790();
      if (v14)
      {
        v12 = 4294967126;
        if (*a5 == 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        return 4294967126;
      }

      break;
    case 2:
      sub_1B01DFC08(a2);
      sub_1B01E2790();
      if (v14)
      {
        v13 = *a5 - 8;
        v12 = 4294967125;
LABEL_17:
        if (v13 < 0xFFFFFFFE)
        {
          return v12;
        }

        goto LABEL_22;
      }

      return 4294967125;
    case 3:
      if (sub_1B01E1AB0(a2) != a4)
      {
        return 4294967135;
      }

      v13 = *a5 - 4;
      v12 = 4294967135;
      goto LABEL_17;
    default:
      return 4294967289;
  }

  return v12;
}

uint64_t sub_1B01F5E0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = sub_1B01E6C58(a2);
  if (sub_1B01E0A24(v8, v9, a4) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *a2;
  v11 = a4 + 8 * *a2;
  v12 = sub_1B01E6C58(a2);
  if (sub_1B01E0A24(v10, v12, v11) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = sub_1B01DEBF0(a1, a2);
  if (!result)
  {
    if (sub_1B01E03EC(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 4294967289;
    }
  }

  return result;
}

uint64_t sub_1B01F5EE0(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  sub_1B01EBD54();
  if (sub_1B01E74E0((v2 + 16), (v1 + 64)))
  {
    sub_1B01E94F4(3, "%s: can't parse FDR Trust Object trusted sequence");
  }

  else if (sub_1B01E750C((v1 + 64), v7))
  {
    sub_1B01E94F4(3, "%s: can't parse FDR Trust Object trusted");
  }

  else if (v7[1] && (sub_1B01EBDE8(), v4))
  {
    sub_1B01EBD44(v3);
    if (v4)
    {
      return 0;
    }

    sub_1B01EBD00(v5);
    sub_1B01E94F4(3, "%s: malformed FDR Trust Object trusted, expected tag %c%c%c%c found tag %c%c%c%c", "AMFDRDecodeIterateTrustObjectTrustedBegin");
  }

  else
  {
    sub_1B01E94F4(3, "%s: malformed FDR Trust Object trusted, invalid trusted tag length");
  }

  return 0x400000;
}

uint64_t sub_1B01F5FCC(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  sub_1B01EBD54();
  if (sub_1B01E74E0((v2 + 112), (v1 + 128)))
  {
    sub_1B01E94F4(3, "%s: can't parse FDR Trust Object trusted key sequence");
  }

  else
  {
    v4 = sub_1B01E750C((v1 + 128), v8);
    if (v4)
    {
      if (v4 == 1)
      {
        return 0x40000000000000;
      }

      sub_1B01E94F4(3, "%s: can't parse FDR Trust Object trusted key: %d");
    }

    else if (v8[1] && (sub_1B01EBDE8(), v6))
    {
      sub_1B01EBD44(v5);
      if (v6)
      {
        return 0;
      }

      sub_1B01EBD00(v7);
      sub_1B01E94F4(3, "%s: malformed FDR Trust Object trusted key, expected tag %c%c%c%c found tag %c%c%c%c", "AMFDRDecodeIterateTrustObjectTrustedKeyBegin");
    }

    else
    {
      sub_1B01E94F4(3, "%s: malformed FDR Trust Object trusted key, invalid trusted key tag length");
    }
  }

  return 0x400000;
}

uint64_t sub_1B01F60C8(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  sub_1B01EBD54();
  if (sub_1B01E74E0((v2 + 48), (v1 + 80)))
  {
    sub_1B01E94F4(3, "%s: can't parse FDR Trust Object Revoked sequence");
  }

  else if (sub_1B01E750C((v1 + 80), v7))
  {
    sub_1B01E94F4(3, "%s: can't parse FDR Trust Object Revoked");
  }

  else if (v7[1] && (sub_1B01EBDE8(), v4))
  {
    sub_1B01EBD44(v3);
    if (v4)
    {
      return 0;
    }

    sub_1B01EBD00(v5);
    sub_1B01E94F4(3, "%s: malformed FDR Trust Object Revoked, expected tag %c%c%c%c found tag %c%c%c%c", "AMFDRDecodeIterateTrustObjectRevokedBegin");
  }

  else
  {
    sub_1B01E94F4(3, "%s: malformed FDR Trust Object Revoked, invalid trusted tag length");
  }

  return 0x400000;
}

uint64_t sub_1B01F61B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    sub_1B01EBDAC();
    v6 = sub_1B01E750C((v5 + 80), &v8);
    if (v6)
    {
      if (v6 == 1)
      {
        sub_1B01EBDD0();
        return sub_1B01EBD34(v7);
      }
    }

    else
    {
      v7 = v9;
      if (v9 == 32)
      {
        return sub_1B01EBD34(v7);
      }
    }

    return 0x400000;
  }

  return result;
}

uint64_t sub_1B01F6238(void *a1, uint64_t a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2 && a3)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    v6[0] = a2;
    v6[1] = a3;
    if (sub_1B01E7424(v6, &v5, a1))
    {
      sub_1B01E94F4(3, "%s: can't parse FDR Producer ID sequence", "AMFDRDecodeIterateProducerIDBegin");
      return 0x80000000000;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B01F62B8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  __n_4 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v3 = 1;
  if (!a1 || !a2 || !a3)
  {
    return v3;
  }

  sub_1B01E94F4(7, "%s: AMFDRDecodeCheckProducerIDRevocation", "AMFDRDecodeCheckProducerIDRevocation");
  v7 = sub_1B01F6238(&__n_4, a2, a3);
  if (v7)
  {
    v3 = v7;
    sub_1B01E94F4(3, "%s: AMFDRDecodeIterateProducerIDBegin failed with error 0x%016llX");
    return v3;
  }

  v15 = sub_1B01EBE00(0, v8, v9, v10, v11, v12, v13, v14, v27, v29, v31, __s2, v34, __n_4, v36, v37, v38, v39);
  if (v15)
  {
    if (v15 != 1)
    {
      v3 = 0x80000000000;
      sub_1B01E94F4(3, "%s: AMFDRDecodeIterateProducerIDNext(first) failed with error 0x%016llX");
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
    v17 = sub_1B01F60C8(a1);
    if (v17)
    {
      v3 = v17;
      sub_1B01E94F4(3, "%s: AMFDRDecodeIterateTrustObjectRevokedBegin failed");
      return v3;
    }

    while (1)
    {
      v18 = sub_1B01F61B4(a1, &__s2, &v34 + 4);
      if (v18)
      {
        v3 = v18;
        sub_1B01E94F4(3, "%s: AMFDRDecodeIterateTrustObjectRevokedNext failed");
        return v3;
      }

      if (!__s2)
      {
        break;
      }

      if (!memcmp(v16, __s2, HIDWORD(v34)))
      {
        sub_1B01E94F4(3, "%s: FDR Trust Object revoked certificate found", "AMFDRDecodeCheckProducerIDRevocation");
        return 0x10000000000;
      }
    }

    v25 = sub_1B01EBE00(0, 0, v19, v20, v21, v22, v23, v24, v28, v30, v32, 0, v34, __n_4, v36, v37, v38, v39);
    if (v25)
    {
      if (v25 != 1)
      {
        v3 = 0x80000000000;
        sub_1B01E94F4(3, "%s: AMFDRDecodeIterateProducerIDNext(loop) failed with error 0x%016llX");
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

uint64_t sub_1B01F644C()
{
  result = sub_1B01EBDF4();
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
    if (sub_1B01EBEFC(v0 + 32, v0, v0 + 48))
    {
      sub_1B01E94F4(3, "%s: failed to decode public key: %d");
    }

    else
    {
      if (!sub_1B01E7974(v0 + 48, &xmmword_1E7A93AB0))
      {
        sub_1B01E94F4(3, "%s: public key OID is not EC", "AMFDRDecodePublicKey");
        return 64;
      }

      if (!sub_1B01E6E2C(v0 + 64, &v4))
      {
        result = 0;
        *(v0 + 16) = v5;
        return result;
      }

      sub_1B01E94F4(3, "%s: failed to decode params");
    }

    return 16;
  }

  return result;
}

uint64_t sub_1B01F6550()
{
  result = sub_1B01EBDF4();
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
        if (sub_1B01E75CC((v0 + 32), 3u, &unk_1B01FF340, v0, 0x30uLL, 0x30uLL) || sub_1B01E75CC(v0, 0xAu, &unk_1B01FFA20, (v0 + 6), 0xA0uLL, 0xA0uLL) || sub_1B01EBEFC((v0 + 18), v0 + 26, (v0 + 28)))
        {
          return 0x40000000000;
        }

        if (v0[31])
        {
          if (sub_1B01E7974((v0 + 28), &xmmword_1E7A93AB0))
          {
            if (v0[31] != 10)
            {
              return 0x40000000000;
            }

            v6 = v0[30];
            if (*v6 != 6 || v6[1] != 8 || memcmp(v6 + 2, &unk_1B01FF60A, 8uLL))
            {
              return 0x40000000000;
            }
          }

          else if (sub_1B01E7974((v0 + 28), &off_1E7A93A70))
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
        if (sub_1B01EBFE4((v0 + 6), &off_1E7A93BF0, &v9, v0 + 34, 1))
        {
          sub_1B01E94F4(5, "%s: ClientID extension not found", "AMFDRDecodeCertificate");
        }

        else if (v9 != 12)
        {
          return 0x40000000000;
        }

        if (sub_1B01EBFE4((v0 + 6), &off_1E7A93C00, &v9, v0 + 36, 0))
        {
          sub_1B01E94F4(5, "%s: Certificate Properties extension not found", "AMFDRDecodeCertificate");
          return 0;
        }

        sub_1B01EBDC4();
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

double sub_1B01F6750()
{
  sub_1B01EBDF4();
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
        if (sub_1B01E75CC(&v39, 4u, &unk_1B01FF9C0, v36, 0x40uLL, 0x40uLL))
        {
          sub_1B01E94F4(3, "%s: failed to parse im4c: %d");
        }

        else if (*&v36[0] && *(&v36[0] + 1) == 4)
        {
          if (**&v36[0] == *"IM4C")
          {
            if (sub_1B01E6E2C(&v37, v31))
            {
              sub_1B01E94F4(3, "%s: failed to parse signed section sequence: %d");
            }

            else
            {
              sub_1B01EBDC4();
              if (v6)
              {
                sub_1B01EBDDC();
                if (sub_1B01E7698(v7, v8, v9, v10, v11, v12))
                {
                  sub_1B01E94F4(3, "%s: failed to parse signed section of im4c: %d");
                }

                else if (sub_1B01E6E2C(&v35, &v29))
                {
                  sub_1B01E94F4(3, "%s: failed to parse public key of im4c: %d");
                }

                else
                {
                  sub_1B01EBDDC();
                  if (sub_1B01E75CC(v13, v14, v15, v16, v17, v18))
                  {
                    sub_1B01E94F4(3, "%s: failed to parse cert properties: %d");
                  }

                  else if (v32 && *(&v32 + 1) == 4)
                  {
                    if (*v32 == *"CRTP")
                    {
                      v19 = 0;
                      v20 = 0;
                      do
                      {
                        v21 = *(&off_1EB6CFEE0 + v19);
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
                          v25 = *(&off_1EB6CFEE0 + v24);
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
                          sub_1B01E94F4(3, "%s: unsupported public key length: %lu");
                          return result;
                        }

                        *v0 = v37;
                        v0[2] = v38;
                        v0[1] = *v20;
                        v0[13] = v30;
                        v0[14] = xmmword_1E7A93AB0;
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
                        sub_1B01E94F4(3, "%s: unsupported signature length: %lu");
                      }
                    }

                    else
                    {
                      sub_1B01EBD80(v32);
                      sub_1B01E94F4(3, "%s: malformed cert property key: %c%c%c%c");
                    }
                  }

                  else
                  {
                    sub_1B01E94F4(3, "%s: malformed cert property key length: %lu");
                  }
                }
              }

              else
              {
                sub_1B01E94F4(3, "%s: unexpected signed section tag: 0x%llx");
              }
            }
          }

          else
          {
            sub_1B01EBD80(*&v36[0]);
            sub_1B01E94F4(3, "%s: malformed im4c tag: %c%c%c%c");
          }
        }

        else
        {
          sub_1B01E94F4(3, "%s: malformed im4c tag length: %lu");
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B01F6AB0(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  memset(v6, 170, sizeof(v6));
  result = 1;
  if (a1 && a3)
  {
    v7[0] = a1;
    v7[1] = a2;
    if (sub_1B01E6E34(v7, v6, 0))
    {
      sub_1B01E94F4(3, "%s: failed to decode DER", "AMFDRDecodeParseDERLengthFromBuffer");
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

uint64_t sub_1B01F6B4C(uint64_t a1, unsigned int a2, void *a3, _BYTE *a4)
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
  v11 = sub_1B01E75CC(v19, 5u, &unk_1B01FF888, (v10 + 1), 0x50uLL, 0);
  if (v11)
  {
    sub_1B01E94F4(3, "%s: failed to parse sysconfig sequence: %d", "AMFDRDecodeIterateSysconfigBegin", v11);
    v4 = 0x400000000000000;
    goto LABEL_32;
  }

  v12 = v10[2];
  if (v12 != 4)
  {
    sub_1B01E94F4(3, "%s: magic size is invalid: %lu", "AMFDRDecodeIterateSysconfigBegin", v12);
    sub_1B01EBDB8();
    v4 = v16 + 16;
    goto LABEL_32;
  }

  for (i = 3; i != -1; --i)
  {
    *v7++ = *(v10[1] + i);
  }

  if (v10[4] != 4)
  {
    sub_1B01E94F4(3, "%s: version size is invalid: %lu");
    goto LABEL_25;
  }

  v14 = *v10[3];
  if (!v14)
  {
    sub_1B01E94F4(3, "%s: minor version not supported: 0x%x");
    goto LABEL_25;
  }

  if ((v14 & 0xFFFF00) != 0x30000)
  {
    sub_1B01E94F4(3, "%s: sysconfig version not supported: 0x%x");
LABEL_25:
    v4 = 0x402000000000000;
    goto LABEL_32;
  }

  if (sub_1B01E7424((v10 + 5), &v18, v10 + 11))
  {
    v4 = 0x400000000000010;
    sub_1B01E94F4(3, "%s: failed to decode sysconfig payload: %d");
    goto LABEL_32;
  }

  if (v18 != 0x2000000000000011)
  {
    sub_1B01E94F4(3, "%s: invalid payload tag: 0x%llx");
LABEL_31:
    sub_1B01EBDB8();
    v4 = v17 + 48;
    goto LABEL_32;
  }

  if (!sub_1B01E7424((v10 + 7), &v18, v10 + 13))
  {
    if (v18 == 0x2000000000000011)
    {
      v4 = 0;
      *v10 = 1;
      *a3 = v10;
      return v4;
    }

    sub_1B01E94F4(3, "%s: invalid metadata tag: 0x%llx");
    goto LABEL_31;
  }

  v4 = 0x400000000000010;
  sub_1B01E94F4(3, "%s: failed to decode sysconfig metadata: %d");
LABEL_32:
  if (!v9)
  {
    free(v10);
  }

  return v4;
}

uint64_t sub_1B01F6DF8(uint64_t a1, _BYTE *a2, _BYTE *a3, void *a4, _DWORD *a5, _BYTE *a6)
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
    sub_1B01E94F4(3, "%s: sysconfig context is not initialized");
    return 0x400000000000000;
  }

  v12 = sub_1B01E750C((a1 + 88), &v27);
  if (v12 == 1)
  {
    return 0x40000000000000;
  }

  if (v12 || (sub_1B01EBDC4(), !v13))
  {
    sub_1B01E94F4(3, "%s: failed to decode payload: %d", "AMFDRDecodeIterateSysconfigPayloadNext", v12);
    sub_1B01EBDB8();
    return v20 + 48;
  }

  v14 = sub_1B01E7698(v28, 5u, &unk_1B01FF810, v23, 0x50uLL, 0);
  if (v14)
  {
    v6 = 0x400000000000010;
    sub_1B01E94F4(3, "%s: failed to parse payload content: %d", "AMFDRDecodeIterateSysconfigPayloadNext", v14);
    return v6;
  }

  if (*(&v23[0] + 1) != 4)
  {
    sub_1B01E94F4(3, "%s: invalid key length: %lu", "AMFDRDecodeIterateSysconfigPayloadNext", *(&v23[0] + 1));
    sub_1B01EBDB8();
    return v21 + 16;
  }

  v15 = *&v23[0];
  for (i = 3; i != -1; --i)
  {
    *v7++ = *(v15 + i);
  }

  if (sub_1B01E72E0(&v26, 0, &v22))
  {
    sub_1B01E94F4(3, "%s: failed to parse BOOLean: %d");
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

double sub_1B01F701C(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!sub_1B01E74E0(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!sub_1B01E750C(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1B01F7084(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = sub_1B01E6E2C(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = sub_1B01E7698(&v7, 4u, &unk_1B01FFB28, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (sub_1B01ECBE0(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B01F7160(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      sub_1B01ECF44();
      result = sub_1B01E7698(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = sub_1B01E7320(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B01F71D8(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = sub_1B01E75CC(a1, 7u, &unk_1B01FFC18, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (sub_1B01ECBE0(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (sub_1B01ECF58(), result = sub_1B01F7160(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          sub_1B01ECF58();
          result = sub_1B01F7290(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B01F7290(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_1B01ECF44();
      result = sub_1B01E75CC(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (sub_1B01ECBE0(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B01F7310(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  result = 6;
  if (a1 && a2)
  {
    bzero(v12, 0xA0uLL);
    result = sub_1B01F71D8(a1, v12);
    if (result)
    {
      result = sub_1B01E75CC(a1, 6u, &unk_1B01FFB88, a2, 0x90uLL, 0);
      if (!result)
      {
        if (sub_1B01ECBE0(a2, 0x494D3450u))
        {
          result = 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6 || (sub_1B01ECF58(), result = sub_1B01F7160(v5, v11), !result))
          {
            result = 0;
          }
        }
      }
    }

    else
    {
      v7 = v12[1];
      *a2 = v12[0];
      *(a2 + 16) = v7;
      v8 = v12[3];
      *(a2 + 32) = v12[2];
      *(a2 + 48) = v8;
      v9 = v12[5];
      *(a2 + 64) = v12[4];
      *(a2 + 80) = v9;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01F7418(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_1B01ECF44();
      result = sub_1B01E75CC(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (sub_1B01ECBE0(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B01F7498(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10[0] = 0;
  v10[2] = 0;
  v10[1] = 22;
  v10[3] = 24;
  v11 = a3;
  result = sub_1B01E75CC(a1, 2u, v10, a4, 0x30uLL, 0);
  if (!result)
  {
    result = sub_1B01E7320(a4, &v9);
    if (!result)
    {
      if ((v9 | 0xE000000000000000) == a2)
      {
        result = 0;
        *(a4 + 16) = a2 | 0xE000000000000000;
        *(a4 + 40) = a3;
      }

      else
      {
        result = 2;
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *sub_1B01F756C(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = sub_1B01E74E0(a1, v8);
  if (!result)
  {
    return sub_1B01ECEBC(v8, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B01F75C8(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 32);
    if (HIDWORD(v5))
    {
      return 7;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = v6;
      *a3 = v5;
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      return (v8 << 31 >> 31);
    }
  }

  return result;
}

uint64_t sub_1B01F7610(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1B01ED744(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = sub_1B01ED77C(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = sub_1B01E73A4(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t sub_1B01F7674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v15 = *a1;
  v16 = v4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = sub_1B01ECD8C(&v15, a2 | 0xE000000000000000, &v17);
  if (!result)
  {
    if (*(&v19 + 1) == 1)
    {
      if (a3)
      {
        v13 = sub_1B01ED77C(result, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1));
        return sub_1B01E72A4(v13, v14);
      }

      else
      {
        return 6;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_1B01F76F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  if (!a3)
  {
    return 6;
  }

  result = sub_1B01E74E0(a1, v13);
  if (!result)
  {
    while (1)
    {
      result = sub_1B01E750C(v13, &v14);
      if (result == 1)
      {
        return 0;
      }

      if (result)
      {
        return result;
      }

      result = sub_1B01ECD8C(&v15, v14, v8);
      if (result)
      {
        return result;
      }

      result = 2;
      if (*(&v9 + 1) > 0x16uLL || ((1 << SBYTE8(v9)) & 0x400016) == 0 || !(v14 >> 62) || (v14 & 0x2000000000000000) == 0)
      {
        return result;
      }

      if (HIDWORD(v16))
      {
        break;
      }

      v10 = v15;
      LODWORD(v11) = v16;
      v12 = *(&v9 + 1);
      result = a3(v14, &v10, a2, a4);
      if (result)
      {
        return result;
      }
    }

    return 7;
  }

  return result;
}

uint64_t sub_1B01F7830(char *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
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
            v9 = v8[2];
            if (v9)
            {
              if (*v8 == a4)
              {
                v10 = *v9;
                if (*v9 && *v10 == a4)
                {
                  sub_1B01DBC50(v10, a2, a1, a3);
                  return 0;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}