@interface _MFDigestMD5Authenticator
- (id)responseForServerData:(id)a3;
- (void)dealloc;
- (void)setAuthenticationState:(int)a3;
- (void)setCryptInfo:(void *)a3;
@end

@implementation _MFDigestMD5Authenticator

- (void)dealloc
{
  expectedResponse = self->_expectedResponse;
  if (expectedResponse)
  {
    free(expectedResponse);
  }

  v4.receiver = self;
  v4.super_class = _MFDigestMD5Authenticator;
  [(MFSASLAuthenticator *)&v4 dealloc];
}

- (void)setAuthenticationState:(int)a3
{
  v6.receiver = self;
  v6.super_class = _MFDigestMD5Authenticator;
  [(MFSASLAuthenticator *)&v6 setAuthenticationState:?];
  if (a3 != 1)
  {
    v5 = *(self + 5);
    if (v5)
    {
      *(self + 5) = 0;
    }

    *(&self->super._authenticationState + 6) = *(&self->super._authenticationState + 6) & 0xFC | 1;
    *(&self->super._authenticationState + 2) = 0;
  }
}

- (id)responseForServerData:(id)a3
{
  v103 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MFSASLAuthenticator *)self authenticationState]!= 1)
  {
    v50 = 0;
    goto LABEL_159;
  }

  v95 = 0u;
  v94 = 0u;
  v91 = [v4 bytes];
  v92 = &v91[[v4 length]];
  v93 = 1;
  bzero_server_message(&v94);
  while (v91 < v92)
  {
    if (!v93)
    {
      goto LABEL_146;
    }

    v5 = copyToken(&v91);
    v6 = v5;
    v7 = v91;
    if (v91 >= v92)
    {
      v8 = 0;
    }

    else
    {
LABEL_5:
      v8 = *v7;
    }

    v9 = v7;
    v7 = v91;
    do
    {
      while (1)
      {
        do
        {
          v10 = v8;
          v8 = 0;
        }

        while (v10 > 0x20u);
        if (((1 << v10) & 0x100002600) == 0)
        {
          break;
        }

        v8 = 0;
        v7 = v9 + 1;
        v9 = v7;
        if (v7 < v92)
        {
          v91 = v7;
          goto LABEL_5;
        }
      }
    }

    while (v10);
    v91 = v7;
    if (v5)
    {
      if (v9 >= v92 || *v9 != 61)
      {
        v13 = vm_imap_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (v91 >= v92)
          {
            v14 = 0;
          }

          else
          {
            v14 = *v91;
          }

          buf.A = 67109120;
          buf.B = v14;
          _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "*** Unexpected character '%c', aborting", &buf, 8u);
        }

LABEL_56:

        v93 = 0;
        goto LABEL_57;
      }

      v11 = v9 + 1;
      v91 = v9 + 1;
      if (v9 + 1 >= v92)
      {
        v12 = 0;
      }

      else
      {
LABEL_18:
        v12 = *v11;
      }

      v16 = v11;
      v11 = v91;
      do
      {
        while (1)
        {
          do
          {
            v17 = v12;
            v12 = 0;
          }

          while (v17 > 0x20u);
          if (((1 << v17) & 0x100002600) == 0)
          {
            break;
          }

          v12 = 0;
          v11 = v16 + 1;
          v16 = v11;
          if (v11 < v92)
          {
            v91 = v11;
            goto LABEL_18;
          }
        }
      }

      while (v17);
      v91 = v11;
      if (![v5 caseInsensitiveCompare:@"realm"])
      {
        v22 = quoted_string(&v91);
        v23 = v22;
        if (v22)
        {
          if (v94)
          {
            v24 = vm_imap_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              buf.A = 138412290;
              *&buf.B = v6;
              v25 = v24;
              v26 = "*** Duplicate value for %@. Ignoring";
              goto LABEL_79;
            }
          }

          else
          {
            v37 = v22;
            v24 = v94;
            *&v94 = v37;
          }
        }

        else
        {
          v24 = vm_imap_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            buf.A = 138412290;
            *&buf.B = v6;
            v25 = v24;
            v26 = "*** Unable to parse %@. Ignoring";
LABEL_79:
            _os_log_impl(&dword_2720B1000, v25, OS_LOG_TYPE_DEFAULT, v26, &buf, 0xCu);
          }
        }

        goto LABEL_57;
      }

      if (![v6 caseInsensitiveCompare:@"nonce"])
      {
        v20 = quoted_string(&v91);
        if (v20)
        {
          if (!*(&v94 + 1))
          {
            objc_storeStrong(&v94 + 1, v20);
            goto LABEL_139;
          }

          v27 = vm_imap_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            buf.A = 138412290;
            *&buf.B = v6;
            _os_log_impl(&dword_2720B1000, v27, OS_LOG_TYPE_DEFAULT, "*** Duplicate value for %@. Ignoring", &buf, 0xCu);
          }

          goto LABEL_111;
        }

        v38 = vm_imap_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          buf.A = 138412290;
          *&buf.B = v6;
          _os_log_impl(&dword_2720B1000, v38, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
        }

