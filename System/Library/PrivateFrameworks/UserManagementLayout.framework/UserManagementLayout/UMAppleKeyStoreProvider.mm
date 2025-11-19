@interface UMAppleKeyStoreProvider
- (BOOL)addPersonaWithUUID:(id)a3 toSession:(unsigned int)a4 passcode:(id)a5 error:(id *)a6;
- (BOOL)bootstrapVolumeWithMountPoint:(id)a3 user:(unsigned int)a4 error:(id *)a5;
- (BOOL)changeSecretrForIdentityWithUUID:(id)a3 oldPasscode:(id)a4 newPasscode:(id)a5 existingSession:(unsigned int)a6 isACMCredential:(BOOL)a7 error:(id *)a8;
- (BOOL)createIdentityWithUUID:(id)a3 passcode:(id)a4 existingSession:(unsigned int)a5 existingSessionPasscode:(id)a6 isACMCredential:(BOOL)a7 error:(id *)a8;
- (BOOL)deleteIdentity:(id)a3 error:(id *)a4;
- (BOOL)deletePersonaWithUUID:(id)a3 fromSession:(unsigned int)a4 error:(id *)a5;
- (BOOL)isIdentityLoadedIntoSession:(unsigned int)a3;
- (BOOL)loadIdentity:(id)a3 intoSession:(unsigned int)a4 error:(id *)a5;
- (BOOL)loginIdentity:(id)a3 intoSession:(unsigned int)a4 passcode:(id)a5 isACMCredential:(BOOL)a6 error:(id *)a7;
- (BOOL)mapVolume:(id)a3 toSession:(unsigned int)a4 withPersona:(id)a5 error:(id *)a6;
- (BOOL)unloadIdentityFromSession:(unsigned int)a3 error:(id *)a4;
- (BOOL)unlockIdentityInSession:(unsigned int)a3 passcode:(id)a4 isACMCredential:(BOOL)a5 error:(id *)a6;
- (BOOL)unmapVolume:(id)a3 error:(id *)a4;
- (BOOL)verifyIdentityPasswordInSession:(unsigned int)a3 passcode:(id)a4 isACMCredential:(BOOL)a5 error:(id *)a6;
- (id)dataUnwrappingDataWithDeviceClassF:(id)a3 error:(id *)a4;
- (id)dataWrappingDataWithDeviceClassF:(id)a3 error:(id *)a4;
@end

@implementation UMAppleKeyStoreProvider

- (BOOL)bootstrapVolumeWithMountPoint:(id)a3 user:(unsigned int)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a5)
  {
    *a5 = 0;
  }

  if ([(UMAppleKeyStoreProvider *)self ignoreIdentityMethods])
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE770AC();
    }

    v8 = qword_2810B8880;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_22EE69AE8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_22EE69B10(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = AKSVolumeBootstrapFS();
    if ((v13 & 1) == 0)
    {
      if (qword_2810B8888 != -1)
      {
        sub_22EE77084();
      }

      v14 = qword_2810B8880;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sub_22EE69AE8();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 & 0xFFFFFFFE;
        }

        if (v16)
        {
          v17 = _os_log_send_and_compose_impl();
          v18 = v17;
          if (v17)
          {
            sub_22EE69B10(v17);
          }
        }

        else
        {
          v18 = 0;
        }

        free(v18);
      }

      if (a5)
      {
        *a5 = 0;
      }

      CFRelease(0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)dataWrappingDataWithDeviceClassF:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    *a4 = 0;
  }

  if ([v5 length] < 0x21)
  {
    memset(v27, 0, sizeof(v27));
    [v6 bytes];
    [v6 length];
    v11 = aks_wrap_key();
    if (!v11)
    {
      v18 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:40];
      goto LABEL_33;
    }

    v12 = v11;
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v13 = qword_2810B8880;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_22EE69AE8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v26[0] = 67109120;
        v26[1] = v12;
        LODWORD(v25) = 8;
        v24 = v26;
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_22EE69B10(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    if (a4)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA4A8];
      v21 = v12;
      goto LABEL_31;
    }
  }

  else
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE770AC();
    }

    v7 = qword_2810B8880;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_22EE69AE8();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 &= ~1u;
      }

      if (v8)
      {
        v9 = v7;
        LODWORD(v27[0]) = 134217984;
        *(v27 + 4) = [v6 length];
        LODWORD(v25) = 12;
        v24 = v27;
        v10 = _os_log_send_and_compose_impl();

        if (v10)
        {
          sub_22EE69B10(v10);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    if (a4)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA5B8];
      v21 = 22;
LABEL_31:
      [v19 errorWithDomain:v20 code:v21 userInfo:{0, v24, v25}];
      *a4 = v18 = 0;
      goto LABEL_33;
    }
  }

  v18 = 0;
