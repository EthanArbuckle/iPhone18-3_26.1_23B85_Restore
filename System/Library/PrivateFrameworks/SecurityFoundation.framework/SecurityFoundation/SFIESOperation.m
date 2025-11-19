@interface SFIESOperation
@end

@implementation SFIESOperation

_SFIESCiphertext *__41___SFIESOperation_encrypt_withKey_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 56) + 8);
    obj = *(v8 + 40);
    v6 = [v7 _ccDigestInfoWithError:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (v6)
    {
      ccaes_gcm_encrypt_mode();
      ccecies_encrypt_gcm_setup();
      [*(a1 + 40) length];
      v9 = ccecies_encrypt_gcm_ciphertext_size();
      v10 = malloc_type_malloc(v9, 0xF6641092uLL);
      v11 = malloc_type_malloc(0, 0x1E3DDEC0uLL);
      v12 = ccecies_pub_key_size();
      v13 = malloc_type_malloc(v12, 0xBEC2F4EDuLL);
      [*(a1 + 40) bytes];
      if (ccecies_encrypt_gcm_composite())
      {
        free(v10);
        free(v11);
        free(v13);
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:2 userInfo:{0, 0, 0, 0}];
        v6 = 0;
        v15 = *(*(a1 + 56) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v10 length:{v9, 0, 0, 0}];
        v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v11 length:0];
        v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v13 length:v12];
        free(v10);
        free(v11);
        free(v13);
        v19 = [_SFIESCiphertext alloc];
        v20 = [_SFECPublicKey alloc];
        v21 = [*(a1 + 48) keySpecifier];
        v22 = [(_SFPublicKey *)v20 initWithData:v18 specifier:v21 error:0];
        v6 = [(_SFIESCiphertext *)v19 initWithCiphertext:v16 ephemeralSenderPublicKey:v22 authenticationCode:v17];
      }
    }
  }

  return v6;
}

id __41___SFIESOperation_decrypt_withKey_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 48) + 8);
    obj = *(v8 + 40);
    v9 = [v7 _ccDigestInfoWithError:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (v9)
    {
      v10 = [*(a1 + 40) ciphertext];
      v11 = [*(a1 + 40) authenticationCode];
      v12 = [*(a1 + 40) ephemeralSenderPublicKey];
      v13 = [v12 keyData];

      v14 = [v10 length];
      ccaes_gcm_decrypt_mode();
      [v11 length];
      ccecies_decrypt_gcm_setup();
      v15 = ccecies_decrypt_gcm_plaintext_size();
      v16 = malloc_type_malloc(v14, 0xE006C1ABuLL);
      v17 = [v10 bytes];
      v22 = [v13 bytes];
      v23 = [v11 bytes];
      if (ccecies_decrypt_gcm_composite())
      {
        free(v16);
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:3 userInfo:{0, v17, v22, v23}];
        v19 = *(*(a1 + 48) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        v6 = 0;
      }

      else
      {
        v6 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:{v15, v17, v22, v23}];
        free(v16);
      }

      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

@end