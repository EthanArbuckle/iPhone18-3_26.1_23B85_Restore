uint64_t tls_helper_set_identity_from_array(int a1, CFArrayRef theArray)
{
  privateKeyRef = 0;
  certificateRef = 0;
  if (!theArray)
  {
    v5 = 0;
    v10 = 4294957488;
LABEL_27:
    free(v5);
    if (privateKeyRef)
    {
      CFRelease(privateKeyRef);
    }

    return v10;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    v5 = 0;
    v10 = 4294957488;
    goto LABEL_24;
  }

  v4 = Count;
  v5 = sslMalloc(24 * Count);
  if (!v5)
  {
    v10 = 4294967188;
    goto LABEL_24;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!ValueAtIndex)
  {
    goto LABEL_23;
  }

  v7 = ValueAtIndex;
  v8 = CFGetTypeID(ValueAtIndex);
  if (v8 != SecIdentityGetTypeID())
  {
    goto LABEL_23;
  }

  v9 = SecIdentityCopyCertificate(v7, &certificateRef);
  if (v9 || (v9 = SecIdentityCopyPrivateKey(v7, &privateKeyRef), v9))
  {
    v10 = v9;
    goto LABEL_24;
  }

  BytePtr = SecCertificateGetBytePtr();
  Length = SecCertificateGetLength();
  SSLCopyBufferFromData(BytePtr, Length, v5 + 1);
  *v5 = 0;
  if (v4 >= 2)
  {
    v13 = v5 + 3;
    for (i = 1; i != v4; ++i)
    {
      v15 = CFArrayGetValueAtIndex(theArray, i);
      if (!v15)
      {
        goto LABEL_23;
      }

      v16 = CFGetTypeID(v15);
      if (v16 != SecCertificateGetTypeID())
      {
        goto LABEL_23;
      }

      v17 = SecCertificateGetBytePtr();
      v18 = SecCertificateGetLength();
      SSLCopyBufferFromData(v17, v18, v13 + 1);
      *v13 = 0;
      *(v13 - 3) = v13;
      v13 += 3;
    }
  }

  SecKeyGetBlockSize(privateKeyRef);
  if (SecKeyGetAlgorithmId() != 1)
  {
    if (SecKeyGetAlgorithmId() != 3)
    {
LABEL_23:
      v10 = 4294967246;
      goto LABEL_24;
    }

    SecECKeyGetNamedCurve();
  }

  if (tls_private_key_create())
  {
    v10 = 0;
  }

  else
  {
    v10 = 4294967188;
  }

LABEL_24:
  if (certificateRef)
  {
    CFRelease(certificateRef);
  }

  if (v10)
  {
    goto LABEL_27;
  }

  context = tls_private_key_get_context();
  CFRetain(context);
  v10 = tls_handshake_set_identity();
  tls_private_key_destroy();
  if (v5)
  {
    v20 = v5;
    do
    {
      SSLFreeBuffer(v20 + 1);
      v20 = *v20;
    }

    while (v20);
  }

  sslFree(v5);
  return v10;
}

uint64_t SSLCopyBufferFromData(const void *a1, size_t a2, size_t *a3)
{
  v5 = sslAllocCopy(a1, a2);
  a3[1] = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = a2;
  return result;
}

void *sslAllocCopy(const void *a1, size_t size)
{
  result = malloc_type_malloc(size, 0x7E6F9180uLL);
  if (result)
  {

    return memmove(result, a1, size);
  }

  return result;
}

uint64_t SSLFreeBuffer(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  result = 0;
  *a1 = 0;
  a1[1] = 0;
  return result;
}

void sslFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t mySSLPrivKeyRSA_sign(SecKeyRef key, int a2, UInt8 *bytes, size_t length, uint8_t *sig, size_t *sigLen)
{
  v6 = 4294957486;
  v10 = MEMORY[0x29EDBBC68];
  switch(a2)
  {
    case 0:

      return SecKeyRawSign(key, 1u, bytes, length, sig, sigLen);
    case 2:
      goto LABEL_8;
    case 4:
      v10 = MEMORY[0x29EDBBC70];
      goto LABEL_8;
    case 5:
      v10 = MEMORY[0x29EDBBC78];
      goto LABEL_8;
    case 6:
      v10 = MEMORY[0x29EDBBC80];
LABEL_8:
      v12 = *v10;
      v13 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], bytes, length, *MEMORY[0x29EDB8EE8]);
      if (!v13)
      {
        return 4294957486;
      }

      v14 = v13;
      Signature = SecKeyCreateSignature(key, v12, v13, 0);
      if (Signature)
      {
        v16 = Signature;
        v17 = CFDataGetLength(Signature);
        BytePtr = CFDataGetBytePtr(v16);
        if (BytePtr && v17 >= *sigLen)
        {
          memcpy(sig, BytePtr, v17);
          v6 = 0;
          *sigLen = v17;
        }

        else
        {
          v6 = 4294957486;
        }

        CFRelease(v14);
        CFRelease(v16);
      }

      else
      {
        CFRelease(v14);
        return 4294957486;
      }

      return v6;
    default:
      return v6;
  }
}