LABEL_33:

  v22 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)dataUnwrappingDataWithDeviceClassF:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    *a4 = 0;
  }

  if ([v5 length] >= 0x29)
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE770AC();
    }

    v7 = qword_2810B8880;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_22EE69AE8();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 &= ~1u;
      }

      if (v8)
      {
        v9 = v7;
        LODWORD(v29[0]) = 134217984;
        *(v29 + 4) = [v6 length];
        LODWORD(v27) = 12;
        v26 = v29;
        v10 = _os_log_send_and_compose_impl();

        if (v10)
        {
          sub_22EE69B10(v10);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    if (a4)
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA5B8];
      v23 = 22;
LABEL_41:
      [v21 errorWithDomain:v22 code:v23 userInfo:{0, v26, v27}];
      *a4 = v16 = 0;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  memset(v29, 0, sizeof(v29));
  [v6 bytes];
  [v6 length];
  v11 = aks_unwrap_key();
  if (!v11)
  {
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v29 length:32];
    goto LABEL_43;
  }

  v12 = v11;
  if (v11 == -536362989)
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v13 = qword_2810B8880;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = sub_22EE69AE8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        LOWORD(v28[0]) = 0;
        LODWORD(v27) = 2;
        v26 = v28;
        goto LABEL_31;
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v13 = qword_2810B8880;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = sub_22EE69AE8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v28[0] = 67109120;
        v28[1] = v12;
        LODWORD(v27) = 8;
        v26 = v28;
LABEL_31:
        v19 = _os_log_send_and_compose_impl();
        v20 = v19;
        if (v19)
        {
          sub_22EE69B10(v19);
        }

        goto LABEL_38;
      }

LABEL_37:
      v20 = 0;
LABEL_38:
      free(v20);
    }
  }

  if (a4)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA4A8];
    v23 = v12;
    goto LABEL_41;
  }

LABEL_42:
  v16 = 0;
LABEL_43:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)deleteIdentity:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = sub_22EE66238(v5);
  v8 = AKSIdentityDelete();
  if (v8)
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v9 = qword_2810B8880;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_22EE69AE8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_22EE69B10(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }
  }

  else
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v14 = qword_2810B8880;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_22EE69AE8();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_22EE69B10(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    if (a4)
    {
      *a4 = 0;
    }

    else
    {
      CFRelease(0);
    }
  }

  CFRelease(v7);

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isIdentityLoadedIntoSession:(unsigned int)a3
{
  v16 = *MEMORY[0x277D85DE8];
  system = aks_get_system();
  v4 = system;
  if (system)
  {
    if (system == -536870160)
    {
      if (qword_2810B8888 != -1)
      {
        sub_22EE77084();
      }

      v5 = qword_2810B8880;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = sub_22EE69AE8();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v7 = v6;
        }

        else
        {
          v7 = v6 & 0xFFFFFFFE;
        }

        if (v7)
        {
LABEL_26:
          v12 = _os_log_send_and_compose_impl();
          v13 = v12;
          if (v12)
          {
            sub_22EE69B10(v12);
          }

          goto LABEL_29;
        }

LABEL_28:
        v13 = 0;
LABEL_29:
        free(v13);
      }
    }

    else
    {
      if (qword_2810B8888 != -1)
      {
        sub_22EE77084();
      }

      v5 = qword_2810B8880;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v10 = sub_22EE69AE8();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (v11)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }
    }
  }

  else
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v5 = qword_2810B8880;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = sub_22EE69AE8();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4 == 0;
}