LABEL_96:

        goto LABEL_139;
      }

      if (![v6 caseInsensitiveCompare:@"qop"])
      {
        v28 = copyQuotedTokenList(&v91);
        v20 = v28;
        if (v28)
        {
          v29 = [v28 count];
          while (v29)
          {
            v30 = [v20 objectAtIndex:--v29];
            v31 = 0;
            do
            {
              v32 = [(__CFString *)QOP_NAMES[v31] caseInsensitiveCompare:v30];
              v33 = v31 + 1;
              if (v31 > 1)
              {
                break;
              }

              ++v31;
            }

            while (v32);
            if (!v32)
            {
              v96 |= (1 << v33) & 7;
            }
          }

          goto LABEL_139;
        }

        v38 = vm_imap_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          buf.A = 138412290;
          *&buf.B = v6;
          _os_log_impl(&dword_2720B1000, v38, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
        }

        goto LABEL_96;
      }

      if ([v6 caseInsensitiveCompare:@"stale"])
      {
        if ([v6 caseInsensitiveCompare:@"maxbuf"])
        {
          if (![v6 caseInsensitiveCompare:@"charset"])
          {
            v41 = copyToken(&v91);
            v20 = v41;
            if (v41)
            {
              if (![v41 caseInsensitiveCompare:@"utf-8"])
              {
                v96 |= 0x10u;
                goto LABEL_139;
              }

              v42 = vm_imap_log();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                buf.A = 138412546;
                *&buf.B = v20;
                LOWORD(buf.D) = 2112;
                *(&buf.D + 2) = v6;
                _os_log_impl(&dword_2720B1000, v42, OS_LOG_TYPE_DEFAULT, "*** Unexpected value %@ for %@. Ignoring", &buf, 0x16u);
              }
            }

            else
            {
              v42 = vm_imap_log();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                buf.A = 138412290;
                *&buf.B = v6;
                _os_log_impl(&dword_2720B1000, v42, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
              }
            }

            goto LABEL_134;
          }

          if ([v6 caseInsensitiveCompare:@"algorithm"])
          {
            if ([v6 caseInsensitiveCompare:@"cipher-opts"])
            {
              v18 = [v6 caseInsensitiveCompare:@"rspauth"];
              v19 = copyToken(&v91);
              v20 = v19;
              if (v18)
              {
                if (!v19)
                {
                  v20 = quoted_string(&v91);
                  if (!v20)
                  {
                    v21 = vm_imap_log();
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.A = 138412290;
                      *&buf.B = v6;
                      _os_log_impl(&dword_2720B1000, v21, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Aborting", &buf, 0xCu);
                    }

                    v20 = 0;
                    v93 = 0;
                  }
                }

                goto LABEL_139;
              }

              if (v19)
              {
                if (!*(&v95 + 1))
                {
                  v47 = MFCreateDataWithString();
                  v48 = *(&v95 + 1);
                  *(&v95 + 1) = v47;
                  goto LABEL_138;
                }
              }

              else
              {
                v48 = vm_imap_log();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  buf.A = 138412290;
                  *&buf.B = v6;
                  _os_log_impl(&dword_2720B1000, v48, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
                }

LABEL_138:
              }

LABEL_139:

              goto LABEL_57;
            }

            v45 = copyQuotedTokenList(&v91);
            v20 = v45;
            if (v45)
            {
              if (v95)
              {
                goto LABEL_139;
              }

              v46 = [v45 copy];
              v42 = v95;
              *&v95 = v46;
            }

            else
            {
              v42 = vm_imap_log();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                buf.A = 138412290;
                *&buf.B = v6;
                _os_log_impl(&dword_2720B1000, v42, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
              }
            }

LABEL_134:

            goto LABEL_139;
          }

          v20 = copyToken(&v91);
          if (!v20)
          {
            v49 = quoted_string(&v91);
            if (!v49 || (v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v49 encoding:4], v49, !v20))
            {
              v20 = vm_imap_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                buf.A = 138412290;
                *&buf.B = v6;
                _os_log_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
              }

              goto LABEL_139;
            }
          }

          if (![v20 caseInsensitiveCompare:@"md5-sess"])
          {
            v96 |= 0x20u;
            goto LABEL_139;
          }

          v27 = vm_imap_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            buf.A = 138412546;
            *&buf.B = v20;
            LOWORD(buf.D) = 2112;
            *(&buf.D + 2) = v6;
            _os_log_impl(&dword_2720B1000, v27, OS_LOG_TYPE_DEFAULT, "*** Unexpected value %@ for %@. Ignoring", &buf, 0x16u);
          }

