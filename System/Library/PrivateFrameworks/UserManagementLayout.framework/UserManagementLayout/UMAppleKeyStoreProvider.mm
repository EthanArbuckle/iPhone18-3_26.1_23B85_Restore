@interface UMAppleKeyStoreProvider
- (BOOL)addPersonaWithUUID:(id)d toSession:(unsigned int)session passcode:(id)passcode error:(id *)error;
- (BOOL)bootstrapVolumeWithMountPoint:(id)point user:(unsigned int)user error:(id *)error;
- (BOOL)changeSecretrForIdentityWithUUID:(id)d oldPasscode:(id)passcode newPasscode:(id)newPasscode existingSession:(unsigned int)session isACMCredential:(BOOL)credential error:(id *)error;
- (BOOL)createIdentityWithUUID:(id)d passcode:(id)passcode existingSession:(unsigned int)session existingSessionPasscode:(id)sessionPasscode isACMCredential:(BOOL)credential error:(id *)error;
- (BOOL)deleteIdentity:(id)identity error:(id *)error;
- (BOOL)deletePersonaWithUUID:(id)d fromSession:(unsigned int)session error:(id *)error;
- (BOOL)isIdentityLoadedIntoSession:(unsigned int)session;
- (BOOL)loadIdentity:(id)identity intoSession:(unsigned int)session error:(id *)error;
- (BOOL)loginIdentity:(id)identity intoSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error;
- (BOOL)mapVolume:(id)volume toSession:(unsigned int)session withPersona:(id)persona error:(id *)error;
- (BOOL)unloadIdentityFromSession:(unsigned int)session error:(id *)error;
- (BOOL)unlockIdentityInSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error;
- (BOOL)unmapVolume:(id)volume error:(id *)error;
- (BOOL)verifyIdentityPasswordInSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error;
- (id)dataUnwrappingDataWithDeviceClassF:(id)f error:(id *)error;
- (id)dataWrappingDataWithDeviceClassF:(id)f error:(id *)error;
@end

@implementation UMAppleKeyStoreProvider

- (BOOL)bootstrapVolumeWithMountPoint:(id)point user:(unsigned int)user error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  if (error)
  {
    *error = 0;
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

      if (error)
      {
        *error = 0;
      }

      CFRelease(0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)dataWrappingDataWithDeviceClassF:(id)f error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  fCopy = f;
  v6 = fCopy;
  if (error)
  {
    *error = 0;
  }

  if ([fCopy length] < 0x21)
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

    if (error)
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

    if (error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA5B8];
      v21 = 22;
LABEL_31:
      [v19 errorWithDomain:v20 code:v21 userInfo:{0, v24, v25}];
      *error = v18 = 0;
      goto LABEL_33;
    }
  }

  v18 = 0;
LABEL_33:

  v22 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)dataUnwrappingDataWithDeviceClassF:(id)f error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  fCopy = f;
  v6 = fCopy;
  if (error)
  {
    *error = 0;
  }

  if ([fCopy length] >= 0x29)
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

    if (error)
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA5B8];
      v23 = 22;
LABEL_41:
      [v21 errorWithDomain:v22 code:v23 userInfo:{0, v26, v27}];
      *error = v16 = 0;
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

  if (error)
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

- (BOOL)deleteIdentity:(id)identity error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v6 = identityCopy;
  if (error)
  {
    *error = 0;
  }

  v7 = sub_22EE66238(identityCopy);
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

    if (error)
    {
      *error = 0;
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

- (BOOL)isIdentityLoadedIntoSession:(unsigned int)session
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

- (BOOL)loadIdentity:(id)identity intoSession:(unsigned int)session error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v7 = identityCopy;
  if (error)
  {
    *error = 0;
  }

  v8 = sub_22EE66238(identityCopy);
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

    if (error)
    {
      *error = 0;
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

- (BOOL)unloadIdentityFromSession:(unsigned int)session error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
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

    if (error)
    {
      *error = 0;
    }

    else
    {
      CFRelease(0);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)loginIdentity:(id)identity intoSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error
{
  credentialCopy = credential;
  v29 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  passcodeCopy = passcode;
  if (error)
  {
    *error = 0;
  }

  v13 = sub_22EE66238(identityCopy);
  if (!credentialCopy)
  {
    sub_22EE75E98(self, passcodeCopy);
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

      if (error)
      {
        v24 = 0;
        *error = 0;
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

- (BOOL)deletePersonaWithUUID:(id)d fromSession:(unsigned int)session error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = dCopy;
  if (error)
  {
    *error = 0;
  }

  v8 = sub_22EE66238(dCopy);
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

    if (error)
    {
      *error = 0;
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

- (BOOL)mapVolume:(id)volume toSession:(unsigned int)session withPersona:(id)persona error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  personaCopy = persona;
  if (error)
  {
    *error = 0;
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

  v16 = sub_22EE66238(personaCopy);
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

    if (error)
    {
      *error = 0;
      if (!personaCopy)
      {
        goto LABEL_44;
      }
    }

    else
    {
      CFRelease(0);
      if (!personaCopy)
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

  if (personaCopy)
  {
    goto LABEL_43;
  }

LABEL_44:

  v28 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)unmapVolume:(id)volume error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  if (error)
  {
    *error = 0;
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

      if (error)
      {
        *error = 0;
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

- (BOOL)createIdentityWithUUID:(id)d passcode:(id)passcode existingSession:(unsigned int)session existingSessionPasscode:(id)sessionPasscode isACMCredential:(BOOL)credential error:(id *)error
{
  credentialCopy = credential;
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  passcodeCopy = passcode;
  sessionPasscodeCopy = sessionPasscode;
  if (error)
  {
    *error = 0;
  }

  sub_22EE66238(dCopy);
  sub_22EE6611C();
  sub_22EE75E98(self, sessionPasscodeCopy);
  if (credentialCopy)
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

      if (error)
      {
        v27 = 0;
        *error = v30;
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

- (BOOL)changeSecretrForIdentityWithUUID:(id)d oldPasscode:(id)passcode newPasscode:(id)newPasscode existingSession:(unsigned int)session isACMCredential:(BOOL)credential error:(id *)error
{
  credentialCopy = credential;
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  passcodeCopy = passcode;
  newPasscodeCopy = newPasscode;
  if (error)
  {
    *error = 0;
  }

  sub_22EE66238(dCopy);
  sub_22EE6611C();
  sub_22EE75E98(self, newPasscodeCopy);
  if (credentialCopy)
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

      if (error)
      {
        v27 = 0;
        *error = v30;
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

- (BOOL)unlockIdentityInSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error
{
  credentialCopy = credential;
  v23 = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  v9 = sub_22EE75E98(self, passcode);
  v10 = -session;
  [v9 bytes];
  [v9 length];
  if (credentialCopy)
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

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
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

- (BOOL)verifyIdentityPasswordInSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error
{
  credentialCopy = credential;
  v30 = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  v8 = sub_22EE75E98(self, passcode);
  if (credentialCopy)
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

    bytes = [v8 bytes];
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

    bytes = [v8 bytes];
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

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v19 userInfo:0];
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

- (BOOL)addPersonaWithUUID:(id)d toSession:(unsigned int)session passcode:(id)passcode error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (error)
  {
    *error = 0;
  }

  passcodeCopy = passcode;
  v11 = sub_22EE66238(dCopy);
  sub_22EE75E98(self, passcodeCopy);

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

    if (error)
    {
      *error = 0;
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