uint64_t tls_helper_set_peer_pubkey()
{
  trust = 0;
  peer_certificates = tls_handshake_get_peer_certificates();
  cfarray_from_certificates = tls_helper_create_cfarray_from_certificates(peer_certificates);
  if (!cfarray_from_certificates)
  {
    return 0;
  }

  v2 = cfarray_from_certificates;
  v3 = SecTrustCreateWithCertificates(cfarray_from_certificates, 0, &trust);
  if (v3)
  {
    v10 = v3;
    goto LABEL_16;
  }

  v4 = MEMORY[0x29C28E120](trust);
  if (!v4)
  {
    v10 = 4294957488;
    goto LABEL_16;
  }

  v5 = v4;
  AlgorithmId = SecKeyGetAlgorithmId();
  if (AlgorithmId == 3)
  {
    SecECKeyGetNamedCurve();
    v11 = SecECKeyCopyPublicBits();
    if (v11)
    {
      v9 = v11;
      CFDataGetBytePtr(v11);
      CFDataGetLength(v9);
      v10 = tls_handshake_set_peer_ec_public_key();
      CFRelease(v5);
LABEL_15:
      CFRelease(v9);
      goto LABEL_16;
    }

LABEL_14:
    v10 = 4294957487;
    v9 = v5;
    goto LABEL_15;
  }

  if (AlgorithmId != 1)
  {
    goto LABEL_14;
  }

  v7 = SecKeyCopyModulus();
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = SecKeyCopyExponent();
  if (v9)
  {
    CFDataGetBytePtr(v8);
    CFDataGetLength(v8);
    CFDataGetBytePtr(v9);
    CFDataGetLength(v9);
    v10 = tls_handshake_set_peer_rsa_public_key();
  }

  else
  {
    v10 = 4294957487;
  }

  CFRelease(v5);
  CFRelease(v8);
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (trust)
  {
    CFRelease(trust);
  }

  CFRelease(v2);
  return v10;
}

__CFArray *tls_helper_create_cfarray_from_certificates(uint64_t **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (Mutable)
  {
    v4 = *MEMORY[0x29EDB8EE8];
    while (1)
    {
      v5 = CFDataCreateWithBytesNoCopy(v2, v1[2], v1[1], v4);
      if (!v5)
      {
        v6 = Mutable;
        goto LABEL_10;
      }

      v6 = v5;
      v7 = SecCertificateCreateWithData(v2, v5);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      CFArrayAppendValue(Mutable, v7);
      CFRelease(v8);
      CFRelease(v6);
      v1 = *v1;
      if (!v1)
      {
        return Mutable;
      }
    }

    CFRelease(Mutable);
LABEL_10:
    CFRelease(v6);
    return 0;
  }

  return Mutable;
}