LABEL_111:

          v93 = 0;
          goto LABEL_139;
        }

        v39 = copyToken(&v91);
        v35 = v39;
        if (v39)
        {
          v40 = [v39 intValue];
          if ((v40 - 1) <= 0xFFFD)
          {
            v96 = v96 & 0xFFC0003F | (v40 << 6);
          }
        }

        else
        {
          v44 = vm_imap_log();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            buf.A = 138412290;
            *&buf.B = v6;
            _os_log_impl(&dword_2720B1000, v44, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
          }
        }
      }

      else
      {
        v34 = copyToken(&v91);
        v35 = v34;
        if (v34)
        {
          if (NSBOOLFromString(v34))
          {
            v36 = 8;
          }

          else
          {
            v36 = 0;
          }

          v96 = v96 & 0xFFFFFFF7 | v36;
        }

        else
        {
          v43 = vm_imap_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            buf.A = 138412290;
            *&buf.B = v6;
            _os_log_impl(&dword_2720B1000, v43, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
          }
        }
      }
    }

    else
    {
      if (v9 >= v92 || *v9 != 44)
      {
        v13 = vm_imap_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (v91 >= v92)
          {
            v15 = 0;
          }

          else
          {
            v15 = *v91;
          }

          buf.A = 67109120;
          buf.B = v15;
          _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "*** Unexpected character '%c', aborting", &buf, 8u);
        }

        goto LABEL_56;
      }

      v91 = v9 + 1;
    }