- (BOOL)loadIdentity:(id)a3 intoSession:(unsigned int)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a5)
  {
    *a5 = 0;
  }

  v8 = sub_22EE66238(v6);
  v9 = AKSIdentityLoad();
  if (v9)
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v10 = qword_2810B8880;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_22EE69AE8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_22EE69B10(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  else
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v15 = qword_2810B8880;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_22EE69AE8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = _os_log_send_and_compose_impl();
        v19 = v18;
        if (v18)
        {
          sub_22EE69B10(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    if (a5)
    {
      *a5 = 0;
    }

    else
    {
      CFRelease(0);
    }
  }

  CFRelease(v8);

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)unloadIdentityFromSession:(unsigned int)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  v5 = AKSIdentityUnload();
  if (v5)
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v6 = qword_2810B8880;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_22EE69AE8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_22EE69B10(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }
  }

  else
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v11 = qword_2810B8880;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_22EE69AE8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_22EE69B10(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    if (a4)
    {
      *a4 = 0;
    }

    else
    {
      CFRelease(0);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)loginIdentity:(id)a3 intoSession:(unsigned int)a4 passcode:(id)a5 isACMCredential:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v29 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  if (a7)
  {
    *a7 = 0;
  }

  v13 = sub_22EE66238(v11);
  if (!v8)
  {
    sub_22EE75E98(self, v12);
    if (AKSIdentityLogin())
    {
      goto LABEL_5;
    }

    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v19 = qword_2810B8880;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_36:

      if (a7)
      {
        v24 = 0;
        *a7 = 0;
      }

      else
      {
        CFRelease(0);
        v24 = 0;
      }

      goto LABEL_39;
    }

    v25 = sub_22EE69AE8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  if ((AKSIdentityLoginWithACMCred() & 1) == 0)
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v19 = qword_2810B8880;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    v20 = sub_22EE69AE8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
LABEL_21:
      v22 = _os_log_send_and_compose_impl();
      v23 = v22;
      if (v22)
      {
        sub_22EE69B10(v22);
      }

      goto LABEL_35;
    }

LABEL_34:
    v23 = 0;
LABEL_35:
    free(v23);
    goto LABEL_36;
  }

LABEL_5:
  if (qword_2810B8888 != -1)
  {
    sub_22EE77084();
  }

  v14 = qword_2810B8880;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_22EE69AE8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      v17 = _os_log_send_and_compose_impl();
      v18 = v17;
      if (v17)
      {
        sub_22EE69B10(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  v24 = 1;
LABEL_39:
  CFRelease(v13);

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)deletePersonaWithUUID:(id)a3 fromSession:(unsigned int)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a5)
  {
    *a5 = 0;
  }

  v8 = sub_22EE66238(v6);
  v9 = AKSIdentityDeletePersona();
  if (v9)
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v10 = qword_2810B8880;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_22EE69AE8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_22EE69B10(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  else
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v15 = qword_2810B8880;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_22EE69AE8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = _os_log_send_and_compose_impl();
        v19 = v18;
        if (v18)
        {
          sub_22EE69B10(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    if (a5)
    {
      *a5 = 0;
    }

    else
    {
      CFRelease(0);
    }
  }

  CFRelease(v8);

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)mapVolume:(id)a3 toSession:(unsigned int)a4 withPersona:(id)a5 error:(id *)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (a6)
  {
    *a6 = 0;
  }

  if ([(UMAppleKeyStoreProvider *)self ignoreIdentityMethods])
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE770AC();
    }

    v11 = qword_2810B8880;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_22EE69AE8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_22EE69B10(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v17 = 1;
    goto LABEL_44;
  }

  v16 = sub_22EE66238(v10);
  v17 = AKSVolumeMap();
  if ((v17 & 1) == 0)
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE77084();
    }

    v23 = qword_2810B8880;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_22EE69AE8();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_22EE69B10(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    if (a6)
    {
      *a6 = 0;
      if (!v10)
      {
        goto LABEL_44;
      }
    }

    else
    {
      CFRelease(0);
      if (!v10)
      {
        goto LABEL_44;
      }
    }

LABEL_43:
    CFRelease(v16);
    goto LABEL_44;
  }

  if (qword_2810B8888 != -1)
  {
    sub_22EE77084();
  }

  v18 = qword_2810B8880;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = sub_22EE69AE8();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v21 = _os_log_send_and_compose_impl();
      v22 = v21;
      if (v21)
      {
        sub_22EE69B10(v21);
      }
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }

  if (v10)
  {
    goto LABEL_43;
  }