uint64_t tls_helper_create_peer_trust(uint64_t a1, char a2, SecTrustRef *a3)
{
  trust = 0;
  peer_certificates = tls_handshake_get_peer_certificates();
  cfarray_from_certificates = tls_helper_create_cfarray_from_certificates(peer_certificates);
  if (cfarray_from_certificates)
  {
    v7 = cfarray_from_certificates;
    if ((a2 & 1) == 0)
    {
      tls_handshake_get_peer_hostname();
    }

    SSL = SecPolicyCreateSSL(a2 ^ 1u, 0);
    if (SSL)
    {
      v11 = SecTrustCreateWithCertificates(v7, SSL, &trust);
      if (v11)
      {
        v9 = v11;
      }

      else
      {
        if (a2)
        {
          goto LABEL_14;
        }

        peer_sct_list = tls_handshake_get_peer_sct_list();
        peer_ocsp_response = tls_handshake_get_peer_ocsp_response();
        if (!peer_ocsp_response)
        {
          goto LABEL_21;
        }

        v14 = CFDataCreate(*MEMORY[0x29EDB8ED8], *(peer_ocsp_response + 8), *peer_ocsp_response);
        v9 = SecTrustSetOCSPResponse(trust, v14);
        if (v14)
        {
          CFRelease(v14);
        }

        if (!v9)
        {
LABEL_21:
          if (!peer_sct_list)
          {
            goto LABEL_14;
          }

          v16 = tls_handshake_get_peer_sct_list();
          cfarray_from_buffer_list = tls_helper_create_cfarray_from_buffer_list(v16);
          v9 = SecTrustSetSignedCertificateTimestamps(trust, cfarray_from_buffer_list);
          if (cfarray_from_buffer_list)
          {
            CFRelease(cfarray_from_buffer_list);
          }

          if (!v9)
          {
LABEL_14:
            v9 = 0;
          }
        }
      }
    }

    else
    {
      v9 = 4294967188;
    }

    if (SSL)
    {
      CFRelease(SSL);
    }

    CFRelease(v7);
    v8 = trust;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *a3 = v8;
  return v9;
}

uint64_t SSLAllocBuffer(size_t *a1, size_t size)
{
  v4 = malloc_type_malloc(size, 0x7E6F9180uLL);
  if (v4)
  {
    v5 = size;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  *a1 = v5;
  a1[1] = v4;
  return v6;
}

uint64_t SSLReallocBuffer(uint64_t a1, size_t a2)
{
  v4 = malloc_type_realloc(*(a1 + 8), a2, 0x977EAAC5uLL);
  if (v4)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  return v6;
}

uint64_t SSLAllocCopyBuffer(size_t *a1, size_t **a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x7E6F9180uLL);
  if (v4)
  {
    v5 = v4;
    v7 = a1;
    v6 = *a1;
    v8 = sslAllocCopy(v7[1], v6);
    v5[1] = v8;
    if (v8)
    {
      result = 0;
      *v5 = v6;
      *a2 = v5;
      return result;
    }

    free(v5);
  }

  return 0xFFFFFFFFLL;
}

uint64_t SSLCopyBuffer(uint64_t a1, size_t *a2)
{
  v3 = *a1;
  v4 = sslAllocCopy(*(a1 + 8), *a1);
  a2[1] = v4;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t SSLCopyBufferTerm(const void *a1, size_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(a2 + 1, 0x7E6F9180uLL);
  if (v6)
  {
    v7 = a2 + 1;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  memmove(v6, a1, a2);
  *(*(a3 + 8) + a2) = 0;
  v8 = strlen(*(a3 + 8));
  result = 0;
  *a3 = v8;
  return result;
}

uint64_t tls_free_buffer_list(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[2];
      if (v3)
      {
        free(v3);
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t tls_copy_buffer_list(uint64_t **a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = malloc_type_malloc(0x18uLL, 0x7E6F9180uLL);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      *v6 = 0;
      v8 = v3[1];
      v9 = sslAllocCopy(v3[2], v8);
      v7[2] = v9;
      if (!v9)
      {
        free(v7);
        break;
      }

      v7[1] = v8;
      v10 = v7;
      if (v5)
      {
        *v4 = v7;
        v10 = v5;
      }

      v3 = *v3;
      v4 = v7;
      v5 = v10;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    tls_free_buffer_list(v5);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
LABEL_10:
    result = 0;
    *a2 = v10;
  }

  return result;
}

uint64_t tls_helper_version_from_SSLProtocol(int a1)
{
  if (a1 <= 7)
  {
    switch(a1)
    {
      case 2:
        return 768;
      case 4:
        return 769;
      case 7:
        return 770;
    }

    return 0;
  }

  if (a1 > 9)
  {
    if (a1 == 10 || a1 == 999)
    {
      return 772;
    }

    return 0;
  }

  if (a1 == 8)
  {
    return 771;
  }

  else
  {
    return 65279;
  }
}

uint64_t tls_helper_SSLProtocol_from_version(int a1)
{
  if (a1 > 770)
  {
    if (a1 == 771)
    {
      return 8;
    }

    if (a1 != 772)
    {
      if (a1 == 65279)
      {
        return 9;
      }

      return 0;
    }

    return 10;
  }

  else
  {
    if (a1 == 768)
    {
      return 2;
    }

    if (a1 != 769)
    {
      if (a1 == 770)
      {
        return 7;
      }

      return 0;
    }

    return 4;
  }
}

__CFArray *tls_helper_create_cfarray_from_buffer_list(uint64_t **a1)
{
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (Mutable && a1)
  {
    while (1)
    {
      v4 = CFDataCreate(v2, a1[2], a1[1]);
      if (!v4)
      {
        break;
      }

      v5 = v4;
      CFArrayAppendValue(Mutable, v4);
      CFRelease(v5);
      a1 = *a1;
      if (!a1)
      {
        return Mutable;
      }
    }

    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

__CFArray *tls_helper_create_peer_acceptable_dn_array()
{
  peer_acceptable_dn_list = tls_handshake_get_peer_acceptable_dn_list();

  return tls_helper_create_cfarray_from_buffer_list(peer_acceptable_dn_list);
}