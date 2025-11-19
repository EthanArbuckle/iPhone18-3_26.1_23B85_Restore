@interface POKerberosHelper
- (BOOL)checkForValidKerberosTGT:(id)a3;
- (BOOL)destroyCredentialForUUID:(id)a3;
- (gss_cred_id_t_desc_struct)acquireCredentialForUUID:(id)a3;
- (id)importKerberosEntry:(id)a3 error:(id *)a4;
- (void)exchangeKerberosTGTForEntry:(id)a3;
@end

@implementation POKerberosHelper

- (id)importKerberosEntry:(id)a3 error:(id *)a4
{
  v178 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 realm];
    *buf = 136315650;
    *&buf[4] = "[POKerberosHelper importKerberosEntry:error:]";
    *&buf[12] = 2114;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    *&buf[24] = self;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_DEFAULT, "%s realm = %{public}@ on %@", buf, 0x20u);
  }

  v8 = objc_alloc_init(MEMORY[0x277D3D200]);
  v9 = [v5 ticketKeyPath];
  [v8 setTicketKeyPath:v9];

  v10 = [v5 realm];
  [v8 setRealm:v10];

  context = 0;
  opt = 0;
  client = 0;
  cache[1] = 0;
  cache[0] = 0;
  v157 = 0;
  v156 = 0;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v171 = 0u;
  memset(buf, 0, sizeof(buf));
  memset(&v155, 0, sizeof(v155));
  krb5_keyblock_zero();
  v154 = 0;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v149 = 0;
  v148 = 0;
  krb5_data_zero();
  v11 = MEMORY[0x277CCACA8];
  v12 = [v5 clientName];
  v13 = [v5 realm];
  v14 = [v11 stringWithFormat:@"%@@%@", v12, v13];

  inited = krb5_init_context(&context);
  if (inited)
  {
    v143 = MEMORY[0x277D85DD0];
    v144 = 3221225472;
    v145 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke;
    v146 = &__block_descriptor_36_e14___NSError_8__0l;
    v147 = inited;
    v16 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke();
    goto LABEL_5;
  }

  v142 = 0;
  v141 = 0;
  krb5_data_zero();
  v19 = [v5 messageBuffer];
  [v19 bytes];
  v20 = [v5 messageBuffer];
  [v20 length];
  krb5_data_copy();

  v21 = [v14 componentsSeparatedByString:@"@"];
  v22 = [v21 count] - 1;

  if (v22 < 2)
  {
    v25 = krb5_parse_name(context, [v14 UTF8String], &client);
    if (v25)
    {
      v131 = MEMORY[0x277D85DD0];
      v132 = 3221225472;
      v133 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_86;
      v134 = &__block_descriptor_36_e14___NSError_8__0l;
      v135 = v25;
      v26 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_86();
      goto LABEL_5;
    }
  }

  else
  {
    v23 = krb5_parse_name_flags(0, [v14 UTF8String], 4, &client);
    if (v23)
    {
      v136 = MEMORY[0x277D85DD0];
      v137 = 3221225472;
      v138 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_82;
      v139 = &__block_descriptor_36_e14___NSError_8__0l;
      v140 = v23;
      v24 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_82();
      goto LABEL_5;
    }
  }

  [v5 encryptionKeyType];
  v27 = krb5_enctype_valid();
  if (v27)
  {
    v126 = MEMORY[0x277D85DD0];
    v127 = 3221225472;
    v128 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_90;
    v129 = &__block_descriptor_36_e14___NSError_8__0l;
    v130 = v27;
    v28 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_90();
  }

  else
  {
    [v5 encryptionKeyType];
    v29 = [v5 sessionKey];
    [v29 bytes];
    v30 = [v5 sessionKey];
    [v30 length];
    v31 = krb5_keyblock_init();

    if (v31)
    {
      v121 = MEMORY[0x277D85DD0];
      v122 = 3221225472;
      v123 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_94;
      v124 = &__block_descriptor_36_e14___NSError_8__0l;
      v125 = v31;
      v32 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_94();
    }

    else
    {
      init_creds_opt_alloc = krb5_get_init_creds_opt_alloc(context, &opt);
      if (init_creds_opt_alloc)
      {
        v116 = MEMORY[0x277D85DD0];
        v117 = 3221225472;
        v118 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_98;
        v119 = &__block_descriptor_36_e14___NSError_8__0l;
        v120 = init_creds_opt_alloc;
        v34 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_98();
      }

      else
      {
        krb5_get_init_creds_opt_set_forwardable(opt, 1);
        krb5_get_init_creds_opt_set_proxiable(opt, 1);
        krb5_get_init_creds_opt_set_renew_life(opt, 2592000);
        krb5_get_init_creds_opt_set_canonicalize(context, opt);
        krb5_get_init_creds_opt_set_win2k();
        v35 = krb5_init_creds_init();
        if (v35)
        {
          v111 = MEMORY[0x277D85DD0];
          v112 = 3221225472;
          v113 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_102;
          v114 = &__block_descriptor_36_e14___NSError_8__0l;
          v115 = v35;
          v36 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_102();
        }

        else
        {
          v37 = krb5_init_creds_set_nonce();
          if (v37)
          {
            v106 = MEMORY[0x277D85DD0];
            v107 = 3221225472;
            v108 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_106;
            v109 = &__block_descriptor_36_e14___NSError_8__0l;
            v110 = v37;
            v38 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_106();
          }

          else
          {
            v39 = krb5_init_creds_set_keyblock();
            if (v39)
            {
              v101 = MEMORY[0x277D85DD0];
              v102 = 3221225472;
              v103 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_110;
              v104 = &__block_descriptor_36_e14___NSError_8__0l;
              v105 = v39;
              v40 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_110();
            }

            else
            {
              v41 = krb5_init_creds_step();
              if (v41)
              {
                v96 = MEMORY[0x277D85DD0];
                v97 = 3221225472;
                v98 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_114;
                v99 = &__block_descriptor_36_e14___NSError_8__0l;
                v100 = v41;
                v42 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_114();
              }

              else
              {
                krb5_data_free();
                krb5_data_free();
                if (krb5_cc_cache_match(context, client, cache) && (v43 = krb5_cc_new_unique(context, "API", 0, cache)) != 0)
                {
                  v91 = MEMORY[0x277D85DD0];
                  v92 = 3221225472;
                  v93 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_119;
                  v94 = &__block_descriptor_36_e14___NSError_8__0l;
                  v95 = v43;
                  v44 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_119();
                }

                else
                {
                  v45 = krb5_init_creds_store();
                  if (v45)
                  {
                    v86 = MEMORY[0x277D85DD0];
                    v87 = 3221225472;
                    v88 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_123;
                    v89 = &__block_descriptor_36_e14___NSError_8__0l;
                    v90 = v45;
                    v46 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_123();
                  }

                  else
                  {
                    v47 = krb5_init_creds_store_config();
                    if (v47)
                    {
                      v81 = MEMORY[0x277D85DD0];
                      v82 = 3221225472;
                      v83 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_127;
                      v84 = &__block_descriptor_36_e14___NSError_8__0l;
                      v85 = v47;
                      v48 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_127();
                    }

                    else
                    {
                      v169 = 0;
                      v168 = 0;
                      uuid = krb5_cc_get_uuid();
                      if (uuid)
                      {
                        v76 = MEMORY[0x277D85DD0];
                        v77 = 3221225472;
                        v78 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_131;
                        v79 = &__block_descriptor_36_e14___NSError_8__0l;
                        v80 = uuid;
                        v50 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_131();
                      }

                      else
                      {
                        v51 = krb5_uuid_to_string();
                        v52 = [MEMORY[0x277CCACA8] stringWithCString:v51 encoding:4];
                        [v8 setCacheName:v52];

                        free(v51);
                        creds = krb5_init_creds_get_creds();
                        if (creds)
                        {
                          v71 = MEMORY[0x277D85DD0];
                          v72 = 3221225472;
                          v73 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_135;
                          v74 = &__block_descriptor_36_e14___NSError_8__0l;
                          v75 = creds;
                          v54 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_135();
                        }

                        else
                        {
                          v55 = decode_Ticket();
                          if (v55)
                          {
                            v66 = MEMORY[0x277D85DD0];
                            v67 = 3221225472;
                            v68 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_139;
                            v69 = &__block_descriptor_36_e14___NSError_8__0l;
                            v70 = v55;
                            v56 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_139();
                          }

                          else
                          {
                            krb5_free_cred_contents(context, buf);
                            if (v153)
                            {
                              v57 = *v153 >= 0x10000;
                            }

                            else
                            {
                              v57 = 0;
                            }

                            free_Ticket();
                            krb5_free_principal(context, client);
                            principal = krb5_cc_get_principal(context, cache[0], &client);
                            if (principal)
                            {
                              v64[1] = MEMORY[0x277D85DD0];
                              v64[2] = 3221225472;
                              v64[3] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_143;
                              v64[4] = &__block_descriptor_36_e14___NSError_8__0l;
                              v65 = principal;
                              v59 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_143();
                            }

                            else
                            {
                              v64[0] = 0;
                              if (krb5_unparse_name(context, client, v64))
                              {
                                v60 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_147();
                              }

                              else
                              {
                                v61 = [MEMORY[0x277CCACA8] stringWithCString:v64[0] encoding:4];
                                [v8 setUpn:v61];

                                free(v64[0]);
                                v64[0] = 0;
                                v62 = PO_LOG_POKerberosHelper();
                                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                                {
                                  v63 = [v5 realm];
                                  *v162 = 136315650;
                                  v163 = "[POKerberosHelper importKerberosEntry:error:]";
                                  v164 = 2114;
                                  v165 = v63;
                                  v166 = 2112;
                                  v167 = self;
                                  _os_log_impl(&dword_25E831000, v62, OS_LOG_TYPE_DEFAULT, "%s Successful for realm = %{public}@ on %@", v162, 0x20u);
                                }

                                if (v57 || [MEMORY[0x277D3D228] forceKerberosTGTExchange])
                                {
                                  [v8 setExchangeRequired:1];
                                }

                                [v8 setImportSuccessful:1];
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_5:
  if (opt)
  {
    krb5_get_init_creds_opt_free(context, opt);
  }

  if (cache[0])
  {
    krb5_cc_close(context, cache[0]);
  }

  krb5_free_keyblock_contents(context, &v155);
  krb5_free_cred_contents(context, buf);
  MEMORY[0x25F8C1CD0](context);
  krb5_data_free();
  krb5_free_principal(context, client);

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_context failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_82()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_parse_name failed when importing enterprise kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_86()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_parse_name failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_90()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_enctype_valid failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_94()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_keyblock_init failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_98()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_get_init_creds_opt_alloc failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_102()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_init failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_106()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_set_nonce failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_110()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_set_keyblock failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_114()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_step failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_119()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_new_unique failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_123()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_store failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_127()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_store_config failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_131()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_get_uuid failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_135()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_get_creds failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_139()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"decode_Ticket failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_143()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_get_principal failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_147()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_unparse_name failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

- (void)exchangeKerberosTGTForEntry:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 realm];
    *buf = 136315650;
    *&buf[4] = "[POKerberosHelper exchangeKerberosTGTForEntry:]";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    *&buf[24] = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s realm = %{public}@ on %@", buf, 0x20u);
  }

  cache = 0;
  context = 0;
  v55 = 0;
  v56 = 0;
  v38 = 0;
  creds = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(buf, 0, sizeof(buf));
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  inited = krb5_init_context(&context);
  if (inited)
  {
    v8 = inited;
    v9 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke();
    goto LABEL_11;
  }

  v10 = [v4 cacheName];
  [v10 UTF8String];
  v8 = krb5_string_to_uuid();

  if (v8)
  {
    v11 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_152();
    goto LABEL_11;
  }

  v12 = krb5_cc_resolve_by_uuid();
  if (v12)
  {
    v8 = v12;
    v13 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_156();
    goto LABEL_11;
  }

  principal = krb5_cc_get_principal(context, cache, buf);
  if (principal)
  {
    v8 = principal;
    v15 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_160();
    goto LABEL_11;
  }

  realm = krb5_principal_get_realm();
  if (realm)
  {
    v34 = realm;
    v19 = krb5_make_principal();
    if (v19)
    {
      v8 = v19;
      v20 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_162();
    }

    else
    {
      credentials = krb5_get_credentials(context, 1, cache, buf, &v38);
      if (credentials)
      {
        v8 = credentials;
        v22 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_166();
      }

      else
      {
        *&v35[64] = time(0) + 604800;
        v23 = krb5_copy_principal(context, *&v38->magic, v35);
        if (v23)
        {
          v8 = v23;
          v24 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_170();
        }

        else
        {
          v25 = krb5_copy_principal(context, v38->client, &v35[8]);
          if (v25)
          {
            v8 = v25;
            v26 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_174();
          }

          else
          {
            kdc_cred = krb5_get_kdc_cred();
            if (kdc_cred)
            {
              v8 = kdc_cred;
              v28 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_175();
            }

            else
            {
              v29 = krb5_cc_initialize(context, cache, *&creds->magic);
              if (v29)
              {
                v8 = v29;
                v30 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_179();
              }

              else
              {
                v31 = krb5_cc_store_cred(context, cache, creds);
                if (!v31)
                {
                  [v4 setExchangeRequired:{0, "krbtgt", v34, 0}];
                  [v4 setFailedToConnect:0];
                  v16 = PO_LOG_POKerberosHelper();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    v33 = [v4 realm];
                    *v41 = 136315650;
                    v42 = "[POKerberosHelper exchangeKerberosTGTForEntry:]";
                    v43 = 2114;
                    v44 = v33;
                    v45 = 2112;
                    v46 = self;
                    _os_log_impl(&dword_25E831000, v16, OS_LOG_TYPE_DEFAULT, "%s Success for realm = %{public}@ on %@", v41, 0x20u);
                  }

LABEL_17:

                  goto LABEL_18;
                }

                v8 = v31;
                v32 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_183();
              }
            }
          }
        }
      }
    }

LABEL_11:
    if (v8 == -1765328347)
    {
      [v4 setExchangeRequired:0];
      v16 = PO_LOG_POKerberosHelper();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [POKerberosHelper exchangeKerberosTGTForEntry:v4];
      }
    }

    else
    {
      if (v8 != -1765328228)
      {
        goto LABEL_18;
      }

      [v4 setFailedToConnect:1];
      v16 = PO_LOG_POKerberosHelper();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [POKerberosHelper exchangeKerberosTGTForEntry:v4];
      }
    }

    goto LABEL_17;
  }

LABEL_18:
  if (cache)
  {
    krb5_cc_close(context, cache);
  }

  if (creds)
  {
    krb5_free_creds(context, creds);
  }

  if (v38)
  {
    krb5_free_creds(context, v38);
  }

  krb5_free_cred_contents(context, buf);
  krb5_free_cred_contents(context, v35);
  MEMORY[0x25F8C1CD0](context);

  v17 = *MEMORY[0x277D85DE8];
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_context failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_152()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_string_to_uuid failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_156()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_resolve_by_uuid failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_160()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_get_principal failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_162()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_make_principal failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_166()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_get_credentials failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_170()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_copy_principal failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_174()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_copy_principal failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_175()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_get_kdc_cred failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_179()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_initialize failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_183()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_store_cred failed when importing kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)checkForValidKerberosTGT:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POKerberosHelper checkForValidKerberosTGT:];
  }

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  if (v6)
  {
    cred_handle = [(POKerberosHelper *)self acquireCredentialForUUID:v6];
    v7 = cred_handle != 0;
    if (cred_handle)
    {
      minor_status = 0;
      gss_release_cred(&minor_status, &cred_handle);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (gss_cred_id_t_desc_struct)acquireCredentialForUUID:(id)a3
{
  v3 = a3;
  v4 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POKerberosHelper acquireCredentialForUUID:];
  }

  if (!v3)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v5 = [v3 UUIDString];
  if (([(__CFString *)v5 isEqualToString:&stru_287080C08]& 1) != 0 || (v6 = CFUUIDCreateFromString(0, v5)) == 0)
  {
    *lifetime = 0;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = GSSCreateCredentialFromUUID(v6);
  CFRelease(v7);
  *lifetime = 0;
  if (!v8)
  {
LABEL_14:
    v11 = MEMORY[0x277CCACA8];
    v12 = [v3 UUIDString];
    v13 = [v11 stringWithFormat:@"failed to find credential: %@", v12];

    v14 = PO_LOG_POKerberosHelper();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [POKerberosHelper acquireCredentialForUUID:];
    }

    v8 = 0;
    goto LABEL_17;
  }

  v9 = gss_inquire_cred(&lifetime[1], v8, 0, lifetime, 0, 0);
  if (lifetime[0])
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v8 = 0;
  }

LABEL_17:

LABEL_19:
  return v8;
}

- (BOOL)destroyCredentialForUUID:(id)a3
{
  v3 = a3;
  v4 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POKerberosHelper destroyCredentialForUUID:];
  }

  if (v3)
  {
    if (([(__CFString *)v3 isEqualToString:&stru_287080C08]& 1) == 0 && (v5 = CFUUIDCreateFromString(0, v3)) != 0 && (v6 = v5, cred_handle = GSSCreateCredentialFromUUID(v5), CFRelease(v6), cred_handle))
    {
      min_stat = 0;
      v7 = gss_destroy_cred(&min_stat, &cred_handle) == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(v0 + 32)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)exchangeKerberosTGTForEntry:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)exchangeKerberosTGTForEntry:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checkForValidKerberosTGT:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)acquireCredentialForUUID:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)acquireCredentialForUUID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_25E831000, v0, v1, "Error using cached credential: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)destroyCredentialForUUID:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end