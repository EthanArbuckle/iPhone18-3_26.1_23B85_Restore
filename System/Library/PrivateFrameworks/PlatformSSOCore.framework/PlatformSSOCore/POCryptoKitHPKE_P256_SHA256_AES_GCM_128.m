@interface POCryptoKitHPKE_P256_SHA256_AES_GCM_128
- (BOOL)decodeAndDecryptJWT:(id)a3 privateKey:(__SecKey *)a4 otherInfo:(id)a5 psk:(id)a6 psk_id:(id)a7 authPublicKey:(__SecKey *)a8 error:(id *)a9;
- (_TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_128)init;
- (id)algValue;
- (id)encodeAndEncryptJWT:(id)a3 publicKey:(__SecKey *)a4 otherInfo:(id)a5 psk:(id)a6 psk_id:(id)a7 authPrivateKey:(__SecKey *)a8 auth_kid:(id)a9 error:(id *)a10;
- (void)addValuesTo:(id)a3;
@end

@implementation POCryptoKitHPKE_P256_SHA256_AES_GCM_128

- (_TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_128)init
{
  v23 = sub_25E941698();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25E941678();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E941688();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25E941668();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.super.isa + OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_128_encryptionAlgorithm) = &unk_2870A91F8;
  (*(v12 + 104))(v15, *MEMORY[0x277CC5450], v11);
  (*(v7 + 104))(v10, *MEMORY[0x277CC5438], v22);
  (*(v3 + 104))(v6, *MEMORY[0x277CC5460], v23);
  v20 = &unk_2870A91F8;
  sub_25E941658();
  return POCryptoKitHPKE.init(cipherSuite:)(v19);
}

- (void)addValuesTo:(id)a3
{
  v5 = a3;
  v3 = sub_25E941838();
  [v5 setEnc_];

  v4 = sub_25E941838();
  [v5 setAlg_];
}

- (id)algValue
{
  v2 = sub_25E941838();

  return v2;
}

- (BOOL)decodeAndDecryptJWT:(id)a3 privateKey:(__SecKey *)a4 otherInfo:(id)a5 psk:(id)a6 psk_id:(id)a7 authPublicKey:(__SecKey *)a8 error:(id *)a9
{
  if (a5)
  {
    v32 = sub_25E941848();
    v16 = v15;
  }

  else
  {
    v32 = 0;
    v16 = 0;
  }

  v17 = a3;
  v18 = a4;
  if (!a6)
  {
    v28 = a7;
    v29 = a8;
    v30 = self;
    v24 = 0xF000000000000000;
    if (a7)
    {
      goto LABEL_6;
    }

LABEL_8:
    v25 = 0;
    v27 = 0xF000000000000000;
    goto LABEL_9;
  }

  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = self;
  a6 = sub_25E941478();
  v24 = v23;

  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_6:
  v25 = sub_25E941478();
  v27 = v26;

LABEL_9:
  POCryptoKitHPKE_P256_SHA256_AES_GCM_128.decodeAndDecryptJWT(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v17, v18, v32, v16, a6, v24, v25, v27, a8);

  sub_25E8B2B18(v25, v27);
  sub_25E8B2B18(a6, v24);

  return 1;
}

- (id)encodeAndEncryptJWT:(id)a3 publicKey:(__SecKey *)a4 otherInfo:(id)a5 psk:(id)a6 psk_id:(id)a7 authPrivateKey:(__SecKey *)a8 auth_kid:(id)a9 error:(id *)a10
{
  if (a5)
  {
    v38 = sub_25E941848();
    v40 = v15;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v16 = a3;
  v37 = a4;
  if (a6)
  {
    v17 = a6;
    v18 = a7;
    v19 = a8;
    v20 = a9;
    v21 = self;
    a6 = sub_25E941478();
    v23 = v22;

    if (a7)
    {
      goto LABEL_6;
    }

LABEL_9:
    v24 = 0;
    v26 = 0xF000000000000000;
    v27 = a6;
    if (a9)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v31 = a7;
  v32 = a8;
  v33 = a9;
  v34 = self;
  v23 = 0xF000000000000000;
  if (!a7)
  {
    goto LABEL_9;
  }

LABEL_6:
  v24 = sub_25E941478();
  v26 = v25;

  v27 = a6;
  if (a9)
  {
LABEL_7:
    v28 = sub_25E941478();
    v30 = v29;

    goto LABEL_11;
  }

LABEL_10:
  v28 = 0;
  v30 = 0xF000000000000000;
LABEL_11:
  POCryptoKitHPKE_P256_SHA256_AES_GCM_128.encodeAndEncryptJWT(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(v16, v37, v38, v40, v27, v23, v24, v26, a8, v28, v30);

  sub_25E8B2B18(v28, v30);
  sub_25E8B2B18(v24, v26);
  sub_25E8B2B18(v27, v23);

  v35 = sub_25E941838();

  return v35;
}

@end