LABEL_57:
  }

  if (!v93)
  {
LABEL_146:
    [(_MFDigestMD5Authenticator *)self setAuthenticationState:3];
LABEL_157:
    v50 = 0;
    goto LABEL_158;
  }

  if (!*(self + 5))
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v51 = self;
    bzero_client_response_info(&v97);
    if ((v96 & 0x20) != 0)
    {
      if (MFGetRandomBytes())
      {
        v57 = CFDataCreateWithBytesNoCopy(0, &buf, 16, *MEMORY[0x277CBED00]);
        v58 = [(__CFData *)v57 mf_encodeBase64WithoutLineBreaks];
        v59 = v97;
        *&v97 = v58;

        CFRelease(v57);
        v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08x", 1];
        v61 = MFCreateDataWithString();
        v62 = *(&v97 + 1);
        *(&v97 + 1) = v61;

        if ((v96 & 4) != 0)
        {
          [(_MFDigestMD5Authenticator *)v51 setSecurityLevel:2];
          [(_MFDigestMD5Authenticator *)v51 setMaxBuffer:(v96 >> 6)];
        }

        else
        {
          [(_MFDigestMD5Authenticator *)v51 setSecurityLevel:1];
        }

        v63 = [(_MFDigestMD5Authenticator *)v51 securityLevel]- 1;
        v64 = v63 > 2 ? 0 : QOP_NAMES[v63];
        v65 = MFCreateDataWithString();
        v66 = v98;
        *&v98 = v65;

        v67 = [(MFSASLAuthenticator *)v51 account];
        v68 = MEMORY[0x277CCACA8];
        v69 = [objc_opt_class() saslProfileName];
        v70 = [v67 hostname];
        v71 = [v68 stringWithFormat:@"%@/%@", v69, v70];

        v72 = [v67 username];
        v73 = MFCreateDataWithString();
        v74 = *(&v98 + 1);
        *(&v98 + 1) = v73;

        v75 = [v67 password];
        v76 = MFCreateDataWithString();
        v77 = v99;
        *&v99 = v76;

        v78 = MFCreateDataWithString();
        v79 = *(&v99 + 1);
        *(&v99 + 1) = v78;

        v80 = [v94 copy];
        v81 = v100;
        *&v100 = v80;

        v82 = _createResponseData(v51, &v94, &v97, 1);
        v83 = *(&v100 + 1);
        *(&v100 + 1) = v82;

        if (v82)
        {
          v84 = [(_MFDigestMD5Authenticator *)v51 securityLevel];
          if (v84 == 2)
          {
            memset(&buf, 0, sizeof(buf));
            [(_MFDigestMD5Authenticator *)v51 setCryptInfo:malloc_type_calloc(1uLL, 0x28uLL, 0x10000400A747E1EuLL)];
            CC_MD5_Init(&buf);
            CC_MD5_Update(&buf, v101, 0x10u);
            CC_MD5_Update(&buf, "Digest session key to server-to-client signing key magic constant", 0x41u);
            CC_MD5_Final(&v51->_expectedResponse[3], &buf);
            CC_MD5_Init(&buf);
            CC_MD5_Update(&buf, v101, 0x10u);
            CC_MD5_Update(&buf, "Digest session key to client-to-server signing key magic constant", 0x41u);
            CC_MD5_Final(&v51->_expectedResponse[1], &buf);
          }

          else if (v84 == 3)
          {
            v85 = vm_imap_log();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.A) = 0;
              _os_log_impl(&dword_2720B1000, v85, OS_LOG_TYPE_DEFAULT, "*** SASLPrivacySecurityLevel is not supported.", &buf, 2u);
            }
          }

          v86 = _createResponseData(v51, &v94, &v97, 0);
          [(_MFDigestMD5Authenticator *)v51 setExpectedResponse:v86];

          v87 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
          v50 = v87;
          if (*(&v98 + 1))
          {
            _appendQuotedString(v87, "username", *(&v98 + 1));
          }

          if (v94)
          {
            _appendQuotedString(v50, "realm", v94);
          }

          if (*(&v94 + 1))
          {
            _appendQuotedString(v50, "nonce", *(&v94 + 1));
          }

          _appendQuotedString(v50, "cnonce", v97);
          _appendValue(v50, "nc", *(&v97 + 1));
          _appendValue(v50, "qop", v98);
          _appendQuotedString(v50, "digest-uri", *(&v99 + 1));
          _appendValue(v50, "response", *(&v100 + 1));
          if (*(&v51->super._authenticationState + 2))
          {
            v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(&v51->super._authenticationState + 2)];
            v89 = MFCreateDataWithString();

            _appendValue(v50, "maxbuf", v89);
          }

          if ((v96 & 0x10) != 0)
          {
            v90 = [@"utf-8" dataUsingEncoding:1];
            _appendValue(v50, "charset", v90);
          }

          goto LABEL_176;
        }
      }
    }

    else
    {
      v52 = vm_imap_log();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.A) = 0;
        _os_log_impl(&dword_2720B1000, v52, OS_LOG_TYPE_DEFAULT, "*** Missing algorithm=md5-sess in server response", &buf, 2u);
      }
    }

    [(_MFDigestMD5Authenticator *)v51 setAuthenticationState:3];
    v50 = 0;
LABEL_176:
    __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(&v97);
    goto LABEL_158;
  }

  if (!*(&v95 + 1))
  {
    v53 = vm_imap_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.A) = 0;
      v54 = "*** Missing rspauth value in server message";
LABEL_155:
      _os_log_impl(&dword_2720B1000, v53, OS_LOG_TYPE_DEFAULT, v54, &buf, 2u);
    }

LABEL_156:

    [(_MFDigestMD5Authenticator *)self setAuthenticationState:3];
    goto LABEL_157;
  }

  if (([*(&v95 + 1) isEqual:?] & 1) == 0)
  {
    v53 = vm_imap_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.A) = 0;
      v54 = "*** Bogus rspauth value returned from the server";
      goto LABEL_155;
    }

    goto LABEL_156;
  }

  [(_MFDigestMD5Authenticator *)self setAuthenticationState:4];
  v50 = [MEMORY[0x277CBEA90] data];
LABEL_158:
  __destructor_8_s0_s8_s16_s24(&v94);
LABEL_159:

  v55 = *MEMORY[0x277D85DE8];

  return v50;
}

- (void)setCryptInfo:(void *)a3
{
  expectedResponse = self->_expectedResponse;
  if (expectedResponse)
  {
    free(expectedResponse);
  }

  self->_expectedResponse = a3;
}

@end