LABEL_44:

  v28 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)unmapVolume:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  if ([(UMAppleKeyStoreProvider *)self ignoreIdentityMethods])
  {
    if (qword_2810B8888 != -1)
    {
      sub_22EE770AC();
    }

    v7 = qword_2810B8880;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_22EE69AE8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_22EE69B10(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    v12 = 1;
  }

  else
  {
    v12 = AKSVolumeUnmap();
    if (v12)
    {
      if (qword_2810B8888 != -1)
      {
        sub_22EE77084();
      }

      v13 = qword_2810B8880;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_22EE69AE8();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v16 = _os_log_send_and_compose_impl();
          v17 = v16;
          if (v16)
          {
            sub_22EE69B10(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }
    }

    else
    {
      if (qword_2810B8888 != -1)
      {
        sub_22EE77084();
      }

      v18 = qword_2810B8880;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sub_22EE69AE8();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = _os_log_send_and_compose_impl();
          v22 = v21;
          if (v21)
          {
            sub_22EE69B10(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      if (a4)
      {
        *a4 = 0;
      }

      else
      {
        CFRelease(0);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)createIdentityWithUUID:(id)a3 passcode:(id)a4 existingSession:(unsigned int)a5 existingSessionPasscode:(id)a6 isACMCredential:(BOOL)a7 error:(id *)a8
{
  v10 = a7;
  v31 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  if (a8)
  {
    *a8 = 0;
  }

  sub_22EE66238(v14);
  sub_22EE6611C();
  sub_22EE75E98(self, v16);
  if (v10)
  {
    if ((AKSIdentityCreateWithACM() & 1) == 0)
    {
LABEL_5:
      if (qword_2810B8888 != -1)
      {
        dispatch_once(&qword_2810B8888, &unk_2843A7118);
      }

      v17 = qword_2810B8880;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_22EE63F54();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          sub_22EE660E4();
          sub_22EE66070();
          sub_22EE66080();
          v20 = _os_log_send_and_compose_impl();
          v21 = v20;
          if (v20)
          {
            sub_22EE69B10(v20);
          }
        }

        else
        {
          v21 = 0;
        }

        free(v21);
      }

      if (a8)
      {
        v27 = 0;
        *a8 = v30;
      }

      else
      {
        CFRelease(v30);
        v27 = 0;
      }

      goto LABEL_29;
    }
  }

  else if ((AKSIdentityCreate() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_2810B8888 != -1)
  {
    dispatch_once(&qword_2810B8888, &unk_2843A7118);
  }

  v22 = qword_2810B8880;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    sub_22EE660F0();
    v23 = sub_22EE660C0();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (sub_22EE66090(v24))
    {
      sub_22EE660E4();
      sub_22EE66070();
      sub_22EE66080();
      v25 = _os_log_send_and_compose_impl();
      v26 = v25;
      if (v25)
      {
        sub_22EE69B10(v25);
      }
    }

    else
    {
      v26 = 0;
    }

    free(v26);
  }

  v27 = 1;
LABEL_29:
  CFRelease(v8);

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)changeSecretrForIdentityWithUUID:(id)a3 oldPasscode:(id)a4 newPasscode:(id)a5 existingSession:(unsigned int)a6 isACMCredential:(BOOL)a7 error:(id *)a8
{
  v10 = a7;
  v31 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (a8)
  {
    *a8 = 0;
  }

  sub_22EE66238(v14);
  sub_22EE6611C();
  sub_22EE75E98(self, v16);
  if (v10)
  {
    if ((AKSIdentityChangePasscodeWithACM() & 1) == 0)
    {
LABEL_5:
      if (qword_2810B8888 != -1)
      {
        dispatch_once(&qword_2810B8888, &unk_2843A7118);
      }

      v17 = qword_2810B8880;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_22EE63F54();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          sub_22EE660E4();
          sub_22EE66070();
          sub_22EE66080();
          v20 = _os_log_send_and_compose_impl();
          v21 = v20;
          if (v20)
          {
            sub_22EE69B10(v20);
          }
        }

        else
        {
          v21 = 0;
        }

        free(v21);
      }

      if (a8)
      {
        v27 = 0;
        *a8 = v30;
      }

      else
      {
        CFRelease(v30);
        v27 = 0;
      }

      goto LABEL_29;
    }
  }

  else if ((AKSIdentityChangePasscode() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_2810B8888 != -1)
  {
    dispatch_once(&qword_2810B8888, &unk_2843A7118);
  }

  v22 = qword_2810B8880;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    sub_22EE660F0();
    v23 = sub_22EE660C0();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (sub_22EE66090(v24))
    {
      sub_22EE660E4();
      sub_22EE66070();
      sub_22EE66080();
      v25 = _os_log_send_and_compose_impl();
      v26 = v25;
      if (v25)
      {
        sub_22EE69B10(v25);
      }
    }

    else
    {
      v26 = 0;
    }

    free(v26);
  }

  v27 = 1;
LABEL_29:
  CFRelease(v8);

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)unlockIdentityInSession:(unsigned int)a3 passcode:(id)a4 isACMCredential:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v23 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  v9 = sub_22EE75E98(self, a4);
  v10 = -a3;
  [v9 bytes];
  [v9 length];
  if (v7)
  {
    v11 = aks_unlock_device_with_acm();
  }

  else
  {
    v11 = aks_unlock_device();
  }

  v12 = v11;
  if (v11)
  {
    if (qword_2810B8888 != -1)
    {
      dispatch_once(&qword_2810B8888, &unk_2843A7118);
    }

    if (sub_22EE6613C(qword_2810B8880))
    {
      sub_22EE69AE8();
      v13 = sub_22EE660C0();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (sub_22EE66090(v14))
      {
        sub_22EE66108();
        sub_22EE660B0();
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_22EE69B10(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
    }
  }

  else
  {
    if (qword_2810B8888 != -1)
    {
      dispatch_once(&qword_2810B8888, &unk_2843A7118);
    }

    v17 = qword_2810B8880;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_22EE63F54();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (sub_22EE660A0(v18))
      {
        sub_22EE66070();
        sub_22EE66080();
        v19 = _os_log_send_and_compose_impl();
        v20 = v19;
        if (v19)
        {
          sub_22EE69B10(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12 == 0;
}

- (BOOL)verifyIdentityPasswordInSession:(unsigned int)a3 passcode:(id)a4 isACMCredential:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v30 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  v8 = sub_22EE75E98(self, a4);
  if (v7)
  {
    if (qword_2810B8898 != -1)
    {
      dispatch_once(&qword_2810B8898, &unk_2843A7138);
    }

    v9 = qword_2810B8890;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_22EE660F0();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (sub_22EE660A0(v10))
      {
        sub_22EE66070();
        sub_22EE66080();
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_22EE69B10(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    v17 = [v8 bytes];
    [v8 length];
    sub_22EE660CC();
    v18 = aks_verify_password_with_acm();
  }

  else
  {
    if (qword_2810B8898 != -1)
    {
      dispatch_once(&qword_2810B8898, &unk_2843A7138);
    }

    v13 = qword_2810B8890;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_22EE660F0();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (sub_22EE660A0(v14))
      {
        sub_22EE66070();
        sub_22EE66080();
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_22EE69B10(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    v17 = [v8 bytes];
    [v8 length];
    sub_22EE660CC();
    v18 = aks_verify_password();
  }

  v19 = v18;
  if (v18)
  {
    if (qword_2810B8888 != -1)
    {
      dispatch_once(&qword_2810B8888, &unk_2843A7118);
    }

    if (sub_22EE6613C(qword_2810B8880))
    {
      sub_22EE69AE8();
      v20 = sub_22EE660C0();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      if (sub_22EE66090(v21))
      {
        sub_22EE66108();
        sub_22EE660B0();
        v22 = _os_log_send_and_compose_impl();
        v23 = v22;
        if (v22)
        {
          sub_22EE69B10(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v19 userInfo:0];
    }
  }

  else
  {
    if (qword_2810B8888 != -1)
    {
      dispatch_once(&qword_2810B8888, &unk_2843A7118);
    }

    v24 = qword_2810B8880;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_22EE63F54();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (sub_22EE660A0(v25))
      {
        sub_22EE66070();
        sub_22EE66080();
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_22EE69B10(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v19 == 0;
}

- (BOOL)addPersonaWithUUID:(id)a3 toSession:(unsigned int)a4 passcode:(id)a5 error:(id *)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (a6)
  {
    *a6 = 0;
  }

  v10 = a5;
  v11 = sub_22EE66238(v9);
  sub_22EE75E98(self, v10);

  v12 = AKSIdentityAddPersona();
  if (v12)
  {
    if (qword_2810B8888 != -1)
    {
      dispatch_once(&qword_2810B8888, &unk_2843A7118);
    }

    v13 = qword_2810B8880;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_22EE660F0();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (sub_22EE66090(v14))
      {
        sub_22EE660E4();
        sub_22EE66070();
        sub_22EE66080();
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_22EE69B10(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }
  }

  else
  {
    if (qword_2810B8888 != -1)
    {
      dispatch_once(&qword_2810B8888, &unk_2843A7118);
    }

    v17 = qword_2810B8880;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_22EE63F54();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        sub_22EE66070();
        sub_22EE66080();
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_22EE69B10(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    if (a6)
    {
      *a6 = 0;
    }

    else
    {
      CFRelease(0);
    }
  }

  CFRelease(v11);

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

@end