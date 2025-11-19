id nwswifttls_copy_definition()
{
  if (nwswifttls_copy_definition_onceToken != -1)
  {
    nwswifttls_copy_definition_cold_1();
  }

  v1 = nwswifttls_copy_definition_definition;

  return v1;
}

id nwswifttlsrecord_copy_definition()
{
  if (nwswifttlsrecord_copy_definition_onceToken != -1)
  {
    nwswifttlsrecord_copy_definition_cold_1();
  }

  v1 = nwswifttlsrecord_copy_definition_definition;

  return v1;
}

char *nwswifttls_copy_options(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x10F0040BA95764DuLL);
    v5 = v4;
    if (v4)
    {
      nwswifttls_copy_options_contents(v4, a2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *nwswifttls_copy_options_contents(char *result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    v4 = *(a2 + 144);
    if (v4)
    {
      v5 = _Block_copy(v4);
      v6 = *(v3 + 18);
      *(v3 + 18) = v5;
    }

    v7 = *(a2 + 152);
    if (v7)
    {
      objc_storeStrong(v3 + 19, v7);
    }

    v8 = *(a2 + 160);
    if (v8)
    {
      v9 = _Block_copy(v8);
      v10 = *(v3 + 20);
      *(v3 + 20) = v9;
    }

    v11 = *(a2 + 168);
    if (v11)
    {
      objc_storeStrong(v3 + 21, v11);
    }

    v12 = *(a2 + 176);
    if (v12)
    {
      v13 = _Block_copy(v12);
      v14 = *(v3 + 22);
      *(v3 + 22) = v13;
    }

    v15 = *(a2 + 184);
    if (v15)
    {
      objc_storeStrong(v3 + 23, v15);
    }

    v16 = *(a2 + 336);
    if (v16)
    {
      v17 = _Block_copy(v16);
      v18 = *(v3 + 42);
      *(v3 + 42) = v17;
    }

    v19 = *(a2 + 280);
    if (v19)
    {
      *(v3 + 35) = CFArrayCreateCopy(*MEMORY[0x1E695E480], v19);
    }

    v20 = *(a2 + 48);
    if (v20)
    {
      v21 = xpc_copy(v20);
      v22 = *(v3 + 6);
      *(v3 + 6) = v21;
    }

    v23 = *(a2 + 40);
    if (v23)
    {
      v24 = xpc_copy(v23);
      v25 = *(v3 + 5);
      *(v3 + 5) = v24;
    }

    v26 = *(a2 + 232);
    if (v26)
    {
      v27 = xpc_copy(v26);
      v28 = *(v3 + 29);
      *(v3 + 29) = v27;
    }

    v29 = *(a2 + 136);
    if (v29)
    {
      objc_storeStrong(v3 + 17, v29);
    }

    *(v3 + 369) = *(v3 + 369) & 0xFF7FFFFF | (((*(a2 + 369) >> 23) & 1) << 23);
    v30 = *(a2 + 192);
    if (v30)
    {
      objc_storeStrong(v3 + 24, v30);
    }

    v31 = *(a2 + 8);
    if (v31)
    {
      *(v3 + 1) = strdup(v31);
    }

    if (*(a2 + 304))
    {
      v3[304] = *(a2 + 304);
    }

    if (*(a2 + 305))
    {
      v3[305] = *(a2 + 305);
    }

    *(v3 + 167) = *(a2 + 334);
    v32 = *(a2 + 56);
    if (v32)
    {
      objc_storeStrong(v3 + 7, v32);
    }

    v33 = *(a2 + 384);
    if (v33)
    {
      *(v3 + 48) = CFRetain(v33);
    }

    if (*(a2 + 408))
    {
      v3[408] |= 1u;
    }

    v34 = *(a2 + 392);
    if (v34)
    {
      *(v3 + 49) = CFRetain(v34);
    }

    v35 = *(a2 + 400);
    if (v35)
    {
      objc_storeStrong(v3 + 50, v35);
    }

    result = *(a2 + 72);
    if (result)
    {
      v36 = xpc_copy(result);
      v37 = *(v3 + 9);
      *(v3 + 9) = v36;

      return MEMORY[0x1EEE66BB8]();
    }
  }

  return result;
}

nw_protocol *nwswifttls_create()
{
  v0 = objc_alloc_init(NWConcrete_nwswifttls);
  v1 = v0;
  if (v0)
  {
    p_protocol = &v0->protocol;
    v0->protocol.identifier = &g_nwswifttls_identifier;
    v0->protocol.callbacks = &g_nwswifttls_callbacks;
    v3 = v0;
    v3->protocol.handle = v3;
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
  }

  else
  {
    p_protocol = 0;
  }

  return p_protocol;
}

uint64_t nwswifttls_add_input_handler(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = 0;
      if (!a2 || *(a1 + 48))
      {
        goto LABEL_12;
      }

      v6 = *(a2 + 24);
      if (v6)
      {
        v7 = *(v6 + 112);
        if (v7)
        {
          v8 = v7(a2);
          if (v8 && (v9 = nw_parameters_copy_protocol_options_legacy(), v10 = *(v4 + 9), *(v4 + 9) = v9, v10, *(v4 + 9)))
          {
            v11 = nw_protocol_copy_swift_tls_definition();
            v12 = MEMORY[0x1B274E490]();
            v13 = *(v4 + 10);
            *(v4 + 10) = v12;

            uuid_copy(v4 + 8, a2);
            *(a2 + 32) = v4 + 8;
            *(a1 + 48) = a2;
            v5 = 1;
          }

          else
          {
            v5 = 0;
          }

          goto LABEL_12;
        }
      }
    }

    v5 = 0;
LABEL_12:

    return v5;
  }

  return 0;
}

void nwswifttls_connected(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_45;
    }

    v5 = *(a1 + 48);
    if (!v5)
    {
      goto LABEL_45;
    }

    v6 = *(v5 + 24);
    if (!v6)
    {
      goto LABEL_45;
    }

    v7 = *(v6 + 40);
    if (!v7)
    {
      goto LABEL_45;
    }

    v7(*(a1 + 48), a2);
    if (*(a1 + 32) != a2)
    {
      goto LABEL_45;
    }

    if (*(v4 + 287) == 1)
    {
      (*(*(v5 + 24) + 40))(v5, a1);
LABEL_45:

      return;
    }

    if (*(v4 + 286))
    {
      goto LABEL_45;
    }

    *(v4 + 286) = 1;
    v4[40] = 0;
    v8 = (*(*(*(a1 + 48) + 24) + 112))();
    *(v4 + 64) = nwswifttls_get_transport_protocol(v8);
    if (os_variant_allows_internal_security_policies() && nw_parameters_get_enable_tls_keylog())
    {
      *(v4 + 282) = 1;
    }

    if (nw_parameters_get_server_mode())
    {
      *(v4 + 304) = 1;
      if (nwswifttls_configure_with_sec_protocol_options(a1))
      {
        v9 = v4[31];
        v10 = v4[42];
        if (v10 && v4[43])
        {
          v11 = _Block_copy(v10);
          v12 = v4[43];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __nwswifttls_connected_block_invoke;
          aBlock[3] = &unk_1E7B2E540;
          v13 = v4;
          v53 = v13;
          v54 = v12;
          v55 = v11;
          v14 = v11;
          v15 = v12;
          v16 = _Block_copy(aBlock);
          v17 = [_TtC10nwswifttls20STLSServerHandshaker alloc];
          LOBYTE(v50) = *(v13 + 224);
          v18 = [(STLSServerHandshaker *)v17 init:v13[34] serverKey:v13[39] quicTransportParameters:v9 alpn:v13[33] EPSKs:v13[41] rawEPSKsEnabled:*(v13 + 352) epskSelectionBlock:v16 enableEarlyData:v50];
          v19 = v13[37];
          v13[37] = v18;
        }

        else
        {
          v26 = v4[45];
          v27 = [_TtC10nwswifttls20STLSServerHandshaker alloc];
          v28 = v4[34];
          if (v26)
          {
            v29 = [(STLSServerHandshaker *)v27 init:v28 quicTransportParameters:v9 alpn:v4[33] pakeContext:v4[45] pakeClientIdentity:v4[46] pakeServerIdentity:v4[47] pakePasswordVerifier:v4[48]];
          }

          else
          {
            LOBYTE(v50) = *(v4 + 224);
            v29 = [(STLSServerHandshaker *)v27 init:v28 serverKey:v4[39] quicTransportParameters:v9 alpn:v4[33] EPSKs:v4[41] rawEPSKsEnabled:*(v4 + 352) epskSelectionBlock:0 enableEarlyData:v50];
          }

          v42 = v4[37];
          v4[37] = v29;
        }

        v43 = v4[41];
        v4[41] = 0;

        v44 = v4[42];
        v4[42] = 0;

        v45 = v4[43];
        v4[43] = 0;

        v46 = v4[31];
        v4[31] = 0;

        v47 = v4[33];
        v4[33] = 0;

        v48 = v4[39];
        if (v48)
        {
          CFRelease(v48);
        }

        v4[39] = 0;
        if (!v4[37])
        {
          nwswifttls_disconnect(a1);
        }

LABEL_43:
      }
    }

    else
    {
      *(v4 + 304) = 0;
      if (nwswifttls_configure_with_sec_protocol_options(a1))
      {
        v9 = v4[29];
        v20 = v4[31];
        if (*(v4 + 280) || *(v4 + 281))
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v4 + 280)];
          [v21 addObject:v22];

          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v4 + 281)];
          [v21 addObject:v23];
        }

        else
        {
          v21 = 0;
        }

        v24 = v4[41];
        if (v24)
        {
          v25 = [v24 objectAtIndexedSubscript:0];
        }

        else
        {
          v25 = 0;
        }

        v30 = v4[45];
        v31 = [_TtC10nwswifttls20STLSClientHandshaker alloc];
        if (v30)
        {
          v32 = [(STLSClientHandshaker *)v31 init:v4[34] quicTransportParameters:v20 alpn:v4[33] sessionState:v9 ticketRequest:v21 pakeContext:v4[45] pakeClientIdentity:v4[46] pakeServerIdentity:v4[47] pakeClientPasswordVerifier:v4[48]];
        }

        else
        {
          BYTE1(v51) = *(v4 + 224);
          LOBYTE(v51) = *(v4 + 352);
          LOWORD(v49) = *(v4 + 142);
          v32 = [(STLSClientHandshaker *)v31 init:v4[30] serverName:v4[34] quicTransportParameters:v20 alpn:v4[33] sessionState:v9 ticketRequest:v21 keyExchangeGroup:v49 externalPreSharedKey:v25 rawEPSKsEnabled:v51 enableEarlyData:?];
        }

        v33 = v4[37];
        v4[37] = v32;

        v34 = v4[41];
        v4[41] = 0;

        v35 = v4[30];
        v4[30] = 0;

        v36 = v4[31];
        v4[31] = 0;

        v37 = v4[33];
        v4[33] = 0;

        v38 = v4[34];
        v4[34] = 0;

        v39 = v4[37];
        if (v39)
        {
          v40 = [v39 startHandshake];
          v41 = v40;
          if (v40)
          {
            nwswifttls_add_message(v4, 0, [v40 bytes], objc_msgSend(v40, "length"));
            nwswifttls_send_messages(v4, 0);
            nwswifttls_update_encryption_secrets(v4);
          }

          else
          {
            nwswifttls_disconnect(a1);
          }
        }

        else
        {
          nwswifttls_disconnect(a1);
        }

        goto LABEL_43;
      }
    }

    goto LABEL_45;
  }
}

uint64_t nwswifttls_get_transport_protocol(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  v2 = nw_protocol_stack_copy_original_proxied_transport_protocol();
  if (v2 || (v2 = nw_protocol_stack_copy_transport_protocol(v1)) != 0)
  {
    v3 = v2;
    v4 = nw_protocol_options_copy_definition(v2);
    if (v4)
    {
      v5 = nw_protocol_copy_quic_connection_definition();
      if (MEMORY[0x1B274E290](v4, v5))
      {
      }

      else
      {
        v7 = nw_protocol_copy_quic_stream_definition();
        v8 = MEMORY[0x1B274E290](v4, v7);

        if ((v8 & 1) == 0)
        {
          v9 = nw_protocol_copy_tcp_definition();
          v6 = MEMORY[0x1B274E290](v4, v9);

          goto LABEL_11;
        }
      }

      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

LABEL_11:

    goto LABEL_12;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

uint64_t nwswifttls_configure_with_sec_protocol_options(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 40);
    v3 = v2;
    if (v2)
    {
      v4 = v2[9];
      v6 = v2;
      v1 = nw_protocol_options_access_handle();
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t __nwswifttls_configure_with_sec_protocol_options_block_invoke(uint64_t a1, uint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_29;
  }

  result = *(a2 + 336);
  if (!result)
  {
    goto LABEL_54;
  }

  *(*(a1 + 32) + 88) = (*(result + 16))(result, 0);
  *(*(a1 + 32) + 96) = (*(*(a2 + 336) + 16))();
  *(*(a1 + 32) + 104) = (*(*(a2 + 336) + 16))();
  *(*(a1 + 32) + 112) = (*(*(a2 + 336) + 16))();
  v5 = _Block_copy(*(a2 + 144));
  v6 = *(a1 + 32);
  v7 = *(v6 + 184);
  *(v6 + 184) = v5;

  v8 = _Block_copy(*(a2 + 160));
  v9 = *(a1 + 32);
  v10 = *(v9 + 192);
  *(v9 + 192) = v8;

  objc_storeStrong((*(a1 + 32) + 200), *(a2 + 168));
  v11 = _Block_copy(*(a2 + 176));
  v12 = *(a1 + 32);
  v13 = *(v12 + 208);
  *(v12 + 208) = v11;

  objc_storeStrong((*(a1 + 32) + 216), *(a2 + 184));
  if ((nwswifttls_configure_server_raw_public_key_certificate(*(a1 + 32), a2) & 1) == 0)
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 240);
    *(v14 + 240) = 0;
  }

  objc_storeStrong((*(a1 + 32) + 248), *(a2 + 136));
  if (!nwswifttls_configure_application_protocols(*(a1 + 32), a2))
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 264);
    *(v16 + 264) = 0;
  }

  if (!nwswifttls_configure_server_name(*(a1 + 32), a2, *(a1 + 40)))
  {
    v18 = *(a1 + 32);
    v19 = *(v18 + 272);
    *(v18 + 272) = 0;
  }

  v20 = *(a1 + 32);
  if ((*(v20 + 304) & 1) == 0)
  {
    *(v20 + 280) = *(a2 + 304);
    *(*(a1 + 32) + 281) = *(a2 + 305);
    v20 = *(a1 + 32);
  }

  *(v20 + 284) = 24;
  if (*(a2 + 334) == 2)
  {
    *(*(a1 + 32) + 284) = 4588;
  }

  v21 = *(a2 + 232);
  if (v21)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __nwswifttls_configure_with_sec_protocol_options_block_invoke_2;
    applier[3] = &unk_1E7B2E690;
    v62 = *(a1 + 32);
    xpc_array_apply(v21, applier);
  }

  if (*(a2 + 56))
  {
    v22 = sec_identity_copy_type();
    if (v22 != 2)
    {
      if (v22 == 1)
      {
        if (*(*(a1 + 32) + 304) == 1)
        {
          v23 = sec_identity_copy_ref(*(a2 + 56));
          privateKeyRef = 0;
          if (SecIdentityCopyPrivateKey(v23, &privateKeyRef))
          {
            if (v23)
            {
              CFRelease(v23);
            }

            goto LABEL_29;
          }

          *(*(a1 + 32) + 312) = privateKeyRef;
          if (v23)
          {
            CFRelease(v23);
          }
        }

        goto LABEL_35;
      }

      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_54;
      }

      __nwswifttls_configure_with_sec_protocol_options_block_invoke_cold_3();
LABEL_29:
      result = 0;
      goto LABEL_54;
    }

    v24 = *(a1 + 32);
    if (v24[304] == 1 && (*(a2 + 384) || *(a2 + 392)))
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_54;
      }

      __nwswifttls_configure_with_sec_protocol_options_block_invoke_cold_1();
      goto LABEL_29;
    }

    if ((nwswifttls_configure_pake(v24, a2) & 1) == 0)
    {
      v25 = *(a1 + 32);
      v26 = *(v25 + 360);
      *(v25 + 360) = 0;

      v27 = *(a1 + 32);
      v28 = *(v27 + 368);
      *(v27 + 368) = 0;

      v29 = *(a1 + 32);
      v30 = *(v29 + 376);
      *(v29 + 376) = 0;

      v31 = *(a1 + 32);
      v32 = *(v31 + 384);
      *(v31 + 384) = 0;

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __nwswifttls_configure_with_sec_protocol_options_block_invoke_cold_2();
      }
    }
  }

LABEL_35:
  v33 = a2 + 369;
  if ((*(a2 + 371) & 0x80) != 0 && !*(a2 + 384))
  {
    objc_storeStrong((*(a1 + 32) + 232), *(a2 + 192));
    *(*(a1 + 32) + 224) = (*v33 & 0x800000) != 0;
  }

  if (*(a2 + 384))
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = *(a1 + 32);
    v36 = *(v35 + 328);
    *(v35 + 328) = v34;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = *(a2 + 384);
    v37 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v57;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v57 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v56 + 1) + 8 * i);
          v42 = a1;
          v43 = *(*(a1 + 32) + 328);
          v44 = [SwiftTLSExternalPreSharedKey alloc];
          v45 = [v41 external_identity];
          v46 = [v41 epsk];
          v47 = [v41 context];
          v48 = [(SecExternalPreSharedKey *)v44 initWithExternalIdentity:v45];
          v49 = v43;
          a1 = v42;
          [v49 addObject:v48];
        }

        v38 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v38);
    }

    v33 = a2 + 369;
    if ((*(a2 + 371) & 0x80) != 0)
    {
      *(*(a1 + 32) + 224) = 1;
    }
  }

  *(*(a1 + 32) + 352) = *(a2 + 408) & 1;
  if (*(*(a1 + 32) + 304) == 1 && (v50 = *(a2 + 392)) != 0 && *(a2 + 400))
  {
    v51 = _Block_copy(v50);
    v52 = *(a1 + 32);
    v53 = *(v52 + 336);
    *(v52 + 336) = v51;

    objc_storeStrong((*(a1 + 32) + 344), *(a2 + 400));
    result = 1;
    if ((*(v33 + 2) & 0x80) != 0)
    {
      *(*(a1 + 32) + 224) = 1;
    }
  }

  else
  {
    result = 1;
  }

LABEL_54:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t type metadata accessor for PeerCertificateBundle.Bundle(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __nwswifttls_copy_definition_block_invoke()
{
  if (nwswifttls_identifier_onceToken != -1)
  {
    nwswifttls_identifier_cold_1();
  }

  v0 = nw_protocol_definition_create_with_identifier();
  v1 = nwswifttls_copy_definition_definition;
  nwswifttls_copy_definition_definition = v0;

  nw_protocol_definition_set_options_allocator();
  nw_protocol_definition_set_options_equality_check();
  nw_protocol_definition_set_options_comparator();
  v2 = nwswifttls_copy_definition_definition;

  return MEMORY[0x1EEDD42F0](v2, nwswifttls_allocate_metadata, nwswifttls_deallocate_metadata);
}

const __CFArray *nwswifttls_configure_server_raw_public_key_certificate(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3)
  {
    if (a2)
    {
      v4 = *(a2 + 280);
      if (v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v6 = v3[30];
        v3[30] = v5;

        if (v3[30])
        {
          if (CFArrayGetCount(v4))
          {
            v7 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
              if (ValueAtIndex)
              {
                [v3[30] addObject:ValueAtIndex];
              }

              ++v7;
            }

            while (v7 < CFArrayGetCount(v4));
          }

          v4 = ([v3[30] count] != 0);
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

uint64_t sub_1B25F7CC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HandshakeState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

BOOL nwswifttls_configure_application_protocols(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    if (!*(a2 + 48) || (v5 = MEMORY[0x1B274EDF0](), v6 = MEMORY[0x1E69E9E50], v5 != MEMORY[0x1E69E9E50]))
    {
      v4 = 0;
      goto LABEL_23;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = *(v3 + 33);
    *(v3 + 33) = v7;

    if (!xpc_array_get_count(*(a2 + 48)))
    {
LABEL_22:
      v4 = [*(v3 + 33) count] != 0;
      goto LABEL_23;
    }

    v9 = 0;
    while (1)
    {
      v10 = xpc_array_get_value(*(a2 + 48), v9);
      if (MEMORY[0x1B274EDF0]() == v6)
      {
        uint64 = xpc_array_get_uint64(v10, 1uLL);
        v14 = *(v3 + 64);
        if (v14)
        {
          v15 = uint64 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15 && v14 != uint64)
        {
          goto LABEL_21;
        }

        v11 = v10;
        v12 = 0;
      }

      else
      {
        v11 = *(a2 + 48);
        v12 = v9;
      }

      string = xpc_array_get_string(v11, v12);
      if (string)
      {
        v18 = *(v3 + 33);
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
        [v18 addObject:v19];
      }

LABEL_21:

      if (++v9 >= xpc_array_get_count(*(a2 + 48)))
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:

  return v4;
}

BOOL nwswifttls_configure_server_name(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (a2 && *(a2 + 8))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:*(a2 + 8) encoding:4];
      v8 = v6[34];
      v6[34] = v7;
      v9 = 1;
    }

    else
    {
      v8 = v5;
      if (a3 && ((*(*(*(a3 + 48) + 24) + 136))(), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v10;
        v12 = nw_endpoint_copy_proxy_original_endpoint();
        v13 = v12;
        if (v12)
        {
          v14 = v12;

          v11 = v14;
        }

        v24 = 0;
        endpoint_name = nwswifttls_get_endpoint_name(v11, &v24);
        v16 = v11;
        v17 = nw_endpoint_copy_parent_endpoint();
        v18 = v16;
        if (v17)
        {
          v19 = v17;
          v20 = v16;
          do
          {
            v18 = v19;

            v19 = nw_endpoint_copy_parent_endpoint();
            v20 = v18;
          }

          while (v19);
        }

        if (nw_endpoint_get_type(v18) == (nw_endpoint_type_url|nw_endpoint_type_address))
        {
          if (v24 == 1)
          {
            free(endpoint_name);
          }

          endpoint_name = nwswifttls_get_endpoint_name(v18, &v24);
        }

        v9 = endpoint_name != 0;
        if (endpoint_name)
        {
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:endpoint_name encoding:4];
          v22 = v8[34];
          v8[34] = v21;

          if (v24 == 1)
          {
            free(endpoint_name);
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t nwswifttls_get_endpoint_name(void *a1, _BYTE *a2)
{
  v3 = a1;
  *a2 = 0;
  type = nw_endpoint_get_type(v3);
  parent_endpoint_domain = 0;
  if (type > nw_endpoint_type_host)
  {
    if (type == nw_endpoint_type_bonjour_service)
    {
      bonjour_fullname = nw_endpoint_get_bonjour_fullname();
      goto LABEL_11;
    }

    if (type == (nw_endpoint_type_url|nw_endpoint_type_address))
    {
      bonjour_fullname = nw_endpoint_get_srv_name();
      goto LABEL_11;
    }
  }

  else if (type == nw_endpoint_type_address)
  {
    parent_endpoint_domain = nw_endpoint_get_parent_endpoint_domain();
    if (!parent_endpoint_domain)
    {
      parent_endpoint_domain = nw_endpoint_copy_address_string(v3);
      *a2 = 1;
    }
  }

  else if (type == nw_endpoint_type_host)
  {
    bonjour_fullname = nw_endpoint_get_hostname(v3);
LABEL_11:
    parent_endpoint_domain = bonjour_fullname;
  }

  return parent_endpoint_domain;
}

uint64_t __nwswifttls_configure_with_sec_protocol_options_block_invoke_2(uint64_t a1, int a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  v5 = value;
  if (value != 4588 && value != 29)
  {
    return 1;
  }

  result = 0;
  *(*(a1 + 32) + 284) = v5;
  return result;
}

id STLSClientHandshaker.init(_:serverName:quicTransportParameters:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, int a7, void *a8, char a9, char a10, _OWORD *a11)
{
  v12 = v11;
  v197 = a5;
  v198 = a8;
  v180 = a7;
  v190 = a1;
  v191 = a6;
  v200 = a4;
  v201 = a3;
  v199 = a2;
  v194 = a11;
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v187 = v161 - v15;
  v16 = type metadata accessor for SymmetricKey();
  v173 = *(v16 - 8);
  v174 = v16;
  v17 = *(v173 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v172 = v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v167 = v161 - v20;
  v168 = type metadata accessor for EPSK(0);
  v21 = *(*(v168 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v168);
  v169 = (v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v22);
  v165 = (v161 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v164 = (v161 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v170 = v161 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v166 = v161 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v177 = v161 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v171 = v161 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v176 = v161 - v37;
  v175 = type metadata accessor for P256.Signing.PublicKey();
  v179 = *(v175 - 8);
  v38 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v178 = v161 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for NSFastEnumerationIterator();
  v41 = *(v40 - 8);
  v188 = v40;
  v189 = v41;
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = v161 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v47 = v161 - v46;
  v48 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  v49 = type metadata accessor for HandshakeStateMachine(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v192 = v48;
  v181 = v49;
  v182 = v50 + 56;
  v183 = v51;
  (v51)(&v12[v48], 1, 1);
  v52 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_partialHandshakeResult;
  v53 = type metadata accessor for PartialHandshakeResult(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v193 = v52;
  v185 = v55;
  v186 = v53;
  v184 = v54 + 56;
  (v55)(&v12[v52], 1, 1);
  v56 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  v57 = type metadata accessor for EncryptionLevel(0);
  v58 = *(*(v57 - 8) + 56);
  v58(&v12[v56], 1, 1, v57);
  v59 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  v58(&v12[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel], 1, 1, v57);
  v60 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets;
  *&v12[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets] = MEMORY[0x1E69E7CC0];
  v61 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError;
  v196 = v12;
  *&v12[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError] = 0;
  v62 = v199;
  if (v199 && v201 && v200)
  {
    v63 = v190;
    if (v190)
    {
      v64 = v199;
      v65 = v201;
      v66 = v200;
      v67 = v63;
    }

    else
    {
      type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      v77 = v62;
      v78 = v201;
      v79 = v200;
      v67 = MEMORY[0x1B274D7C0](MEMORY[0x1E69E7CC0]);
    }

    v80 = v63;
    v162 = v67;
    v163 = v80;
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v214 + 1))
    {
      v161[1] = v179 + 32;
      v190 = MEMORY[0x1E69E7CC0];
      do
      {
        while (1)
        {
          outlined init with take of Any(&v213, &v206);
          if (swift_dynamicCast())
          {
            break;
          }

          NSFastEnumerationIterator.next()();
          if (!*(&v214 + 1))
          {
            goto LABEL_23;
          }
        }

        v81 = v203[0];
        v206 = v203[0];
        outlined copy of Data._Representation(*&v203[0], *(&v203[0] + 1));
        lazy protocol witness table accessor for type Data and conformance Data();
        P256.Signing.PublicKey.init<A>(derRepresentation:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v190[2] + 1, 1, v190, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
        }

        v83 = v190[2];
        v82 = v190[3];
        if (v83 >= v82 >> 1)
        {
          v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v82 > 1, v83 + 1, 1, v190, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
        }

        outlined consume of Data._Representation(v81, *(&v81 + 1));
        v84 = v190;
        v190[2] = v83 + 1;
        (*(v179 + 32))(v84 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v83, v178, v175);
        NSFastEnumerationIterator.next()();
      }

      while (*(&v214 + 1));
    }

    else
    {
      v190 = MEMORY[0x1E69E7CC0];
    }

LABEL_23:
    v85 = *(v189 + 8);
    v189 += 8;
    (v85)(v47, v188);
    if (v191)
    {
      if (*(v191 + 16) == 2)
      {
        LODWORD(v179) = *(v191 + 32);

        LODWORD(v191) = 0;
        goto LABEL_28;
      }
    }

    LODWORD(v179) = 0;
    LODWORD(v191) = 1;
LABEL_28:
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v214 + 1))
    {
      v86 = MEMORY[0x1E69E7CC0];
      do
      {
        while (1)
        {
          outlined init with take of Any(&v213, &v206);
          if (swift_dynamicCast())
          {
            break;
          }

          NSFastEnumerationIterator.next()();
          if (!*(&v214 + 1))
          {
            goto LABEL_40;
          }
        }

        v87 = v203[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v178 = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 2) + 1, 1, v86);
        }

        v90 = *(v86 + 2);
        v89 = *(v86 + 3);
        if (v90 >= v89 >> 1)
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1, v86);
        }

        *(v86 + 2) = v90 + 1;
        *&v86[16 * v90 + 32] = v87;
        NSFastEnumerationIterator.next()();
        v85 = v178;
      }

      while (*(&v214 + 1));
    }

    else
    {
      v86 = MEMORY[0x1E69E7CC0];
    }

LABEL_40:
    (v85)(v45, v188);
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;
    v94 = v201;
    v95 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;
    v201 = v94;

    v98 = v97 >> 62;
    if ((v97 >> 62) > 1)
    {
      v99 = 0;
      if (v98 == 2)
      {
        v99 = *(v95 + 16);
      }
    }

    else if (v98)
    {
      v99 = v95;
    }

    else
    {
      v99 = 0;
    }

    HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)(v91, v93, v190, v95, v97, v99, v86, v179 | (v191 << 16), v205, v180 & 0x1FFFF, a10 & 1, a9 & 1);
    v100 = v197;
    if (v197)
    {
      v101 = v197;
      v102 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;
      outlined init with copy of HandshakeStateMachine.Configuration(v205, &v213);
      v105 = v176;
      _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v102, v104, v205, v202, v176);
      v106 = v200;
      v107 = v201;
      v108 = v198;

      v116 = v199;
      outlined destroy of HandshakeStateMachine.Configuration(v205);

      v183(v105, 0, 1, v181);
      v117 = v196;
      v118 = v192;
      swift_beginAccess();
      v119 = v117 + v118;
      v120 = v105;
LABEL_80:
      outlined assign with take of PartialHandshakeResult?(v120, v119, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
      swift_endAccess();
      goto LABEL_81;
    }

    v106 = v200;
    v107 = v201;
    v108 = v198;
    if (!v198)
    {
      v121 = v194;
      v122 = v194[5];
      v210 = v194[4];
      v211 = v122;
      v212[0] = v194[6];
      *(v212 + 9) = *(v194 + 105);
      v123 = v194[1];
      v206 = *v194;
      v207 = v123;
      v124 = v194[3];
      v208 = v194[2];
      v209 = v124;
      if (_s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v206) == 1)
      {
        v125 = v177;
        HandshakeStateMachine.init(configuration:)(v205, v177);

        v116 = v199;
      }

      else
      {
        v217 = v210;
        v218 = v211;
        v219[0] = v212[0];
        *(v219 + 9) = *(v212 + 9);
        v213 = v206;
        v214 = v207;
        v215 = v208;
        v216 = v209;
        outlined init with copy of Any?(v121, v203, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
        outlined init with copy of HandshakeStateMachine.Configuration(v205, v203);
        outlined init with copy of Any?(v121, v203, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
        v125 = v166;
        _s15SwiftTLSLibrary21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC(&v213, v205, v202, v166);

        v116 = v199;
        outlined destroy of HandshakeStateMachine.Configuration(v205);
        outlined destroy of P256.Signing.PrivateKey?(v121, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
      }

      v183(v125, 0, 1, v181);
      v117 = v196;
      v126 = v192;
      swift_beginAccess();
      outlined assign with take of PartialHandshakeResult?(v125, v117 + v126, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
      swift_endAccess();
      goto LABEL_82;
    }

    v109 = v198;
    v110 = [v109 external_identity];
    v111 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;

    v114 = v113 >> 62;
    v115 = 0;
    if (a9)
    {
      if ((v113 >> 62) > 1)
      {
        if (v114 == 2)
        {
          v115 = *(v111 + 16);
        }
      }

      else if (v114)
      {
        v115 = v111;
      }

      v127 = [v109 epsk];

      v128 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v130 = v129;

      *&v213 = v128;
      *(&v213 + 1) = v130;
      v131 = v167;
      SymmetricKey.init<A>(data:)();
      if (SymmetricKey.bitCount.getter() <= 127)
      {
        v213 = xmmword_1B26C5EE0;
        LOBYTE(v214) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of Data._Representation(v111, v113);
        (*(v173 + 8))(v131, v174);
LABEL_75:
        v106 = v200;
        v107 = v201;
        v108 = v198;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v151 = type metadata accessor for Logger();
        __swift_project_value_buffer(v151, logger);
        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&dword_1B25F5000, v152, v153, "Failed to use provided EPSK", v154, 2u);
          MEMORY[0x1B274ECF0](v154, -1, -1);
        }

        v155 = v177;
        HandshakeStateMachine.init(configuration:)(v205, v177);

        v116 = v199;
        v183(v155, 0, 1, v181);
        v117 = v196;
        v156 = v192;
        swift_beginAccess();
        v119 = v117 + v156;
        v120 = v155;
        goto LABEL_80;
      }

      v137 = 0;
      v140 = 0;
      v142 = v164;
      *v164 = v111;
      v143 = v142;
      v139 = 0xF000000000000000;
    }

    else
    {
      if ((v113 >> 62) > 1)
      {
        if (v114 == 2)
        {
          v115 = *(v111 + 16);
        }
      }

      else if (v114)
      {
        v115 = v111;
      }

      v132 = [v109 epsk];
      v133 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v134;

      *&v213 = v133;
      *(&v213 + 1) = v135;
      SymmetricKey.init<A>(data:)();
      v136 = [v109 context];

      v137 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = v138;

      v140 = 0;
      v141 = v139 >> 62;
      if ((v139 >> 62) > 1)
      {
        if (v141 == 2)
        {
          v140 = *(v137 + 16);
        }
      }

      else if (v141)
      {
        v140 = v137;
      }

      v131 = v172;
      if (SymmetricKey.bitCount.getter() <= 127)
      {
        v213 = xmmword_1B26C5EE0;
        LOBYTE(v214) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of Data._Representation(v137, v139);
        outlined consume of Data._Representation(v111, v113);
        (*(v173 + 8))(v131, v174);
        v100 = v197;
        goto LABEL_75;
      }

      v144 = v165;
      *v165 = v111;
      v143 = v144;
    }

    v145 = v131;
    *(v143 + 8) = v113;
    *(v143 + 16) = v115;
    v146 = v168;
    (*(v173 + 32))(v143 + *(v168 + 20), v145, v174);
    v147 = (v143 + *(v146 + 24));
    *v147 = v137;
    v147[1] = v139;
    v147[2] = v140;
    v148 = v170;
    outlined init with take of HandshakeStateMachine(v143, v170, type metadata accessor for EPSK);
    v149 = v169;
    outlined init with copy of HandshakeStateMachine(v148, v169, type metadata accessor for EPSK);
    outlined init with copy of HandshakeStateMachine.Configuration(v205, &v213);
    v150 = v171;
    _s15SwiftTLSLibrary21HandshakeStateMachineV4epsk13configurationAcA4EPSKV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v149, v205, v202, v171);
    outlined destroy of ExportedAuthenticator(v148, type metadata accessor for EPSK);
    v107 = v201;

    v116 = v199;
    outlined destroy of HandshakeStateMachine.Configuration(v205);
    v106 = v200;

    v183(v150, 0, 1, v181);
    v117 = v196;
    v160 = v192;
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v150, v117 + v160, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    swift_endAccess();
    v100 = v197;
    v108 = v198;
LABEL_81:
    v121 = v194;
LABEL_82:
    v157 = v187;
    v185(v187, 1, 1, v186);
    v158 = v193;
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v157, v117 + v158, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    swift_endAccess();
    v204.receiver = v117;
    v204.super_class = ObjectType;
    v159 = objc_msgSendSuper2(&v204, sel_init);
    outlined destroy of P256.Signing.PrivateKey?(v121, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

    return v159;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, logger);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_1B25F5000, v69, v70, "Cannot start the handshake with NULL parameters", v71, 2u);
    MEMORY[0x1B274ECF0](v71, -1, -1);
  }

  outlined destroy of P256.Signing.PrivateKey?(v194, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

  v72 = v196;
  outlined destroy of P256.Signing.PrivateKey?(v196 + v192, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v72 + v193, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v72 + v56, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v72 + v59, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v73 = *(v72 + v60);

  v74 = *((*MEMORY[0x1E69E7D40] & *v72) + 0x30);
  v75 = *((*MEMORY[0x1E69E7D40] & *v72) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

NSData_optional __swiftcall STLSClientHandshaker.startHandshake()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  v8 = type metadata accessor for EncryptionLevel(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for PartialHandshakeResult(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  v22 = type metadata accessor for HandshakeStateMachine(0);
  v23 = (*(*(v22 - 8) + 48))(v1 + v21, 1, v22);
  if (v23 == 1)
  {
    goto LABEL_20;
  }

  _s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF(&v39, v20);
  swift_endAccess();
  outlined init with copy of HandshakeStateMachine(v20, v15, type metadata accessor for PartialHandshakeResult);
  (*(v17 + 56))(v15, 0, 1, v16);
  v25 = v1 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_partialHandshakeResult;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v15, v25, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  swift_endAccess();
  if ((*(v17 + 48))(v25, 1, v16))
  {
    (*(v38 + 56))(v7, 1, 1, v8);
LABEL_5:
    outlined destroy of P256.Signing.PrivateKey?(v7, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    goto LABEL_6;
  }

  outlined init with copy of Any?(v25 + *(v16 + 20), v7, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v26 = v38;
  if ((*(v38 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_5;
  }

  outlined init with take of HandshakeStateMachine(v7, v11, type metadata accessor for EncryptionLevel);
  v31 = v37;
  outlined init with take of HandshakeStateMachine(v11, v37, type metadata accessor for EncryptionLevel);
  (*(v26 + 56))(v31, 0, 1, v8);
  v32 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v31, v1 + v32, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  swift_endAccess();
LABEL_6:
  v27 = v20[1];
  if (v27 >> 60 != 15)
  {
    v29 = *v20;
    v23 = v20[2];
    v30 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v24 = *(v29 + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    else if (v30)
    {
      v24 = v29 >> 32;
    }

    else
    {
      v24 = BYTE6(v27);
    }

    if (v24 >= v23)
    {
      v33 = Data._Representation.subscript.getter();
      v35 = v34;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v33, v35);
      goto LABEL_18;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  isa = 0;
LABEL_18:
  outlined destroy of ExportedAuthenticator(v20, type metadata accessor for PartialHandshakeResult);
  v23 = isa;
LABEL_21:
  result.is_nil = v24;
  result.value.super.isa = v23;
  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionOGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary18CertificateMessageV0F5EntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary18CertificateMessageV0F5EntryVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, "jx");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary0D11OfferedEPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary0D11OfferedEPSKVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15ProtocolVersionVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15ProtocolVersionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, int a10, char a11, char a12)
{
  outlined consume of ByteBuffer?(0, 0xF000000000000000);
  v38 = BYTE2(a8) & 1;
  v37 = BYTE2(a10) & 1;
  if ((a10 & 0x10000) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = a10;
  }

  *&v25 = a1;
  *(&v25 + 1) = a2;
  v26.n128_u64[0] = a3;
  v26.n128_u64[1] = a4;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  *&v28 = a7;
  WORD4(v28) = a8;
  BYTE10(v28) = BYTE2(a8) & 1;
  WORD6(v28) = v20;
  BYTE14(v28) = BYTE2(a10) & 1;
  HIBYTE(v28) = a11;
  v29 = a12;
  v30[0] = a1;
  v30[1] = a2;
  v30[2] = a3;
  v30[3] = a4;
  v30[4] = a5;
  v30[5] = a6;
  v30[6] = a7;
  v31 = a8;
  v32 = BYTE2(a8) & 1;
  v33 = v20;
  v34 = BYTE2(a10) & 1;
  v35 = a11;
  v36 = a12;
  outlined init with copy of HandshakeStateMachine.Configuration(&v25, v24);
  outlined destroy of HandshakeStateMachine.Configuration(v30);
  v21 = v28;
  *(a9 + 32) = v27;
  *(a9 + 48) = v21;
  *(a9 + 64) = v29;
  result = v26;
  *a9 = v25;
  *(a9 + 16) = result;
  return result;
}

void HandshakeStateMachine.init(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - v6;
  v39 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v38 = &v37 - v10;
  *a2 = xmmword_1B26C5EF0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v12 = type metadata accessor for HandshakeStateMachine(0);
  v13 = a2 + v12[7];
  *(v13 + 24) = &type metadata for SwiftTLSDefaultClock;
  *(v13 + 32) = &protocol witness table for SwiftTLSDefaultClock;
  v40[0] = 0;
  MEMORY[0x1B274ED00](v40, 8);
  v14 = v40[0];
  v40[0] = 0;
  MEMORY[0x1B274ED00](v40, 8);
  v15 = v40[0];
  v40[0] = 0;
  MEMORY[0x1B274ED00](v40, 8);
  v16 = v40[0];
  v40[0] = 0;
  MEMORY[0x1B274ED00](v40, 8);
  v17 = v40[0];
  v18 = (a2 + v12[8]);
  *v18 = v14;
  v18[1] = v15;
  v18[2] = v16;
  v18[3] = v17;
  v19 = a2 + v12[9];
  v20 = *(a1 + 48);
  *(v19 + 32) = *(a1 + 32);
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a1 + 64);
  v21 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 16) = v21;
  v22 = a2 + v12[6];
  v23 = type metadata accessor for SessionTicket();
  v24 = *(*(v23 - 8) + 56);
  v24(v11, 1, 1, v23);
  v25 = type metadata accessor for PAKEClientState(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v7, 1, 1, v25);
  v27 = type metadata accessor for HandshakeState.IdleState(0);
  v28 = v27[5];
  v24((v22 + v28), 1, 1, v23);
  v29 = v27[8];
  v26((v22 + v29), 1, 1, v25);
  v30 = *(a1 + 48);
  *(v22 + 32) = *(a1 + 32);
  *(v22 + 48) = v30;
  *(v22 + 64) = *(a1 + 64);
  v31 = *(a1 + 16);
  *v22 = *a1;
  *(v22 + 16) = v31;
  outlined init with copy of HandshakeStateMachine.Configuration(a1, v40);
  outlined assign with take of PartialHandshakeResult?(v38, v22 + v28, &_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  v32 = v27[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(v22 + v27[7]) = MEMORY[0x1E69E7CC0];
  outlined assign with take of PartialHandshakeResult?(v39, v22 + v29, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  type metadata accessor for HandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, logger);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B25F5000, v34, v35, "client state machine initialized", v36, 2u);
    MEMORY[0x1B274ECF0](v36, -1, -1);
  }
}

uint64_t sub_1B25FA8E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for SymmetricKey();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[13] + 8) = a2;
  }

  else
  {
    v15 = type metadata accessor for PeerCertificateBundle(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1B25FAA90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 120) = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SPAKE2.Prover();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B25FABF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[9];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[13] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for PeerCertificateBundle(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[14];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B25FAD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 120);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for SPAKE2.Prover();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t getEnumTagSinglePayload for PAKEClientConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void nwswifttls_input_available(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      if (*(a1 + 48))
      {
        v6 = v4[11];
        if (v6 == a2 || (v6 = v4[12], v6 == a2) || (v6 = v4[13], v6 == a2) || (v6 = v4[14], v6 == a2))
        {
          if (v6)
          {
            v7 = *(v6 + 24);
            if (v7)
            {
              if (*(v7 + 88) && *(v7 + 96))
              {
                v9[0] = 0;
                v9[1] = 0;
                nw_frame_array_init();
                if ((*(*(v6 + 24) + 80))(v6, v5 + 8, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v9))
                {
                  v8 = v5;
                  nw_frame_array_foreach();
                }
              }
            }
          }
        }
      }
    }
  }
}

BOOL __nwswifttls_input_available_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:nw_frame_unclaimed_bytes() length:0];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 32);
  v6 = v4;
  v15 = 0;
  nwswifttls_get_write_encryption_level(v5, &v15);
  for (i = [v5[37] continueHandshake:v6];
  {
    v8 = [v5[37] getPeerQUICTransportParameters];
    nwswifttls_update_quic_transport_parameters(v5, v8);

    updated = nwswifttls_update_encryption_secrets(v5);
    if ((v5[38] & 1) == 0 && [v5[37] hasSessionState])
    {
      nwswifttls_update_session_state(v5);
    }

    [v5[37] getEarlyDataAccepted];
    nwswifttls_update_early_data_accepted(v5);
    if (i)
    {
      nwswifttls_add_message(v5, v15, [i bytes], objc_msgSend(i, "length"));
      nwswifttls_send_messages(v5, v15);
      goto LABEL_12;
    }

    v10 = [v5[37] getErrorCode];
    if (v10)
    {
      break;
    }

    v11 = *(v5 + 304);
    if (v15)
    {
      v11 = 0;
    }

    if ((updated & v11) != 1)
    {
      goto LABEL_14;
    }

LABEL_12:
    nwswifttls_get_write_encryption_level(v5, &v15);
    v12 = [v5[37] continueHandshake:0];
  }

  nwswifttls_send_error(v5, v10);
LABEL_14:

LABEL_15:
  v13 = *(a1 + 40);
  nw_frame_array_remove();
  nw_frame_finalize();

  return v4 != 0;
}

uint64_t nwswifttls_get_encryption_level(uint64_t a1, int *a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = [*(a1 + 296) getEncryptionLevelWithWrite:?];
    if (result <= 0)
    {
      if (result == -1)
      {
        return 0;
      }

      if (!result)
      {
        *a2 = 0;
        return 1;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          *a2 = 1;
          return result;
        case 2:
          v5 = 2;
          goto LABEL_13;
        case 3:
          v5 = 3;
LABEL_13:
          *a2 = v5;
          return 1;
      }
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    nwswifttls_get_encryption_level_cold_1();
    return 0;
  }

  return result;
}

Swift::Int __swiftcall STLSClientHandshaker.getEncryptionLevel(write:)(Swift::Bool write)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for EncryptionLevel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (write)
  {
    v15 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  }

  else
  {
    v15 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  }

  v16 = v1 + v15;
  swift_beginAccess();
  outlined init with copy of Any?(v16, v6, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    return -1;
  }

  else
  {
    outlined init with take of HandshakeStateMachine(v6, v14, type metadata accessor for EncryptionLevel);
    outlined init with take of HandshakeStateMachine(v14, v12, type metadata accessor for EncryptionLevel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = type metadata accessor for SymmetricKey();
    (*(*(v19 - 8) + 8))(v12, v19);
    return EnumCaseMultiPayload + 1;
  }
}

NSData_optional __swiftcall STLSClientHandshaker.continueHandshake(_:)(NSData_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v90 = &v85 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v85 - v11;
  v93 = type metadata accessor for EncryptionLevel(0);
  v13 = *(v93 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v93);
  v88 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v85 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v85 - v20;
  if (isa)
  {
    v22 = isa;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = 0;
    v26 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v26 == 2)
      {
        v25 = *(v23 + 16);
      }
    }

    else if (v26)
    {
      v25 = v23;
    }

    v105 = v23;
    v106 = v24;
    v107 = v25;
    v27 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
    swift_beginAccess();
    v28 = type metadata accessor for HandshakeStateMachine(0);
    v29 = (*(*(v28 - 8) + 48))(v2 + v27, 1, v28);
    if (v29 == 1)
    {
      goto LABEL_52;
    }

    HandshakeStateMachine.receivedNetworkData(_:)(&v105);
    swift_endAccess();

    outlined consume of Data._Representation(v105, v106);
  }

  v97 = v8;
  v31 = 0;
  v32 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  v33 = (v2 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_partialHandshakeResult);
  v91 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets;
  v86 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  v98 = (v13 + 56);
  v94 = (v13 + 48);
  v85 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  v99 = v2;
  v92 = v12;
  v34 = v93;
  v95 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  v96 = v21;
  while (1)
  {
    swift_beginAccess();
    v35 = type metadata accessor for HandshakeStateMachine(0);
    v29 = (*(*(v35 - 8) + 48))(v2 + v32, 1, v35);
    if (v29 == 1)
    {
      break;
    }

    _s15SwiftTLSLibrary21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF(v103, v21);
    if (v31)
    {
      v66 = v103[0];
      v67 = v103[1];
      LOBYTE(v51) = v104;
      swift_endAccess();
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      v68 = swift_allocError();
      *v69 = v66;
      *(v69 + 8) = v67;
      *(v69 + 16) = v51;
      v70 = *(v2 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError);
      *(v2 + OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError) = v68;
      outlined copy of TLSError(v66, v67, v51);

      if (one-time initialization token for logger != -1)
      {
        goto LABEL_50;
      }

      goto LABEL_35;
    }

    v100 = 0;
    swift_endAccess();
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v21, v33, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    swift_endAccess();
    v36 = type metadata accessor for PartialHandshakeResult(0);
    v37 = *(*(v36 - 1) + 48);
    if (v37(v33, 1, v36))
    {
      v101 = 0;
      v102 = 0xF000000000000000;
    }

    else
    {
      v38 = v2;
      v39 = *(v33 + v36[7]);
      v40 = *(v33 + v36[7] + 8);
      v41 = *(v33 + v36[7]);
      v101 = v41;
      v102 = v40;
      if (v40 >> 60 != 15)
      {
        v89 = v39;
        v42 = v91;
        v43 = v38;
        swift_beginAccess();
        v44 = *(v43 + v42);
        outlined copy of Data?(v41, v40);
        outlined copy of Data?(v41, v40);
        outlined copy of Data._Representation(v41, v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v43 + v42) = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
          *(v43 + v91) = v44;
        }

        v47 = *(v44 + 2);
        v46 = *(v44 + 3);
        v48 = v89;
        if (v47 >= v46 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v44);
          v48 = v89;
          v44 = v65;
        }

        *(v44 + 2) = v47 + 1;
        *&v44[16 * v47 + 32] = v48;
        *(v99 + v91) = v44;
        swift_endAccess();
        outlined consume of ByteBuffer?(v101, v102);
        v12 = v92;
        v34 = v93;
      }
    }

    if (v37(v33, 1, v36))
    {
      (*v98)(v12, 1, 1, v34);
LABEL_23:
      outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      goto LABEL_24;
    }

    outlined init with copy of Any?(v33 + v36[6], v12, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    if ((*v94)(v12, 1, v34) == 1)
    {
      goto LABEL_23;
    }

    v52 = v12;
    v53 = v87;
    outlined init with take of HandshakeStateMachine(v52, v87, type metadata accessor for EncryptionLevel);
    v54 = v53;
    v55 = v90;
    v34 = v93;
    outlined init with take of HandshakeStateMachine(v54, v90, type metadata accessor for EncryptionLevel);
    (*v98)(v55, 0, 1, v34);
    v56 = v86;
    swift_beginAccess();
    v57 = v55;
    v12 = v92;
    outlined assign with take of PartialHandshakeResult?(v57, v99 + v56, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    swift_endAccess();
LABEL_24:
    v49 = v12;
    if (v37(v33, 1, v36))
    {
      v50 = v97;
      (*v98)(v97, 1, 1, v34);
    }

    else
    {
      v50 = v97;
      outlined init with copy of Any?(v33 + v36[5], v97, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      if ((*v94)(v50, 1, v34) != 1)
      {
        v58 = v50;
        v59 = v88;
        outlined init with take of HandshakeStateMachine(v58, v88, type metadata accessor for EncryptionLevel);
        v60 = v59;
        v61 = v90;
        v34 = v93;
        outlined init with take of HandshakeStateMachine(v60, v90, type metadata accessor for EncryptionLevel);
        (*v98)(v61, 0, 1, v34);
        v62 = v85;
        v63 = v99;
        swift_beginAccess();
        v64 = v61;
        v12 = v92;
        outlined assign with take of PartialHandshakeResult?(v64, v63 + v62, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
        swift_endAccess();
        goto LABEL_28;
      }
    }

    outlined destroy of P256.Signing.PrivateKey?(v50, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v12 = v49;
LABEL_28:
    if (!v37(v33, 1, v36))
    {
      v51 = v33[1];
      if (v51 >> 60 != 15)
      {
        v66 = *v33;
        v78 = v33[2];
        v79 = v51 >> 62;
        if ((v51 >> 62) > 1)
        {
          v80 = v101;
          if (v79 == 2)
          {
            v67 = *(v66 + 24);
            goto LABEL_46;
          }

          v67 = 0;
          if (v78 > 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v80 = v101;
          if (!v79)
          {
            v67 = BYTE6(v51);
            if (BYTE6(v51) < v78)
            {
LABEL_49:
              __break(1u);
LABEL_50:
              swift_once();
LABEL_35:
              v71 = type metadata accessor for Logger();
              __swift_project_value_buffer(v71, logger);
              outlined copy of TLSError(v66, v67, v51);
              v72 = Logger.logObject.getter();
              v73 = static os_log_type_t.error.getter();
              outlined consume of TLSError(v66, v67, v51);
              if (os_log_type_enabled(v72, v73))
              {
                v74 = swift_slowAlloc();
                v75 = swift_slowAlloc();
                *v74 = 138412290;
                swift_allocError();
                *v76 = v66;
                *(v76 + 8) = v67;
                *(v76 + 16) = v51;
                v77 = _swift_stdlib_bridgeErrorToNSError();
                *(v74 + 4) = v77;
                *v75 = v77;
                _os_log_impl(&dword_1B25F5000, v72, v73, "Internal error when processing the handshake: %@", v74, 0xCu);
                outlined destroy of P256.Signing.PrivateKey?(v75, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x1B274ECF0](v75, -1, -1);
                MEMORY[0x1B274ECF0](v74, -1, -1);
              }

              else
              {

                outlined consume of TLSError(v66, v67, v51);
              }

LABEL_38:
              v29 = 0;
              goto LABEL_53;
            }

            goto LABEL_47;
          }

          v67 = v66 >> 32;
LABEL_46:
          outlined copy of Data._Representation(*v33, v33[1]);
          if (v67 < v78)
          {
            goto LABEL_49;
          }
        }

LABEL_47:
        v81 = Data._Representation.subscript.getter();
        v83 = v82;
        outlined consume of ByteBuffer?(v66, v51);
        v84 = Data._bridgeToObjectiveC()().super.isa;
        outlined consume of Data._Representation(v81, v83);
        outlined consume of ByteBuffer?(v80, v102);
        v29 = v84;
        goto LABEL_53;
      }
    }

    v30 = v102;
    if (v102 >> 60 == 15)
    {
      goto LABEL_38;
    }

    outlined consume of ByteBuffer?(v101, v102);
    v32 = v95;
    v21 = v96;
    v2 = v99;
    v31 = v100;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result.value.super.isa = v29;
  result.is_nil = v30;
  return result;
}

uint64_t *HandshakeStateMachine.receivedNetworkData(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (!v5)
    {
      v7 = v6;
    }
  }

  v8 = v7 - v4;
  if (__OFSUB__(v7, v4))
  {
    __break(1u);
  }

  else if (one-time initialization token for logger == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1B25F5000, v10, v11, "received network data (%ld bytes)", v12, 0xCu);
    MEMORY[0x1B274ECF0](v12, -1, -1);
  }

  return HandshakeMessageParser.appendBytes(_:)(a1);
}

uint64_t *HandshakeMessageParser.appendBytes(_:)(uint64_t *result)
{
  if (v1[1] >> 60 == 15)
  {
    v2 = *result;
    v3 = result[1];
    v4 = result[2];
    v5 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v5 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = BYTE6(v3);
      v7 = v2 >> 32;
      if (!v5)
      {
        v7 = v6;
      }
    }

    v8 = __OFSUB__(v7, v4);
    v9 = v7 - v4;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v10 = v1;
      v11 = ByteBuffer.readSlice(length:)(v9);
      v13 = v12;
      v15 = v14;
      v16 = v10[2];
      result = outlined consume of ByteBuffer?(*v10, v10[1]);
      *v10 = v11;
      v10[1] = v13;
      v10[2] = v15;
    }
  }

  else
  {

    return ByteBuffer.writeBuffer(_:)(result);
  }

  return result;
}

uint64_t ByteBuffer.writeBuffer(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v6 = v2 >> 32;
    }

    else
    {
      v6 = BYTE6(v3);
    }

    if (v5)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v6 < result || v6 < v7)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = Data._Representation.subscript.getter();
  v11 = v10;
  Data.append(_:)();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      outlined consume of Data._Representation(v9, v11);
      result = 0;
      goto LABEL_25;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    outlined consume of Data._Representation(v9, v12);
    result = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_22:
    result = outlined consume of Data._Representation(v9, v12);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      result = HIDWORD(v9) - v9;
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  if (v13)
  {
    goto LABEL_22;
  }

  outlined consume of Data._Representation(v9, v11);
  result = BYTE6(v11);
LABEL_25:
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v20 = *(v16 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v19 = BYTE6(v17);
    v20 = v16 >> 32;
    if (!v18)
    {
      v20 = v19;
    }
  }

  a1[2] = v20;
  return result;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a1;
  v4 = v3;
  v5 = v2;
  v111 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v118 = &v103 - v8;
  v9 = type metadata accessor for PartialHandshakeResult(0);
  v112 = *(v9 - 8);
  v113 = v9;
  v10 = *(v112 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v104 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v103 = &v103 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v103 - v15;
  v16 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v17 = *(*(v16 - 1) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v103 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineV11ProcessStep33_0FE61F88EEA52334A02606E049165857LLOy_AA07PartialC6ResultVGMd, &_s15SwiftTLSLibrary21HandshakeStateMachineV11ProcessStep33_0FE61F88EEA52334A02606E049165857LLOy_AA07PartialC6ResultVGMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v109 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v108 = &v103 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v106 = &v103 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v110 = &v103 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v107 = &v103 - v32;
  v33 = type metadata accessor for HandshakeState(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
  v119 = v36;
  v120 = v37;
  v126 = v20;
  v115 = v33;
  while (1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v40 = __swift_project_value_buffer(v39, logger);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1B25F5000, v41, v42, "client attempting process step", v43, 2u);
      v44 = v43;
      v20 = v126;
      MEMORY[0x1B274ECF0](v44, -1, -1);
    }

    outlined init with copy of SessionTicket(v5 + v120, v36, type metadata accessor for HandshakeState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 3)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.error.getter();
          v69 = os_log_type_enabled(v67, v68);
          v70 = v114;
          if (v69)
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_1B25F5000, v67, v68, "processHandshake called in idle state", v71, 2u);
            MEMORY[0x1B274ECF0](v71, -1, -1);
          }

          v121 = xmmword_1B26CABB0;
          v72 = 2;
          v122 = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          v73 = 0;
          v74 = type metadata accessor for HandshakeState;
          ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = 3;
          goto LABEL_47;
        }

        v80 = v107;
        _s15SwiftTLSLibrary21HandshakeStateMachineV21handleReadServerHello33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(&v123, v107);
        if (v4)
        {
          goto LABEL_40;
        }

        v59 = v112;
        v58 = v113;
        if ((*(v112 + 48))(v80, 1, v113) != 1)
        {
          v97 = v111;
          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v80, v111, type metadata accessor for PartialHandshakeResult);
          v66 = v97;
          v78 = 0;
          v77 = type metadata accessor for HandshakeState;
          goto LABEL_69;
        }

LABEL_55:
        v77 = type metadata accessor for HandshakeState;
LABEL_56:
        v78 = 1;
        v66 = v111;
        goto LABEL_69;
      }

      v47 = v4;
      ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = _s15SwiftTLSLibrary21HandshakeStateMachineV35handleReadServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF();
      if (v4)
      {
LABEL_32:
        v73 = v48;
        v72 = v49;
        goto LABEL_41;
      }

      goto LABEL_2;
    }

    v46 = v118;
    if (EnumCaseMultiPayload <= 3)
    {
      break;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v57 = v108;
        _s15SwiftTLSLibrary21HandshakeStateMachineV24handleReadServerFinished33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(&v123, v108);
        if (!v4)
        {
          v59 = v112;
          v58 = v113;
          if ((*(v112 + 48))(v57, 1, v113) == 1)
          {
            goto LABEL_55;
          }

          v60 = v36;
          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v57, v104, type metadata accessor for PartialHandshakeResult);
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.default.getter();
          v63 = os_log_type_enabled(v61, v62);
          v64 = v111;
          if (v63)
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_1B25F5000, v61, v62, "client completed TLS handshake", v65, 2u);
            MEMORY[0x1B274ECF0](v65, -1, -1);
          }

          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v104, v64, type metadata accessor for PartialHandshakeResult);
          v66 = v64;
LABEL_63:
          v78 = 0;
          v77 = type metadata accessor for HandshakeState;
          v36 = v60;
          goto LABEL_69;
        }
      }

      else
      {
        v60 = v36;
        v79 = v109;
        _s15SwiftTLSLibrary21HandshakeStateMachineV26handleReadNewSessionTicket33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(&v123, v109);
        if (!v4)
        {
          v59 = v112;
          v58 = v113;
          if ((*(v112 + 48))(v79, 1, v113) == 1)
          {
            v77 = type metadata accessor for HandshakeState;
            v78 = 1;
            v66 = v111;
            v36 = v60;
            goto LABEL_69;
          }

          v96 = v111;
          _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v79, v111, type metadata accessor for PartialHandshakeResult);
          v66 = v96;
          goto LABEL_63;
        }
      }

LABEL_40:
      ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = v123;
      v73 = v124;
      v72 = v125;
LABEL_41:
      v81 = type metadata accessor for HandshakeState;
LABEL_42:
      v74 = v81;
      goto LABEL_46;
    }

    v47 = v4;
    ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = _s15SwiftTLSLibrary21HandshakeStateMachineV33handleReadServerCertificateVerify33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF();
    if (v4)
    {
      goto LABEL_32;
    }

LABEL_2:
    v4 = v47;
    v38 = type metadata accessor for HandshakeState;
    v36 = v119;
    if (ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF)
    {
      v77 = type metadata accessor for HandshakeState;
      v78 = 1;
      v66 = v111;
      v59 = v112;
      v58 = v113;
      goto LABEL_69;
    }

LABEL_3:
    outlined destroy of SessionTicket(v36, v38);
    v20 = v126;
  }

  v51 = v116;
  outlined init with copy of SessionTicket(v36, v116, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  if ((*(v51 + v16[10]) & 1) != 0 || *(v51 + v16[11]) == 1)
  {
    v75 = v110;
    _s15SwiftTLSLibrary21HandshakeStateMachineV24handleReadServerFinished33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(&v123, v110);
    if (v4)
    {
      ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = v123;
      v73 = v124;
      v72 = v125;
      v76 = v116;
      goto LABEL_45;
    }

    v59 = v112;
    v58 = v113;
    if ((*(v112 + 48))(v75, 1, v113) == 1)
    {
      v77 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      outlined destroy of SessionTicket(v116, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      goto LABEL_56;
    }

    v90 = v36;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v75, v105, type metadata accessor for PartialHandshakeResult);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v111;
    if (v93)
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_1B25F5000, v91, v92, "client completed TLS handshake", v95, 2u);
      MEMORY[0x1B274ECF0](v95, -1, -1);
    }

    v77 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    outlined destroy of SessionTicket(v116, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v105, v94, type metadata accessor for PartialHandshakeResult);
    v66 = v94;
    v78 = 0;
    v36 = v90;
LABEL_69:
    (*(v59 + 56))(v66, v78, 1, v58);
    return outlined destroy of SessionTicket(v36, v77);
  }

  v117 = v40;
  v52 = v36;
  outlined destroy of SessionTicket(v51, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  outlined init with copy of SessionTicket(v36, v20, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  outlined init with copy of Any?(&v20[v16[12]], v46, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v53 = type metadata accessor for PAKEClientState(0);
  if ((*(*(v53 - 8) + 48))(v46, 1, v53) == 1)
  {
    outlined destroy of SessionTicket(v20, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    outlined destroy of P256.Signing.PrivateKey?(v46, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
    ServerCertificate33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = _s15SwiftTLSLibrary21HandshakeStateMachineV27handleReadServerCertificate33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF();
    ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = ServerCertificate33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF;
    if (!v4)
    {
      v4 = 0;
      v38 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      if (ServerCertificate33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF)
      {
        v77 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
        v78 = 1;
        v66 = v111;
        v59 = v112;
        v58 = v113;
        v36 = v119;
        goto LABEL_69;
      }

      v36 = v119;
      goto LABEL_3;
    }

    v73 = v55;
    v72 = v56;
    v81 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    goto LABEL_42;
  }

  outlined destroy of P256.Signing.PrivateKey?(v46, &_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v82 = v106;
  _s15SwiftTLSLibrary21HandshakeStateMachineV24handleReadServerFinished33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF(&v123, v106);
  if (!v4)
  {
    v59 = v112;
    v58 = v113;
    if ((*(v112 + 48))(v82, 1, v113) == 1)
    {
      v77 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      outlined destroy of SessionTicket(v126, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v78 = 1;
      v66 = v111;
    }

    else
    {
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v82, v103, type metadata accessor for PartialHandshakeResult);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      v100 = os_log_type_enabled(v98, v99);
      v101 = v111;
      if (v100)
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_1B25F5000, v98, v99, "client completed TLS handshake", v102, 2u);
        MEMORY[0x1B274ECF0](v102, -1, -1);
      }

      v77 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
      outlined destroy of SessionTicket(v126, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(v103, v101, type metadata accessor for PartialHandshakeResult);
      v66 = v101;
      v78 = 0;
    }

    v36 = v52;
    goto LABEL_69;
  }

  ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF = v123;
  v73 = v124;
  v72 = v125;
  v76 = v126;
LABEL_45:
  outlined destroy of SessionTicket(v76, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  v74 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
LABEL_46:
  v70 = v114;
LABEL_47:
  outlined destroy of SessionTicket(v119, v74);
  outlined copy of TLSError(ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF, v73, v72);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();
  outlined consume of TLSError(ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF, v73, v72);
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 138412290;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_allocError();
    *v87 = ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF;
    *(v87 + 8) = v73;
    *(v87 + 16) = v72;
    outlined copy of TLSError(ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF, v73, v72);
    v88 = _swift_stdlib_bridgeErrorToNSError();
    *(v85 + 4) = v88;
    *v86 = v88;
    _os_log_impl(&dword_1B25F5000, v83, v84, "processing message failed due to error %@", v85, 0xCu);
    outlined destroy of P256.Signing.PrivateKey?(v86, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B274ECF0](v86, -1, -1);
    MEMORY[0x1B274ECF0](v85, -1, -1);
  }

  *&v121 = ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF;
  *(&v121 + 1) = v73;
  v122 = v72;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  result = swift_willThrowTypedImpl();
  *v70 = ServerEncryptedExtensions33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_ytGyAA8TLSErrorOYKF;
  *(v70 + 8) = v73;
  *(v70 + 16) = v72;
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of HandshakeStateMachine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of SessionTicket(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of ByteBuffer?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t sub_1B25FD548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HandshakeState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_15SwiftTLSLibrary10ByteBufferVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B25FD748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1B25FD81C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SessionTicket()
{
  result = type metadata singleton initialization cache for SessionTicket;
  if (!type metadata singleton initialization cache for SessionTicket)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of PartialHandshakeResult?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of P256.Signing.PrivateKey?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B25FD9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B25FDA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

__n128 _s15SwiftTLSLibrary22HandshakeMessageParserV05parsecD0AC11ParseResultVSgyAA8TLSErrorOYKF@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1] >> 60 == 15)
  {
    _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOi0_(&v15);
  }

  else
  {
    _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, &v11, v13);
    if (v3)
    {
      v7 = v12;
      result.n128_u64[0] = v11;
      *a1 = v11;
      *(a1 + 16) = v7;
      return result;
    }

    v21 = v13[6];
    v22 = v13[7];
    v23 = v14;
    v17 = v13[2];
    v18 = v13[3];
    v19 = v13[4];
    v20 = v13[5];
    v15 = v13[0];
    v16 = v13[1];
  }

  v8 = v22;
  *(a2 + 96) = v21;
  *(a2 + 112) = v8;
  *(a2 + 128) = v23;
  v9 = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v9;
  v10 = v20;
  *(a2 + 64) = v19;
  *(a2 + 80) = v10;
  result = v16;
  *a2 = v15;
  *(a2 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance Range<A>);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = v0[2];
  v2 = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = *v0;
  v12 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  outlined copy of Data._Representation(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
  DataProtocol.copyBytes<A>(to:from:)();
  outlined consume of Data._Representation(v11, v12);
  v7 = 0;
  v8 = bswap32(0) >> 16;
  v0[2] = v2;
LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
  return v8 | (v7 << 16);
}

uint64_t _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
  if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
  if ((v9 & 0x100000000) != 0)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  outlined copy of Data._Representation(*a1, v11);
  _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_ACTg504_s15a12TLSLibrary10cd5VAcA8L122OIglozo_A2cEIeglrzo_TR04_s15a40TLSLibrary16NewSessionTicketV5bytesAcA10cd7Vz_tAA8E29OYKcfc010readEntireH0L_yA2FzFTf3nnpf_nTf1nnc_n(v34, &v36);
  if (v3)
  {
    v14 = v12;
    v16 = v34[0];
    v15 = v34[1];
    v17 = v13;
    v18 = v35;
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v14;
    a1[1] = v11;
    a1[2] = v17;
    v36 = v16;
    v37 = v15;
    LOBYTE(v38) = v18;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
LABEL_10:
    *a2 = v16;
    *(a2 + 8) = v15;
    *(a2 + 16) = v18;
    return result;
  }

  v20 = v37;
  if (v37 >> 60 == 15)
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    v21 = v36;
    v22 = v20;
LABEL_7:
    outlined consume of ByteBuffer?(v21, v22);
LABEL_8:
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_9:
    v36 = 0;
    v37 = 0;
    v18 = 2;
    LOBYTE(v38) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v16 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v39 = v37;
  outlined consume of Data._Representation(v12, v11);
  v32 = v36;
  v33 = v38;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  outlined copy of Data._Representation(*a1, v11);
  _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_ACTg504_s15a12TLSLibrary10cd5VAcA8L122OIglozo_A2cEIeglrzo_TR04_s15a40TLSLibrary16NewSessionTicketV5bytesAcA10cd7Vz_tAA8E29OYKcfc010readEntireH0L_yA2FzFTf3nnpf_nTf1nnc_n(v34, &v36);
  v23 = v37;
  if (v37 >> 60 == 15)
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    outlined consume of ByteBuffer?(v36, v23);
    v21 = v32;
    v22 = v39;
    goto LABEL_7;
  }

  v31 = v37;
  outlined consume of Data._Representation(v12, v11);
  v27 = v36;
  v28 = v38;
  v26 = a1[2];
  v29 = *a1;
  v30 = a1[1];
  outlined copy of Data._Representation(*a1, v30);
  v24 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l112OIglozo_AcfHIeglrzo_TR04_s15a40TLSLibrary16NewSessionTicketV5bytesAcA10cd7Vz_tAA8f31OYKcfc14readExtensionsL_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_n(a1);
  if (!v24)
  {
    outlined consume of Data._Representation(*a1, a1[1]);
    outlined consume of ByteBuffer?(v27, v31);
    outlined consume of ByteBuffer?(v32, v39);
    v12 = v29;
    v11 = v30;
    v13 = v26;
    goto LABEL_8;
  }

  result = outlined consume of Data._Representation(v29, v30);
  *a3 = v8;
  *(a3 + 4) = v10;
  v25 = v39;
  *(a3 + 8) = v32;
  *(a3 + 16) = v25;
  *(a3 + 24) = v33;
  *(a3 + 32) = v27;
  *(a3 + 40) = v31;
  *(a3 + 48) = v28;
  *(a3 + 56) = v24;
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_ACTg504_s15a12TLSLibrary10cd5VAcA8L122OIglozo_A2cEIeglrzo_TR04_s15a40TLSLibrary16NewSessionTicketV5bytesAcA10cd7Vz_tAA8E29OYKcfc010readEntireH0L_yA2FzFTf3nnpf_nTf1nnc_n@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((result & 0x100) != 0 || (result = ByteBuffer.readSlice(length:)(result), v5 >> 60 == 15))
  {
    *a2 = xmmword_1B26C5EF0;
    *(a2 + 16) = 0;
  }

  else
  {
    v16 = result;
    v17 = v5;
    v18 = v6;
    result = _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc010readEntireH0L_yA2FzF(&v16);
    v7 = result;
    v9 = v8;
    v11 = v10;
    v12 = v16;
    v13 = v17;
    v14 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(v16 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else if (v14)
    {
      v15 = v16 >> 32;
    }

    else
    {
      v15 = BYTE6(v17);
    }

    if (__OFSUB__(v15, v18))
    {
      __break(1u);
    }

    else if (v15 == v18)
    {
      result = outlined consume of Data._Representation(v16, v17);
      *a2 = v7;
      *(a2 + 8) = v9;
      *(a2 + 16) = v11;
    }

    else
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v7, v9);
      result = outlined consume of Data._Representation(v12, v13);
      *a1 = xmmword_1B26C66C0;
      *(a1 + 16) = 2;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc010readEntireH0L_yA2FzF(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  v7 = __OFSUB__(v6, result);
  v8 = v6 - result;
  if (v7)
  {
    __break(1u);
    goto LABEL_25;
  }

  v9 = result + v8;
  if (__OFADD__(result, v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    if (*(v2 + 24) >= v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v5)
    {
      v10 = v2 >> 32;
    }

    else
    {
      v10 = BYTE6(v3);
    }

    if (v10 >= v9)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_19:
  if (v9 > 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

LABEL_20:
  if (v9 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = Data._Representation.subscript.getter();
  a1[2] = v9;
  if (v11 >> 62 == 2)
  {
    v12 = *(result + 16);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_ACTg504_s15a12TLSLibrary10cd5VAcA8L122OIglozo_A2cEIeglrzo_TR04_s15a40TLSLibrary16NewSessionTicketV5bytesAcA10cd7Vz_tAA8E29OYKcfc010readEntireH0L_yA2FzFTf3nnpf_nTf1nnc_n@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((result & 0x10000) != 0 || (result = ByteBuffer.readSlice(length:)(result), v5 >> 60 == 15))
  {
    *a2 = xmmword_1B26C5EF0;
    *(a2 + 16) = 0;
  }

  else
  {
    v16 = result;
    v17 = v5;
    v18 = v6;
    result = _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc010readEntireH0L_yA2FzF(&v16);
    v7 = result;
    v9 = v8;
    v11 = v10;
    v12 = v16;
    v13 = v17;
    v14 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(v16 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else if (v14)
    {
      v15 = v16 >> 32;
    }

    else
    {
      v15 = BYTE6(v17);
    }

    if (__OFSUB__(v15, v18))
    {
      __break(1u);
    }

    else if (v15 == v18)
    {
      result = outlined consume of Data._Representation(v16, v17);
      *a2 = v7;
      *(a2 + 8) = v9;
      *(a2 + 16) = v11;
    }

    else
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v7, v9);
      result = outlined consume of Data._Representation(v12, v13);
      *a1 = xmmword_1B26C66C0;
      *(a1 + 16) = 2;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l107OIglozo_AcfHIeglrzo_TR04_s15a35TLSLibrary11ClientHelloV5bytesAcA10cd7Vz_tAA8f31OYKcfc14readExtensionsL_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_nTm(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v4 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v4 & 0x10000) != 0)
  {
    return 0;
  }

  v5 = ByteBuffer.readSlice(length:)(v4);
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  v18 = v5;
  v19 = v6;
  v20 = v7;
  v9 = a2(&v18);
  if (v2)
  {
    v10 = v9;
    v11 = v18;
    v12 = v19;
LABEL_17:
    outlined consume of Data._Representation(v11, v12);
    return v10;
  }

  v13 = v9;
  result = v18;
  v14 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v18 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v18 >> 32;
  }

  else
  {
    v15 = BYTE6(v19);
  }

  if (!__OFSUB__(v15, v20))
  {
    if (v15 == v20)
    {
      outlined consume of Data._Representation(v18, v19);
      return v13;
    }

    v16 = v18;
    v17 = v19;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();

    v12 = v17;
    v11 = v16;
    v10 = 1;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc14readExtensionsL_ySayAA9ExtensionOGAFzAHYKF(uint64_t *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v46 = *a1;
  LOWORD(v65) = 0;
  v3 = a1[2];
  v4 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  v5 = v1;
  v7 = v2 >> 62;
  v8 = MEMORY[0x1E69E7CC0];
  v47 = BYTE6(v2);
  v48 = v2 >> 62;
  while (1)
  {
    if (v7 <= 1)
    {
      v9 = v47;
      if (v7)
      {
        v9 = v46 >> 32;
      }

LABEL_8:
      if (v9 < v4)
      {
        goto LABEL_62;
      }

      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v9 = *(v46 + 24);
      goto LABEL_8;
    }

    if (v4 >= 1)
    {
      goto LABEL_62;
    }

LABEL_11:
    v10 = *a1;
    v11 = a1[1];
    *&v59 = *a1;
    *(&v59 + 1) = v11;
    if (v4 < v3)
    {
      goto LABEL_64;
    }

    v49 = v5;
    *&v51 = v3;
    *(&v51 + 1) = v4;
    v50 = v4;
    outlined copy of Data._Representation(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v59, *(&v59 + 1));
    v12 = v65;
    a1[2] = v50;
    v14 = *a1;
    v13 = a1[1];
    LOWORD(v65) = 0;
    v15 = v50 + 2;
    if (__OFADD__(v50, 2))
    {
      goto LABEL_65;
    }

    v16 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      break;
    }

    if (v16)
    {
      v17 = v14 >> 32;
    }

    else
    {
      v17 = BYTE6(v13);
    }

LABEL_19:
    if (v17 < v15)
    {
      goto LABEL_58;
    }

LABEL_22:
    *&v59 = v14;
    *(&v59 + 1) = v13;
    if (v15 < v50)
    {
      goto LABEL_66;
    }

    *&v51 = v50;
    *(&v51 + 1) = v50 + 2;
    outlined copy of Data._Representation(v14, v13);
    outlined copy of Data._Representation(v14, v13);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v59, *(&v59 + 1));
    v18 = bswap32(v65) >> 16;
    a1[2] = v15;
    v19 = v15 + v18;
    if (__OFADD__(v15, v18))
    {
      goto LABEL_67;
    }

    v20 = *a1;
    v21 = a1[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (v22)
      {
        v23 = v20 >> 32;
      }

      else
      {
        v23 = BYTE6(v21);
      }

LABEL_30:
      if (v23 < v19)
      {
        goto LABEL_59;
      }

      goto LABEL_33;
    }

    if (v22 == 2)
    {
      v23 = *(v20 + 24);
      goto LABEL_30;
    }

    if (v19 > 0)
    {
      goto LABEL_59;
    }

LABEL_33:
    if (v19 < v15)
    {
      goto LABEL_68;
    }

    v24 = Data._Representation.subscript.getter();
    v26 = 0;
    a1[2] = v19;
    v27 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v28 = v49;
      if (v27 == 2)
      {
        v26 = *(v24 + 16);
      }
    }

    else
    {
      v28 = v49;
      if (v27)
      {
        v26 = v24;
      }
    }

    v65 = v24;
    v66 = v25;
    v67 = v26;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v65, bswap32(v12) >> 16, 4, 0, v57, &v59);
    if (v28)
    {
      v8 = v57[0];
      v43 = v57[1];
      v38 = v58;
      v42 = v65;
      v41 = v66;
      goto LABEL_61;
    }

    v5 = 0;
    v29 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v30 = *(v65 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v29)
    {
      v30 = v65 >> 32;
    }

    else
    {
      v30 = BYTE6(v66);
    }

    if (__OFSUB__(v30, v67))
    {
      goto LABEL_69;
    }

    if (v30 != v67)
    {
      v38 = 2;
      v39 = v65;
      v40 = v66;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v56 = v64;
      v51 = v59;
      v52 = v60;
      outlined destroy of Extension(&v51);
      v41 = v40;
      v42 = v39;
      v43 = 0;
      v8 = 1;
LABEL_61:
      outlined consume of Data._Representation(v42, v41);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v14;
      a1[1] = v13;
      a1[2] = v50;
      *&v59 = v8;
      *(&v59 + 1) = v43;
      LOBYTE(v60) = v38;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      goto LABEL_62;
    }

    outlined consume of Data._Representation(v65, v66);
    outlined consume of Data._Representation(v14, v13);
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v51 = v59;
    v52 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    }

    LODWORD(v7) = v48;
    v32 = *(v8 + 16);
    v31 = *(v8 + 24);
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 16) = v32 + 1;
    v33 = v8 + 88 * v32;
    v34 = v52;
    *(v33 + 32) = v51;
    *(v33 + 48) = v34;
    v35 = v53;
    v36 = v54;
    v37 = v55;
    *(v33 + 112) = v56;
    *(v33 + 80) = v36;
    *(v33 + 96) = v37;
    *(v33 + 64) = v35;
    LOWORD(v65) = 0;
    v3 = a1[2];
    v4 = v3 + 2;
    if (__OFADD__(v3, 2))
    {
      goto LABEL_63;
    }
  }

  if (v16 == 2)
  {
    v17 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v15 < 1)
  {
    goto LABEL_22;
  }

LABEL_58:
  outlined copy of Data._Representation(v14, v13);
  v20 = *a1;
  v21 = a1[1];
LABEL_59:
  outlined consume of Data._Representation(v20, v21);
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v50;
LABEL_62:
  v44 = *MEMORY[0x1E69E9840];
  return v8;
}

void _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(uint64_t *a1@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v134 = *MEMORY[0x1E69E9840];
  if (a2 > 0x29u)
  {
    if (a2 > 0x32u)
    {
      if (a2 <= 0x39u)
      {
        if (a2 == 51)
        {
          v12 = _s15SwiftTLSLibrary10ByteBufferV12readKeyShare11messageType17helloRetryRequestAA9ExtensionO0fG0OAA09HandshakeI0V_SbtAA8TLSErrorOYKF(a3, a4 & 1);
          if (!v6)
          {
            *a6 = v12;
            *(a6 + 8) = v13;
            *(a6 + 16) = v14;
            *(a6 + 24) = v41;
            *(a6 + 80) = 64;
            goto LABEL_72;
          }

LABEL_34:
          v28 = v14;
          goto LABEL_71;
        }

        if (a2 == 57)
        {
          v12 = _s15SwiftTLSLibrary10ByteBufferV27readQUICTransportParameters11messageTypeAA9ExtensionO0fG0VAA09HandshakeI0V_tAA8TLSErrorOYKF(a3);
          if (!v6)
          {
            *a6 = v12;
            *(a6 + 8) = v13;
            *(a6 + 16) = v14;
            *(a6 + 80) = 0x80;
            goto LABEL_72;
          }

          goto LABEL_34;
        }

        goto LABEL_56;
      }

      if (a2 != 58)
      {
        if (a2 == 35387)
        {
          v130 = &type metadata for SwiftTLSFeatureFlags;
          v131 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
          v36 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_0(&v128);
          if (v36)
          {
            v37 = v132;
            _s15SwiftTLSLibrary10ByteBufferV11readPAKERFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeH0V_SbtAA8TLSErrorOYKF(v8, a4 & 1, v126, v132);
            if (!v6)
            {
LABEL_32:
              v38 = v37[80];
              v39 = *(v37 + 1);
              *a6 = *v37;
              *(a6 + 16) = v39;
              v40 = *(v37 + 3);
              *(a6 + 32) = *(v37 + 2);
              *(a6 + 48) = v40;
              *(a6 + 64) = *(v37 + 4);
              *(a6 + 80) = v38 & 1 | 0xC0;
              goto LABEL_72;
            }
          }

          else
          {
            v37 = v133;
            _s15SwiftTLSLibrary10ByteBufferV14readPAKENonRFC11messageType17helloRetryRequestAA9ExtensionO4PAKEOAA09HandshakeI0V_SbtAA8TLSErrorOYKF(v8, a4 & 1, v126, v133);
            if (!v6)
            {
              goto LABEL_32;
            }
          }

          v12 = v126[0];
          v13 = v126[1];
          v28 = v127;
          goto LABEL_71;
        }

LABEL_56:
        v55 = *a1;
        v56 = a1[1];
        v57 = a1[2];
        v58 = v56 >> 62;
        if ((v56 >> 62) > 1)
        {
          if (v58 == 2)
          {
            v60 = *(v55 + 24);
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v59 = BYTE6(v56);
          v60 = v55 >> 32;
          if (!v58)
          {
            v60 = v59;
          }
        }

        if (!__OFSUB__(v60, v57))
        {
          v63 = ByteBuffer.readSlice(length:)(v60 - v57);
          if (v64 >> 60 != 15)
          {
            *a6 = a2;
            *(a6 + 8) = v63;
            *(a6 + 16) = v64;
            *(a6 + 24) = v65;
            *(a6 + 80) = -48;
            goto LABEL_72;
          }

          __break(1u);
          return;
        }

LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v12 = _s15SwiftTLSLibrary10ByteBufferV26readTicketRequestExtension11messageTypeAA0H0O0fG0OAA09HandshakeJ0V_tAA8TLSErrorOYKF(a3);
      if (!v6)
      {
        LOBYTE(v128) = BYTE2(v12) & 1;
        *a6 = v12;
        *(a6 + 2) = BYTE2(v12) & 1;
        *(a6 + 80) = -80;
        goto LABEL_72;
      }

      goto LABEL_55;
    }

    if (a2 != 42)
    {
      if (a2 == 43)
      {
        v12 = _s15SwiftTLSLibrary10ByteBufferV21readSupportedVersions11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKF(a3);
        if (!v6)
        {
          LOBYTE(v128) = v13 & 1;
          *a6 = v12;
          *(a6 + 8) = v13 & 1;
          *(a6 + 80) = 32;
          goto LABEL_72;
        }

        goto LABEL_55;
      }

      if (a2 != 45)
      {
        goto LABEL_56;
      }

      if (a3 == 1)
      {
        v23 = *a1;
        v22 = a1[1];
        v24 = a1[2];
        outlined copy of Data._Representation(*a1, v22);
        v25 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_SayAA9ExtensionO20PreSharedKeyKexModesV4ModeVGTg504_s15a12TLSLibrary10cd7VSayAA9q3O20rstuv2V4w5VGAA8l73OIglozo_AcjLIeglrzo_TR04_s15a12TLSLibrary10cd7V24readfghi21Modes11messageK72AA9e30O0fghiJ0VAA09HandshakeL0V_tAA8l6OYKF0et9L_ySayAI4K6VGACzFTf3nnpf_nTf1nc_n();
        if (v6)
        {
          v28 = v27;
          v29 = *a1;
          v30 = a1[1];
          v31 = a1;
          v32 = v25;
          v33 = v26;
          outlined consume of Data._Representation(v29, v30);
          *v31 = v23;
          v31[1] = v22;
          v31[2] = v24;
          *&v128 = v32;
          *(&v128 + 1) = v33;
          v129 = v28;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          v13 = v33;
          v12 = v32;
          goto LABEL_71;
        }

        if (v25)
        {
          v66 = v25;
          outlined consume of Data._Representation(v23, v22);
          *a6 = v66;
          *(a6 + 80) = -112;
          goto LABEL_72;
        }

        outlined consume of Data._Representation(*a1, a1[1]);
        *a1 = v23;
        a1[1] = v22;
        a1[2] = v24;
LABEL_53:
        v128 = 0uLL;
        v28 = 2;
        v129 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        v12 = 0;
        v13 = 0;
        goto LABEL_71;
      }

      v45 = a3;
      v46 = 2949120;
      goto LABEL_69;
    }

    LODWORD(v43) = 0;
    v44 = 1;
    if (a3 != 8)
    {
      if (a3 == 4)
      {
        v43 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5();
        if ((v43 & 0x100000000) != 0)
        {
          goto LABEL_53;
        }

        v44 = 0;
      }

      else if (a3 != 1)
      {
        v45 = a3;
        v46 = 3342336;
LABEL_69:
        v61 = v46 & 0xFFFFFFFFFFFFFF00 | v45;
        goto LABEL_70;
      }
    }

    LOBYTE(v128) = v44;
    *a6 = v43;
    *(a6 + 4) = v44;
    *(a6 + 80) = 80;
    goto LABEL_72;
  }

  if (a2 > 0xFu)
  {
    if (a2 == 16)
    {
      v12 = _s15SwiftTLSLibrary10ByteBufferV8readALPN11messageTypeAA9ExtensionO35ApplicationLayerProtocolNegotiationOAA09HandshakeH0V_tAA8TLSErrorOYKF(a3);
      v28 = v48;
      if (v6)
      {
        goto LABEL_71;
      }

      LOBYTE(v128) = v48 & 1;
      *a6 = v12;
      *(a6 + 8) = v13;
      *(a6 + 16) = v48 & 1;
      *(a6 + 80) = 48;
      goto LABEL_72;
    }

    if (a2 != 20)
    {
      if (a2 == 41)
      {
        v12 = _s15SwiftTLSLibrary10ByteBufferV16readPreSharedKey11messageType17helloRetryRequestAA9ExtensionO0fgH0OAA09HandshakeJ0V_SbtAA8TLSErrorOYKF(a3, a4 & 1);
        v28 = v34;
        if (v6)
        {
          goto LABEL_71;
        }

        LOBYTE(v128) = v34 & 1;
        *a6 = v12;
        *(a6 + 8) = v13;
        *(a6 + 16) = v34 & 1;
        *(a6 + 80) = -96;
        goto LABEL_72;
      }

      goto LABEL_56;
    }

    v12 = _s15SwiftTLSLibrary10ByteBufferV25readServerCertificateType07messageH0AA9ExtensionO0fgH0OAA09HandshakeH0V_tAA8TLSErrorOYKF(a3);
    if (!v6)
    {
      LOBYTE(v128) = v13 & 1;
      *a6 = v12;
      *(a6 + 8) = v13 & 1;
      *(a6 + 80) = 112;
      goto LABEL_72;
    }

LABEL_55:
    v28 = v42;
    goto LABEL_71;
  }

  if (!a2)
  {
    v12 = _s15SwiftTLSLibrary10ByteBufferV14readServerName11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKF(a3);
    v28 = v47;
    if (v6)
    {
      goto LABEL_71;
    }

    *a6 = v12;
    *(a6 + 8) = v13;
    *(a6 + 16) = v47;
    *(a6 + 80) = 0;
    goto LABEL_72;
  }

  if (a2 == 10)
  {
    if (a3 != 8 && a3 != 1)
    {
      v61 = a3 | 0xA0000;
LABEL_70:
      v128 = v61;
      v129 = 0;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v12 = v61;
      v13 = 0;
      v28 = 0;
      goto LABEL_71;
    }

    v15 = a1;
    v49 = *a1;
    v50 = a1[1];
    v119 = a1[2];
    outlined copy of Data._Representation(*a1, v50);
    v51 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
    if ((v51 & 0x10000) != 0 || (v52 = ByteBuffer.readSlice(length:)(v51), v53 >> 60 == 15))
    {
      outlined consume of Data._Representation(*v15, v15[1]);
      *v15 = v49;
      v15[1] = v50;
      goto LABEL_52;
    }

    v67 = v54;
    v116 = v15;
    v112 = v49;
    v68 = v53 >> 62;
    v69 = BYTE6(v53);
    v70 = v52 >> 32;
    v121 = BYTE6(v53);
    if ((v53 >> 62) > 1)
    {
      if (v68 == 2)
      {
        v69 = *(v52 + 24);
      }

      else
      {
        v69 = 0;
      }
    }

    else if (v68)
    {
      v69 = v52 >> 32;
    }

    v115 = v50;
    v118 = a5;
    v74 = __OFSUB__(v69, v54);
    v75 = v69 - v54;
    if (v74)
    {
      goto LABEL_154;
    }

    v76 = v52;
    v77 = v53;
    v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v75 / 2) & ~((v75 + (v75 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
    v79 = v67 + 2;
    if (__OFADD__(v67, 2))
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v80 = v78;
    v81 = v77;
    v82 = v76;
    v124 = v68;
    while (1)
    {
      if (v68 > 1)
      {
        if (v68 != 2)
        {
          if (v79 >= 1)
          {
            v88 = 0;
            goto LABEL_138;
          }

          goto LABEL_107;
        }

        v83 = *(v82 + 24);
      }

      else
      {
        v83 = v121;
        if (v68)
        {
          v83 = v70;
        }
      }

      if (v83 < v79)
      {
        v88 = v121;
        if (v68)
        {
          v88 = v70;
          if (v68 == 2)
          {
            v88 = *(v82 + 24);
          }
        }

LABEL_138:
        if (!__OFSUB__(v88, v67))
        {
          if (v88 != v67)
          {
            v125 = xmmword_1B26C66C0;
            v128 = xmmword_1B26C66C0;
            v28 = 2;
            v129 = 2;
            v106 = v81;
            v107 = v82;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();

            outlined consume of Data._Representation(v107, v106);
            v108 = v116;
            outlined consume of Data._Representation(*v116, v116[1]);
            *v116 = v112;
            v116[1] = v115;
            goto LABEL_148;
          }

          outlined consume of Data._Representation(v82, v81);
          outlined consume of Data._Representation(v112, v115);
          v104 = a6;
          *a6 = v80;
          v105 = 16;
          goto LABEL_147;
        }

LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
      }

LABEL_107:
      *&v128 = v82;
      *(&v128 + 1) = v81;
      if (v79 < v67)
      {
        goto LABEL_151;
      }

      v84 = v82;
      v85 = v81;
      outlined copy of Data._Representation(v82, v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
      lazy protocol witness table accessor for type Data and conformance Data();
      lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
      DataProtocol.copyBytes<A>(to:from:)();
      outlined consume of Data._Representation(v128, *(&v128 + 1));
      v87 = *(v80 + 2);
      v86 = *(v80 + 3);
      if (v87 >= v86 >> 1)
      {
        v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v80);
      }

      *(v80 + 2) = v87 + 1;
      *&v80[2 * v87 + 32] = bswap32(0) >> 16;
      v67 = v79;
      v74 = __OFADD__(v79, 2);
      v79 += 2;
      v81 = v85;
      v82 = v84;
      LODWORD(v68) = v124;
      if (v74)
      {
        goto LABEL_149;
      }
    }
  }

  if (a2 != 13)
  {
    goto LABEL_56;
  }

  if (a3 != 13 && a3 != 1)
  {
    v45 = a3;
    v46 = 851968;
    goto LABEL_69;
  }

  v15 = a1;
  v16 = *a1;
  v17 = a1[1];
  v119 = a1[2];
  outlined copy of Data._Representation(*a1, v17);
  v18 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v18 & 0x10000) != 0 || (v19 = ByteBuffer.readSlice(length:)(v18), v20 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v15, v15[1]);
    *v15 = v16;
    v15[1] = v17;
LABEL_52:
    v15[2] = v119;
    goto LABEL_53;
  }

  v71 = v21;
  v114 = v17;
  v117 = v15;
  v72 = v20 >> 62;
  v73 = BYTE6(v20);
  v123 = BYTE6(v20);
  if ((v20 >> 62) > 1)
  {
    if (v72 == 2)
    {
      v73 = *(v19 + 24);
    }

    else
    {
      v73 = 0;
    }
  }

  else if (v72)
  {
    v73 = v19 >> 32;
  }

  v122 = v19 >> 32;
  v113 = v16;
  v118 = a5;
  v74 = __OFSUB__(v73, v21);
  v89 = v73 - v21;
  if (v74)
  {
    goto LABEL_155;
  }

  v90 = v19;
  v91 = v20;
  v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v89 / 2) & ~((v89 + (v89 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v93 = v71 + 2;
  if (__OFADD__(v71, 2))
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v94 = v92;
  v95 = v91;
  v96 = v90;
  while (v72 > 1)
  {
    if (v72 == 2)
    {
      v97 = *(v96 + 24);
      goto LABEL_125;
    }

    if (v93 >= 1)
    {
      v103 = 0;
      goto LABEL_143;
    }

LABEL_128:
    *&v128 = v96;
    *(&v128 + 1) = v95;
    if (v93 < v71)
    {
      goto LABEL_152;
    }

    v98 = v96;
    v99 = v95;
    v100 = v94;
    outlined copy of Data._Representation(v96, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v128, *(&v128 + 1));
    v94 = v100;
    v102 = *(v100 + 2);
    v101 = *(v100 + 3);
    if (v102 >= v101 >> 1)
    {
      v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v100);
    }

    *(v94 + 2) = v102 + 1;
    *&v94[2 * v102 + 32] = bswap32(0) >> 16;
    v71 = v93;
    v74 = __OFADD__(v93, 2);
    v93 += 2;
    v95 = v99;
    v96 = v98;
    if (v74)
    {
      goto LABEL_150;
    }
  }

  v97 = v123;
  if (v72)
  {
    v97 = v122;
  }

LABEL_125:
  if (v97 >= v93)
  {
    goto LABEL_128;
  }

  v103 = v123;
  if (v72)
  {
    v103 = v122;
    if (v72 == 2)
    {
      v103 = *(v96 + 24);
    }
  }

LABEL_143:
  if (__OFSUB__(v103, v71))
  {
    goto LABEL_157;
  }

  v109 = v94;
  if (v103 == v71)
  {
    outlined consume of Data._Representation(v96, v95);
    outlined consume of Data._Representation(v113, v114);
    v104 = a6;
    *a6 = v109;
    v105 = 96;
LABEL_147:
    *(v104 + 80) = v105;
    goto LABEL_72;
  }

  v125 = xmmword_1B26C66C0;
  v128 = xmmword_1B26C66C0;
  v28 = 2;
  v129 = 2;
  v110 = v95;
  v111 = v96;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();

  outlined consume of Data._Representation(v111, v110);
  v108 = v117;
  outlined consume of Data._Representation(*v117, v117[1]);
  *v117 = v113;
  v117[1] = v114;
LABEL_148:
  v108[2] = v119;
  v128 = v125;
  v129 = 2;
  swift_willThrowTypedImpl();
  v13 = 0;
  v12 = 1;
  a5 = v118;
LABEL_71:
  *a5 = v12;
  *(a5 + 8) = v13;
  *(a5 + 16) = v28;
LABEL_72:
  v62 = *MEMORY[0x1E69E9840];
}

uint64_t nwswifttls_disconnect(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 40))
    {
      v2 = *(v1 + 32);
      if (v2)
      {
        v3 = *(v2 + 24);
        if (v3)
        {
          v4 = *(v3 + 32);
          if (v4)
          {
            v4();
          }
        }
      }
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary21HandshakeStateMachineV26handleReadNewSessionTicket33_0FE61F88EEA52334A02606E049165857LLAC11ProcessStepAELLOy_AA07PartialC6ResultVGyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v4 = v2;
  v63 = a2;
  v5 = type metadata accessor for Date();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B25F5000, v10, v11, "client expecting newSessionTicket", v12, 2u);
    MEMORY[0x1B274ECF0](v12, -1, -1);
  }

  if (v2[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  result = _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, v49, &v51);
  if (v3)
  {
    v18 = v49[0];
    v19 = v49[1];
    v20 = v50;
    goto LABEL_11;
  }

  v45[6] = v57;
  v45[7] = v58;
  v45[2] = v53;
  v45[3] = v54;
  v45[4] = v55;
  v45[5] = v56;
  v45[0] = v51;
  v45[1] = v52;
  v48[5] = v57;
  v48[6] = v58;
  v48[1] = v53;
  v48[2] = v54;
  v48[3] = v55;
  v48[4] = v56;
  v46 = v59;
  LOBYTE(v48[7]) = v59;
  v47 = v51;
  v48[0] = v52;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v47) != 1)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B25F5000, v22, v23, "client got message expecting new session ticket", v24, 2u);
      MEMORY[0x1B274ECF0](v24, -1, -1);
    }

    v60[4] = *(&v48[4] + 8);
    v61[0] = *(&v48[5] + 8);
    *(v61 + 9) = *(&v48[6] + 1);
    v60[0] = *(v48 + 8);
    v60[1] = *(&v48[1] + 8);
    v60[2] = *(&v48[2] + 8);
    v60[3] = *(&v48[3] + 8);
    if (LOBYTE(v48[7]) > 6u)
    {
      v62[0] = *(v48 + 8);
      v62[1] = *(&v48[1] + 8);
      v62[2] = *(&v48[2] + 8);
      v62[3] = *(&v48[3] + 8);
      v35 = type metadata accessor for HandshakeStateMachine(0);
      v25 = (v4 + *(v35 + 28));
      v27 = v25[3];
      v26 = v25[4];
      v28 = __swift_project_boxed_opaque_existential_0(v25, v27);
      v29 = *(v26 + 8);
      v33[1] = v28;
      v34 = v29;
      v43 = *(&v48[4] + 8);
      v44[0] = *(&v48[5] + 8);
      *(v44 + 9) = *(&v48[6] + 1);
      v39 = *(v48 + 8);
      v40 = *(&v48[1] + 8);
      v41 = *(&v48[2] + 8);
      v42 = *(&v48[3] + 8);
      outlined init with copy of NewSessionTicket(&v39, &v38);
      v34(v27, v26);
      v30 = v4 + *(v35 + 24);
      v31 = v63;
      _s15SwiftTLSLibrary14HandshakeStateO24receivedNewSessionTicket03newgH011currentTimeAA07PartialC6ResultVAA0fgH0V_10Foundation4DateVtAA8TLSErrorOYKF(v62, v8, v49, v63);
      (*(v36 + 8))(v8, v5);
      outlined destroy of P256.Signing.PrivateKey?(v45, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      outlined destroy of HandshakeMessage(v48 + 8);
      v32 = type metadata accessor for PartialHandshakeResult(0);
      return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    }

    HandshakeStateMachine.logUnexpectedMessage(message:)(v60);
    v39 = xmmword_1B26C6430;
    v20 = 2;
    LOBYTE(v40) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = outlined destroy of P256.Signing.PrivateKey?(v45, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    v19 = 0;
    v18 = 4;
LABEL_11:
    v21 = v37;
    *v37 = v18;
    v21[1] = v19;
    *(v21 + 16) = v20;
    return result;
  }

LABEL_6:
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1B25F5000, v13, v14, "incomplete message, waiting for more data", v15, 2u);
    MEMORY[0x1B274ECF0](v15, -1, -1);
  }

  v16 = type metadata accessor for PartialHandshakeResult(0);
  return (*(*(v16 - 8) + 56))(v63, 1, 1, v16);
}

uint64_t ByteBuffer.readSlice(length:)(uint64_t a1)
{
  result = v1[2];
  v4 = result + a1;
  if (__OFADD__(result, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      if (*(v5 + 24) >= v4)
      {
        goto LABEL_7;
      }
    }

    else if (v4 <= 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 < v4)
  {
    return 0;
  }

LABEL_7:
  if (v4 < result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  result = Data._Representation.subscript.getter();
  v1[2] = v4;
  if (v9 >> 62 == 2)
  {
    v10 = *(result + 16);
  }

  return result;
}

uint64_t sub_1B25FFF9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t storeEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void _s15SwiftTLSLibrary22HandshakeMessageParserV05parsecD0AC11ParseResultVSgyAA8TLSErrorOYKFAgA10ByteBufferVzAIYKXEfU_(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v133 = v8;
  v134 = v7;
  v135 = v9;
  outlined copy of Data._Representation(v8, v7);
  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v10 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  LOBYTE(v11) = v10;
  v12 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v12 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v14 & 0x10000) != 0)
  {
    goto LABEL_10;
  }

  if (v13)
  {
    if (v11 == 1)
    {
      *(a2 + 24) = 1;
    }

    *a3 = xmmword_1B26C6410;
    *(a3 + 16) = 2;
    v131 = xmmword_1B26C6410;
    v132[0] = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v15 = v8;
    v16 = v7;
    goto LABEL_8;
  }

  v17 = ByteBuffer.readSlice(length:)(v14);
  if (v18 >> 60 == 15)
  {
LABEL_10:
    outlined consume of Data._Representation(v8, v7);
    _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOi0_(&v131);
LABEL_11:
    v20 = *&v132[96];
    *(a4 + 96) = *&v132[80];
    *(a4 + 112) = v20;
    *(a4 + 128) = v132[112];
    v21 = *&v132[32];
    *(a4 + 32) = *&v132[16];
    *(a4 + 48) = v21;
    v22 = *&v132[64];
    *(a4 + 64) = *&v132[48];
    *(a4 + 80) = v22;
    v23 = *v132;
    *a4 = v131;
    *(a4 + 16) = v23;
    return;
  }

  v128 = v17;
  v129 = v18;
  v130 = v19;
  if (v11 <= 0xAu)
  {
    if (v11 > 3u)
    {
      if (v11 != 4)
      {
        if (v11 != 8)
        {
          goto LABEL_74;
        }

        v117 = v17;
        v118 = v18;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, logger);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1B25F5000, v43, v44, "encryptedExtensions", v45, 2u);
          MEMORY[0x1B274ECF0](v45, -1, -1);
        }

        outlined copy of Data._Representation(v117, v118);
        v46 = v140;
        v47 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l107OIglozo_AcfHIeglrzo_TR04_s15a43TLSLibrary19EncryptedExtensionsV5bytesAcA10cd7Vz_tAA8f23OYKcfc04readD0L_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_n(&v128);
        v50 = v47;
        if (v46)
        {
          v51 = v48;
          v52 = v49;
          outlined consume of Data._Representation(v128, v129);
          *&v131 = v50;
          *(&v131 + 1) = v51;
          v132[0] = v52;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined consume of Data._Representation(v8, v7);
          outlined consume of Data._Representation(v117, v118);
        }

        else
        {
          if (v47)
          {
            v140 = 0;
            outlined consume of Data._Representation(v117, v118);
            *&v122 = v50;
            v29 = 2;
            goto LABEL_90;
          }

          outlined consume of Data._Representation(v128, v129);
          v131 = 0uLL;
          v52 = 2;
          v132[0] = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined consume of Data._Representation(v8, v7);
          outlined consume of Data._Representation(v117, v118);
          v51 = 0;
        }

        *a3 = v50;
        *(a3 + 8) = v51;
        *(a3 + 16) = v52;
        return;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, logger);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1B25F5000, v73, v74, "newSessionTicket", v75, 2u);
        MEMORY[0x1B274ECF0](v75, -1, -1);
      }

      v76 = v140;
      _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128, v120, v139);
      if (v76)
      {
        goto LABEL_67;
      }

      v140 = 0;
      v122 = v139[0];
      v123 = v139[1];
      v124 = v139[2];
      v125 = v139[3];
      v29 = 7;
    }

    else
    {
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, logger);
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_1B25F5000, v25, v26, "serverHello", v27, 2u);
            MEMORY[0x1B274ECF0](v27, -1, -1);
          }

          v28 = v140;
          _s15SwiftTLSLibrary11ServerHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128, v120, v138);
          if (!v28)
          {
            v140 = 0;
            v124 = v138[2];
            v125 = v138[3];
            v126 = v138[4];
            *v127 = v138[5];
            v29 = 1;
            v122 = v138[0];
            v123 = v138[1];
            goto LABEL_90;
          }

LABEL_67:
          v77 = v120[0];
          v78 = v120[1];
          v79 = v121;
          outlined consume of Data._Representation(v8, v7);
          outlined consume of Data._Representation(v128, v129);
          *a3 = v77;
          *(a3 + 8) = v78;
          *(a3 + 16) = v79;
          return;
        }

LABEL_74:
        v9 = v18;
        a4 = v17;
        if (one-time initialization token for logger == -1)
        {
LABEL_75:
          v88 = type metadata accessor for Logger();
          __swift_project_value_buffer(v88, logger);
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *&v131 = v92;
            *v91 = 136315138;
            v93 = HandshakeType.description.getter(v11);
            v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v131);

            *(v91 + 4) = v95;
            _os_log_impl(&dword_1B25F5000, v89, v90, "Unsupported handshake message: %s", v91, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v92);
            MEMORY[0x1B274ECF0](v92, -1, -1);
            MEMORY[0x1B274ECF0](v91, -1, -1);

            v8 = v133;
            v7 = v134;
            a4 = v128;
            v9 = v129;
          }

          else
          {
          }

          *a3 = xmmword_1B26C6410;
          *(a3 + 16) = 2;
          v131 = xmmword_1B26C6410;
          v132[0] = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined consume of Data._Representation(v8, v7);
          v15 = a4;
          v16 = v9;
          goto LABEL_8;
        }

LABEL_118:
        swift_once();
        goto LABEL_75;
      }

      *(a2 + 24) = 1;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, logger);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_1B25F5000, v60, v61, "clientHello", v62, 2u);
        MEMORY[0x1B274ECF0](v62, -1, -1);
      }

      v63 = v140;
      _s15SwiftTLSLibrary11ClientHelloV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128, v120, v136);
      if (v63)
      {
        goto LABEL_67;
      }

      v140 = 0;
      v29 = 0;
      *&v127[16] = v137;
      v126 = v136[4];
      *v127 = v136[5];
      v122 = v136[0];
      v123 = v136[1];
      v124 = v136[2];
      v125 = v136[3];
    }

LABEL_90:
    v127[24] = v29;
    v99 = v128;
    v100 = v129;
    v101 = v130;
    v102 = v129 >> 62;
    if ((v129 >> 62) > 1)
    {
      if (v102 == 2)
      {
        v103 = *(v128 + 24);
      }

      else
      {
        v103 = 0;
      }
    }

    else if (v102)
    {
      v103 = v128 >> 32;
    }

    else
    {
      v103 = BYTE6(v129);
    }

    if (__OFSUB__(v103, v130))
    {
      __break(1u);
    }

    else
    {
      if (v103 != v130)
      {
        if (one-time initialization token for logger == -1)
        {
          goto LABEL_103;
        }

        goto LABEL_116;
      }

      v104 = a1[2];
      if (!__OFSUB__(v104, v9))
      {
        v105 = ByteBuffer.readSlice(length:)(v104 - v9);
        if (v106 >> 60 != 15)
        {
          v108 = v105;
          v109 = v106;
          v110 = v107;
          outlined consume of Data._Representation(v133, v134);
          outlined consume of Data._Representation(v99, v100);
          *&v132[56] = v125;
          *&v132[72] = v126;
          *&v132[88] = *v127;
          *&v132[97] = *&v127[9];
          *&v132[8] = v122;
          *&v132[24] = v123;
          *&v132[40] = v124;
          *&v131 = v108;
          *(&v131 + 1) = v109;
          *v132 = v110;
          _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_(&v131);
          goto LABEL_11;
        }

        goto LABEL_120;
      }
    }

    __break(1u);
LABEL_116:
    swift_once();
LABEL_103:
    v111 = type metadata accessor for Logger();
    __swift_project_value_buffer(v111, logger);
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 134217984;
      swift_beginAccess();
      v115 = v129 >> 62;
      if ((v129 >> 62) > 1)
      {
        v116 = 0;
        if (v115 == 2)
        {
          v116 = *(v128 + 24);
        }
      }

      else if (v115)
      {
        v116 = v128 >> 32;
      }

      else
      {
        v116 = BYTE6(v129);
      }

      if (__OFSUB__(v116, v101))
      {
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      *(v114 + 4) = v116 - v101;
      _os_log_impl(&dword_1B25F5000, v112, v113, "ExcessBytes: %ld", v114, 0xCu);
      MEMORY[0x1B274ECF0](v114, -1, -1);
    }

    *a3 = xmmword_1B26C66C0;
    *(a3 + 16) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeMessage(&v122);
    outlined consume of Data._Representation(v133, v134);
    v15 = v128;
    v16 = v129;
LABEL_8:
    outlined consume of Data._Representation(v15, v16);
    return;
  }

  if (v11 <= 0xEu)
  {
    if (v11 == 11)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, logger);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1B25F5000, v65, v66, "certificate", v67, 2u);
        MEMORY[0x1B274ECF0](v67, -1, -1);
      }

      v68 = v140;
      v69 = _s15SwiftTLSLibrary18CertificateMessageV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128);
      v38 = v69;
      v39 = v70;
      v41 = v71;
      if (!v68)
      {
        v140 = 0;
        *&v122 = v69;
        *(&v122 + 1) = v70;
        v29 = 4;
        goto LABEL_61;
      }
    }

    else
    {
      if (v11 != 13)
      {
        goto LABEL_74;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, logger);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1B25F5000, v31, v32, "certificateRequest", v33, 2u);
        MEMORY[0x1B274ECF0](v33, -1, -1);
      }

      v34 = v140;
      v35 = _s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128);
      v38 = v35;
      v39 = v36;
      v41 = v40;
      if (!v34)
      {
        v140 = 0;
        *&v122 = v35;
        *(&v122 + 1) = v36;
        v29 = 3;
LABEL_61:
        *&v123 = v41;
        *(&v123 + 1) = v37;
        goto LABEL_90;
      }
    }

LABEL_73:
    outlined consume of Data._Representation(v8, v7);
    outlined consume of Data._Representation(v128, v129);
    *a3 = v38;
    *(a3 + 8) = v39;
    *(a3 + 16) = v41;
    return;
  }

  if (v11 == 15)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, logger);
    v41 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1B25F5000, v41, v81, "certificateVerify", v82, 2u);
      MEMORY[0x1B274ECF0](v82, -1, -1);
    }

    v83 = v140;
    v84 = _s15SwiftTLSLibrary17CertificateVerifyV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(&v128);
    v38 = v84;
    v39 = v85;
    LOBYTE(v41) = v86;
    if (!v83)
    {
      v140 = 0;
      LOWORD(v122) = v84;
      *(&v122 + 1) = v85;
      *&v123 = v86;
      v29 = 5;
      *(&v123 + 1) = v87;
      goto LABEL_90;
    }

    goto LABEL_73;
  }

  if (v11 != 20)
  {
    goto LABEL_74;
  }

  v8 = v19;
  v53 = v18;
  v11 = v17;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, logger);
  v55 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v7))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1B25F5000, v55, v7, "finished", v56, 2u);
    MEMORY[0x1B274ECF0](v56, -1, -1);
  }

  v57 = v53 >> 62;
  if ((v53 >> 62) > 1)
  {
    if (v57 == 2)
    {
      v58 = *(v11 + 24);
    }

    else
    {
      v58 = 0;
    }
  }

  else if (v57)
  {
    v58 = v11 >> 32;
  }

  else
  {
    v58 = BYTE6(v53);
  }

  if (__OFSUB__(v58, v8))
  {
    __break(1u);
    goto LABEL_118;
  }

  v96 = ByteBuffer.readSlice(length:)(v58 - v8);
  if (v97 >> 60 != 15)
  {
    *&v122 = v96;
    *(&v122 + 1) = v97;
    v29 = 6;
    *&v123 = v98;
    goto LABEL_90;
  }

LABEL_121:
  __break(1u);
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = v0[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  outlined copy of Data._Representation(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
  DataProtocol.copyBytes<A>(to:from:)();
  outlined consume of Data._Representation(v10, v11);
  v7 = 0;
  v0[2] = v2;
LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
  return (v7 << 8);
}

unint64_t _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt32V_Tt0g5()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = v0[2];
  v2 = v1 + 4;
  if (__OFADD__(v1, 4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = *v0;
  v12 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  outlined copy of Data._Representation(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
  DataProtocol.copyBytes<A>(to:from:)();
  outlined consume of Data._Representation(v11, v12);
  v7 = 0;
  v8 = bswap32(0);
  v0[2] = v2;
LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
  return v8 | (v7 << 32);
}

uint64_t _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined destroy of SessionTicket(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of P256.Signing.PublicKey?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int specialized Array.append<A>(contentsOf:)(Swift::Int result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = String.UTF8View._foreignCount()();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v9 = v5 + v3;
      }

      else
      {
        v9 = v5;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v4);
      v10 = *(v4 + 3) >> 1;
    }

    v11 = *(v4 + 2);
    result = _StringGuts.copyUTF8(into:)();
    if (v12)
    {
      goto LABEL_22;
    }

    v13 = result;

    if (v13 >= v3)
    {
      if (v13 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v14 = *(v4 + 2);
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      if (!v15)
      {
        *(v4 + 2) = v16;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t closure #1 in static HKDF.expandLabel<A, B>(secret:label:context:length:)(uint64_t a1, char *a2, char **a3)
{
  if (a1)
  {
    v7 = &a2[-a1];
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 <= 0xFF)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  *v3 = v6;
LABEL_7:
  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  if (v10 >= v9 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v6);
    *v3 = v6;
  }

  *(v6 + 2) = v10 + 1;
  v6[v10 + 32] = v7;
  return specialized Array.append<A>(contentsOf:)(v5, v4);
}

uint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v11 = *(v7 + 24) >> 1, v11 < v9))
  {
    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v7);
    v7 = result;
    v11 = *(result + 24) >> 1;
  }

  v13 = *(v7 + 16);
  v14 = v11 - v13;
  v15 = 0;
  if (v3 && v4 && v4 > v3 && v11 != v13)
  {
    if (v5 >= v14)
    {
      v15 = v11 - v13;
    }

    else
    {
      v15 = v5;
    }

    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v13 + 32), v3, v15);
    v3 += v15;
  }

  if (v15 < v6)
  {
    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (!v17)
  {
    *(v7 + 16) = v18;
LABEL_24:
    if (v15 != v14 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v21 = *(v7 + 16);
  v24 = *v3;
  v22 = v3 + 1;
  v23 = v24;
  while (1)
  {
    v25 = *(v7 + 24);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v21 + 1)
    {
      break;
    }

    if (v21 < v26)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v21;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v21 + 1, 1, v7);
  v7 = result;
  v26 = *(result + 24) >> 1;
  if (v21 >= v26)
  {
    goto LABEL_37;
  }

LABEL_40:
  v27 = v21 + 32;
  while (1)
  {
    *(v7 + v27) = v23;
    if (v22 == v4)
    {
      break;
    }

    v28 = *v22++;
    v23 = v28;
    if (++v27 - v26 == 32)
    {
      v21 = v26;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v27 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of HandshakeState.IdleState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary14HandshakeStateO05ReadyD0V20prepareSessionTicket7message11currentTimeAA0gH0VAA03NewgH0V_10Foundation4DateVtAA8TLSErrorOYKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v139 = a3;
  v136 = a2;
  v127 = a4;
  v132 = type metadata accessor for Date();
  v129 = *(v132 - 8);
  v6 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v128 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v135 = &v115 - v10;
  v11 = type metadata accessor for PeerCertificateBundle(0);
  v133 = *(v11 - 8);
  v134 = v11;
  v12 = *(v133 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v130 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v131 = &v115 - v15;
  v16 = type metadata accessor for SymmetricKey();
  v138 = *(v16 - 8);
  v17 = *(v138 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v115 - v21;
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v24 = *(ready + 44);
  v25 = a1[1];
  v26 = a1[2];
  v126 = a1;
  v27 = a1[3];
  *&v137 = v4;
  v28 = v155;
  result = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV08generateC9TicketPSKy9CryptoKit09SymmetricD0VAA10ByteBufferVAA8TLSErrorOYKFAF6SHA384V_Tg5(v25, v26, v27, &v150, v22);
  if (v28)
  {
    v30 = v150;
    v31 = v151;
    goto LABEL_9;
  }

  v121 = v27;
  v122 = v26;
  v123 = v25;
  v124 = v20;
  v32 = v136;
  v120 = 0;
  v125 = v22;
  v155 = v16;
  v33 = v137;
  v34 = v135;
  outlined init with copy of Any?(v137 + *(ready + 28), v135, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
  if ((*(v133 + 48))(v34, 1, v134) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v34, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
    v137 = xmmword_1B26CACB0;
    v143 = xmmword_1B26CACB0;
    v31 = 2;
    LOBYTE(v144) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = (*(v138 + 8))(v125, v155);
LABEL_8:
    v30 = v137;
LABEL_9:
    v39 = v139;
LABEL_10:
    *v39 = v30;
    *(v39 + 16) = v31;
    return result;
  }

  v35 = ready;
  v36 = v131;
  outlined init with take of HandshakeState.IdleState(v34, v131, type metadata accessor for PeerCertificateBundle);
  v37 = v125;
  v38 = v138;
  if (*(v33 + 68) & 1) != 0 || (*(v33 + 72))
  {
    v137 = xmmword_1B26CACA0;
    v143 = xmmword_1B26CACA0;
    v31 = 2;
    LOBYTE(v144) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeState(v36, type metadata accessor for PeerCertificateBundle);
    result = (*(v38 + 8))(v37, v155);
    goto LABEL_8;
  }

  LODWORD(v134) = *(v33 + 66);
  LODWORD(v135) = *(v33 + 70);
  v118 = *(v138 + 16);
  v119 = v138 + 16;
  v118(v124, v125, v155);
  v40 = (v33 + *(v35 + 32));
  v42 = *v40;
  v41 = v40[1];
  v133 = v42;
  *&v137 = v41;
  v117 = type metadata accessor for PeerCertificateBundle;
  outlined init with copy of HandshakeState(v36, v130, type metadata accessor for PeerCertificateBundle);
  v43 = v128;
  v44 = *(v129 + 16);
  v45 = v132;
  v44(v128, v32, v132);
  v46 = v127;
  v44(v127, v43, v45);
  v47 = v126;
  if (*v126 >= 0x93A80u)
  {
    v48 = 604800;
  }

  else
  {
    v48 = *v126;
  }

  v49 = type metadata accessor for SessionTicket();
  v50 = &v46[v49[13]];
  *&v46[v49[5]] = v48;
  *&v46[v49[6]] = v47[1];
  v154 = *(v47 + 6);
  v51 = v154;
  v153 = *(v47 + 2);
  v52 = &v46[v49[8]];
  *v52 = v153;
  v116 = v52;
  *(v52 + 2) = v51;
  v53 = &v46[v49[7]];
  v54 = v122;
  *v53 = v123;
  v53[1] = v54;
  v115 = v53;
  v53[2] = v121;
  v55 = v130;
  v56 = v49[9];
  v118(&v46[v56], v124, v155);
  *&v46[v49[11]] = v134;
  *&v46[v49[12]] = v135;
  v57 = v137;
  *v50 = v133;
  *(v50 + 1) = v57;
  v136 = v49;
  v58 = v49[14];
  outlined init with copy of HandshakeState(v55, &v46[v58], v117);
  v149 = MEMORY[0x1E69E7CD0];
  v59 = *(v47 + 7);
  v152 = v59;
  v60 = *(v59 + 16);
  if (v60)
  {
    v134 = v58;
    v135 = v56;
    v61 = v54;
    v62 = v59 + 32;
    outlined init with copy of NewSessionTicket(v47, &v143);

    outlined init with copy of ByteBuffer(&v153, &v143);
    outlined copy of Data._Representation(v123, v61);
    outlined init with copy of Any?(&v152, &v143, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
    v63 = 0;
    v64 = v60 - 1;
    v65 = 1;
    v66 = v132;
    while (1)
    {
      v67 = *(v62 + 16);
      v143 = *v62;
      v144 = v67;
      v68 = *(v62 + 32);
      v69 = *(v62 + 48);
      v70 = *(v62 + 64);
      v148 = *(v62 + 80);
      v146 = v69;
      v147 = v70;
      v145 = v68;
      v71 = 42;
      switch(v148 >> 4)
      {
        case 1:

          v71 = 10;
          break;
        case 2:
          sub_1B260EDD8(v143, BYTE8(v143) & 1);
          v71 = 43;
          break;
        case 3:
          outlined copy of Extension.ApplicationLayerProtocolNegotiation();
          v71 = 16;
          break;
        case 4:
          outlined copy of Extension.KeyShare(v143, *(&v143 + 1), v144);
          v71 = 51;
          break;
        case 5:
          break;
        case 6:

          v71 = 13;
          break;
        case 7:
          sub_1B260EDD8(v143, BYTE8(v143) & 1);
          v71 = 20;
          break;
        case 8:
          outlined copy of Data._Representation(v143, *(&v143 + 1));
          v71 = 57;
          break;
        case 9:

          v71 = 45;
          break;
        case 0xA:
          outlined copy of Extension.PreSharedKey(v143, *(&v143 + 1), v144 & 1);
          v71 = 41;
          break;
        case 0xB:
          v71 = 58;
          break;
        case 0xC:
          outlined copy of Extension.PAKE(v143, *(&v143 + 1), v144, *(&v144 + 1), v145, *(&v145 + 1), v146, *(&v146 + 1), v147, *(&v147 + 1), v148 & 1);
          v71 = 35387;
          break;
        case 0xD:
          v72 = v143;
          outlined copy of Data._Representation(*(&v143 + 1), v144);
          v71 = v72;
          break;
        default:
          outlined copy of Data?(v143, *(&v143 + 1));
          v71 = 0;
          break;
      }

      if ((specialized Set._Variant.insert(_:)(&v141, v71) & 1) == 0)
      {

        outlined destroy of P256.Signing.PrivateKey?(&v152, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v78 = type metadata accessor for Logger();
        __swift_project_value_buffer(v78, logger);
        outlined init with copy of Extension(&v143, &v141);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        outlined destroy of Extension(&v143);
        v81 = os_log_type_enabled(v79, v80);
        v82 = v127;
        v83 = v155;
        v84 = v129;
        v85 = v138;
        if (v81)
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *&v141 = v87;
          *v86 = 136315138;
          v88 = 0;
          switch(v148 >> 4)
          {
            case 1:
              v88 = 10;
              break;
            case 2:
              v88 = 43;
              break;
            case 3:
              v88 = 16;
              break;
            case 4:
              v88 = 51;
              break;
            case 5:
              v88 = 42;
              break;
            case 6:
              v88 = 13;
              break;
            case 7:
              v88 = 20;
              break;
            case 8:
              v88 = 57;
              break;
            case 9:
              v88 = 45;
              break;
            case 0xA:
              v88 = 41;
              break;
            case 0xB:
              v88 = 58;
              break;
            case 0xC:
              v88 = -30149;
              break;
            case 0xD:
              v88 = v143;
              break;
            default:
              break;
          }

          v110 = ExtensionType.description.getter(v88);
          v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, &v141);

          *(v86 + 4) = v112;
          _os_log_impl(&dword_1B25F5000, v79, v80, "server offered duplicate extension of type %s on new session ticket", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v87);
          MEMORY[0x1B274ECF0](v87, -1, -1);
          MEMORY[0x1B274ECF0](v86, -1, -1);

          v85 = v138;
          v39 = v139;
          v83 = v155;
        }

        else
        {

          v39 = v139;
        }

        v113 = v128;
        v114 = v126;
        v141 = xmmword_1B26C6410;
        v142 = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined destroy of NewSessionTicket(v114);
        outlined destroy of Extension(&v143);
        v107 = *(v84 + 8);
        v108 = v132;
        v107(v113, v132);
        outlined destroy of HandshakeState(v130, type metadata accessor for PeerCertificateBundle);
        v109 = *(v85 + 8);
        v109(v124, v83);
        goto LABEL_76;
      }

      if ((v148 & 0xF0) == 0x50)
      {
        v73 = v143;
        v74 = BYTE4(v143);
        if (v65 & 1) == 0 || (BYTE4(v143))
        {

          outlined destroy of P256.Signing.PrivateKey?(&v152, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v89 = type metadata accessor for Logger();
          __swift_project_value_buffer(v89, logger);
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.error.getter();
          v92 = os_log_type_enabled(v90, v91);
          v93 = v138;
          if (v92)
          {
            LODWORD(v133) = v65 | v74;
            v94 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *&v141 = v136;
            *v94 = 136315394;
            if (v65)
            {
              v95 = 0xE300000000000000;
              v96 = 7104878;
            }

            else
            {
              v140 = v63;
              lazy protocol witness table accessor for type UInt32 and conformance UInt32();
              v96 = BinaryInteger.description.getter();
              v95 = v98;
            }

            v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v95, &v141);

            *(v94 + 4) = v99;
            *(v94 + 12) = 2080;
            v82 = v127;
            v97 = v129;
            if (v133)
            {
              v100 = 0xE300000000000000;
              v39 = v139;
              v101 = 7104878;
            }

            else
            {
              v140 = v73;
              lazy protocol witness table accessor for type UInt32 and conformance UInt32();
              v101 = BinaryInteger.description.getter();
              v100 = v102;
              v39 = v139;
            }

            v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v100, &v141);

            *(v94 + 14) = v103;
            _os_log_impl(&dword_1B25F5000, v90, v91, "invalid early data extension: old value %s new value %s", v94, 0x16u);
            v104 = v136;
            swift_arrayDestroy();
            MEMORY[0x1B274ECF0](v104, -1, -1);
            MEMORY[0x1B274ECF0](v94, -1, -1);

            v93 = v138;
          }

          else
          {

            v39 = v139;
            v82 = v127;
            v97 = v129;
          }

          v105 = v128;
          v106 = v126;
          v141 = xmmword_1B26C6410;
          v142 = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined destroy of NewSessionTicket(v106);
          v107 = *(v97 + 8);
          v108 = v132;
          v107(v105, v132);
          outlined destroy of HandshakeState(v130, type metadata accessor for PeerCertificateBundle);
          v109 = *(v93 + 8);
          v83 = v155;
          v109(v124, v155);
LABEL_76:
          v107(v82, v108);
          outlined consume of Data._Representation(*v115, v115[1]);
          outlined consume of Data._Representation(*v116, *(v116 + 8));
          v109(&v82[v135], v83);

          outlined destroy of HandshakeState(&v82[v134], type metadata accessor for PeerCertificateBundle);
          outlined destroy of HandshakeState(v131, type metadata accessor for PeerCertificateBundle);
          result = (v109)(v125, v83);
          v30 = xmmword_1B26C6410;
          v31 = 2;
          goto LABEL_10;
        }

        v65 = 0;
        v66 = v132;
      }

      else
      {
        outlined destroy of Extension(&v143);
        v73 = v63;
      }

      if (!v64)
      {
        break;
      }

      --v64;
      v62 += 88;
      v63 = v73;
    }

    outlined destroy of NewSessionTicket(v126);
    outlined destroy of P256.Signing.PrivateKey?(&v152, &_sSay15SwiftTLSLibrary9ExtensionOGMd, &_sSay15SwiftTLSLibrary9ExtensionOGMR);
    (*(v129 + 8))(v128, v66);
    outlined destroy of HandshakeState(v130, type metadata accessor for PeerCertificateBundle);
    v75 = *(v138 + 8);
    v76 = v155;
    v75(v124, v155);

    if (v65)
    {
      v77 = 0;
    }

    else
    {
      v77 = v73;
    }

    v46 = v127;
  }

  else
  {

    outlined init with copy of ByteBuffer(&v153, &v143);
    outlined copy of Data._Representation(v123, v54);
    (*(v129 + 8))(v128, v132);
    outlined destroy of HandshakeState(v55, type metadata accessor for PeerCertificateBundle);
    v75 = *(v138 + 8);
    v76 = v155;
    v75(v124, v155);
    v77 = 0;
  }

  *&v46[*(v136 + 40)] = v77;
  outlined destroy of HandshakeState(v131, type metadata accessor for PeerCertificateBundle);
  return (v75)(v125, v76);
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, char **a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v9, 0, 14);
      v4 = v9;
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      v4 = v9 + BYTE6(a2);
LABEL_9:
      result = closure #1 in static HKDF.expandLabel<A, B>(secret:label:context:length:)(v9, v4, a3);
      goto LABEL_10;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_WORD *a1, Swift::Int a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy15SwiftTLSLibrary13ExtensionTypeVGMd, &_ss11_SetStorageCy15SwiftTLSLibrary13ExtensionTypeVGMR);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy15SwiftTLSLibrary10PAKESchemeVGMd, &_ss11_SetStorageCy15SwiftTLSLibrary10PAKESchemeVGMR);
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + 2 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 2 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t ByteBuffer.writeLengthPrefixedImmutableBuffer(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = BYTE6(a2);
  v21[5] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a2);
    if (v6)
    {
      v7 = a1 >> 32;
    }
  }

  v8 = __OFSUB__(v7, a3);
  v9 = v7 - a3;
  if (v8)
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = bswap64(v9);
  v21[3] = MEMORY[0x1E69E6290];
  v21[4] = MEMORY[0x1E6969DF8];
  v21[0] = &v20;
  v21[1] = v21;
  v10 = __swift_project_boxed_opaque_existential_0(v21, MEMORY[0x1E69E6290]);
  v12 = *v10;
  v11 = v10[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v14 = *(a1 + 16);
      v13 = *(a1 + 24);
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    if (v6)
    {
      v13 = a1 >> 32;
    }

    else
    {
      v13 = v4;
    }

    if (v6)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v13 < a3 || v13 < v14)
  {
LABEL_25:
    __break(1u);
  }

  v15 = Data._Representation.subscript.getter();
  v17 = v16;
  Data.append(_:)();
  result = outlined consume of Data._Representation(v15, v17);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t specialized Data.append<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (!swift_dynamicCast())
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    outlined destroy of ContiguousBytes?(v41);
    result = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(a1, a2);
    if ((result & 1) == 0)
    {
      goto LABEL_68;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_72;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

LABEL_8:
    v8 = *v2;
    v9 = v2[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        v12 = 0;
        goto LABEL_18;
      }

      v13 = v8 + 16;
      v8 = *(v8 + 16);
      v11 = *(v13 + 8);
      v12 = v11 - v8;
      if (!__OFSUB__(v11, v8))
      {
LABEL_18:
        if (__OFADD__(v11, v7))
        {
          __break(1u);
        }

        else if (v11 + v7 >= v11)
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            v14 = Data._Representation.resetBytes(in:)();
            MEMORY[0x1EEE9AC00](v14);
            v15 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.append<A>(contentsOf:));
            v19 = v16;
            if (v18 == v7)
            {
              v20 = v15;
              v21 = v17;
              if ((v16 & 0x2000000000000000) != 0)
              {
                v22 = HIBYTE(v16) & 0xF;
              }

              else
              {
                v22 = v15 & 0xFFFFFFFFFFFFLL;
              }

              *(v41 + 7) = 0;
              *&v41[0] = 0;
              if (4 * v22 == v17 >> 14)
              {
LABEL_67:

                goto LABEL_68;
              }

              LOBYTE(v23) = 0;
              v24 = (v15 >> 59) & 1;
              if ((v16 & 0x1000000000000000) == 0)
              {
                LOBYTE(v24) = 1;
              }

              v25 = 4 << v24;
              v39 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v40 = v16 & 0xFFFFFFFFFFFFFFLL;
              while (1)
              {
                v26 = v21 & 0xC;
                v27 = v21;
                if (v26 == v25)
                {
                  v27 = _StringGuts._slowEnsureMatchingEncoding(_:)(v21, v20, v19);
                }

                v28 = v27 >> 16;
                if (v27 >> 16 >= v22)
                {
                  __break(1u);
LABEL_70:
                  __break(1u);
LABEL_71:
                  __break(1u);
LABEL_72:
                  v7 = String.UTF8View._foreignCount()();
                  goto LABEL_8;
                }

                if ((v19 & 0x1000000000000000) != 0)
                {
                  v30 = String.UTF8View._foreignSubscript(position:)();
                  if (v26 != v25)
                  {
                    goto LABEL_40;
                  }
                }

                else if ((v19 & 0x2000000000000000) != 0)
                {
                  *&v43 = v20;
                  *(&v43 + 1) = v40;
                  v30 = *(&v43 + v28);
                  if (v26 != v25)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v29 = v39;
                  if ((v20 & 0x1000000000000000) == 0)
                  {
                    v29 = _StringObject.sharedUTF8.getter();
                  }

                  v30 = *(v29 + v28);
                  if (v26 != v25)
                  {
LABEL_40:
                    if ((v19 & 0x1000000000000000) != 0)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_41;
                  }
                }

                v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v21, v20, v19);
                if ((v19 & 0x1000000000000000) != 0)
                {
LABEL_44:
                  if (v22 <= v21 >> 16)
                  {
                    goto LABEL_71;
                  }

                  v21 = String.UTF8View._foreignIndex(after:)();
                  goto LABEL_46;
                }

LABEL_41:
                v21 = (v21 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_46:
                *(v41 + v23) = v30;
                v23 = v23 + 1;
                if ((v23 >> 8))
                {
                  goto LABEL_70;
                }

                if (v23 == 14)
                {
                  *&v43 = *&v41[0];
                  *(&v43 + 6) = *(v41 + 6);
                  Data._Representation.append(contentsOf:)();
                  LOBYTE(v23) = 0;
                }

                if (4 * v22 == v21 >> 14)
                {
                  if (v23)
                  {
                    *&v43 = *&v41[0];
                    *(&v43 + 6) = *(v41 + 6);
                    Data._Representation.append(contentsOf:)();
                  }

                  goto LABEL_67;
                }
              }
            }

            v31 = 0;
            v32 = *v2;
            v33 = v2[1];
            v34 = v33 >> 62;
            if ((v33 >> 62) > 1)
            {
              if (v34 == 2)
              {
                v31 = *(v32 + 16);
              }
            }

            else if (v34)
            {
              v31 = v32;
            }

            v35 = __OFADD__(v31, v12);
            v36 = v31 + v12;
            if (!v35)
            {
              if (!__OFADD__(v36, v18))
              {
                if (v34 > 1)
                {
                  if (v34 == 2)
                  {
                    v37 = *(v32 + 24);
                  }

                  else
                  {
                    v37 = 0;
                  }
                }

                else if (v34)
                {
                  v37 = v32 >> 32;
                }

                else
                {
                  v37 = BYTE6(v33);
                }

                if (v37 >= v36 + v18)
                {
                  Data._Representation.replaceSubrange(_:with:count:)();
                  goto LABEL_67;
                }

                goto LABEL_78;
              }

LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        __break(1u);
        goto LABEL_75;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v9);
      v12 = BYTE6(v9);
      goto LABEL_18;
    }

    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_79;
    }

    v12 = HIDWORD(v8) - v8;
    v11 = v8 >> 32;
    goto LABEL_18;
  }

  outlined init with take of ContiguousBytes(v41, &v43);
  v5 = __swift_project_boxed_opaque_existential_0(&v43, v44);
  MEMORY[0x1EEE9AC00](v5);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  result = __swift_destroy_boxed_opaque_existential_0(&v43);
LABEL_68:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ByteBuffer.writePeerCertificateBundle(_:)(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for P256.Signing.PublicKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PeerCertificateBundle.Bundle(a1, v10);
  if ((*(v3 + 48))(v10, 1, v2) != 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    LOBYTE(v35) = 0;
    v15 = MEMORY[0x1E69E6290];
    v16 = MEMORY[0x1E6969DF8];
    v38 = MEMORY[0x1E69E6290];
    v39 = MEMORY[0x1E6969DF8];
    v36 = &v35;
    v37 = (&v35 + 1);
    v17 = __swift_project_boxed_opaque_existential_0(&v36, MEMORY[0x1E69E6290]);
    v19 = *v17;
    v18 = v17[1];
    Data._Representation.append(contentsOf:)();
    v20 = __swift_destroy_boxed_opaque_existential_0(&v36);
    v21 = MEMORY[0x1B274D470](v20);
    v23 = v21;
    v24 = v22;
    v25 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_14;
      }

      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (!v29)
      {
LABEL_12:
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        __break(1u);
LABEL_14:
        v26 = 0;
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v25)
    {
      v26 = BYTE6(v22);
LABEL_15:
      v38 = v15;
      v39 = v16;
      v35 = bswap64(v26);
      v36 = &v35;
      v37 = &v36;
      v30 = __swift_project_boxed_opaque_existential_0(&v36, v15);
      v32 = *v30;
      v31 = v30[1];
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v36);
      specialized ByteBuffer.writeBytes<A>(_:)(v23, v24);
      outlined consume of Data._Representation(v23, v24);
      result = (*(v3 + 8))(v6, v2);
      goto LABEL_16;
    }

    LODWORD(v26) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      __break(1u);
    }

    v26 = v26;
    goto LABEL_12;
  }

  LOBYTE(v35) = 1;
  v38 = MEMORY[0x1E69E6290];
  v39 = MEMORY[0x1E6969DF8];
  v36 = &v35;
  v37 = (&v35 + 1);
  v11 = __swift_project_boxed_opaque_existential_0(&v36, MEMORY[0x1E69E6290]);
  v13 = *v11;
  v12 = v11[1];
  Data._Representation.append(contentsOf:)();
  result = __swift_destroy_boxed_opaque_existential_0(&v36);
LABEL_16:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t outlined init with copy of PeerCertificateBundle.Bundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = Data._Representation.append(contentsOf:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for SHA384();
      _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      MEMORY[0x1B274CD90]();
      goto LABEL_14;
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  result = Data._Representation.replaceSubrange(_:with:count:)();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1B274CD90]();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1B274CD90]();
      type metadata accessor for SHA384();
      _s9CryptoKit12SymmetricKeyVAC10Foundation15ContiguousBytesAAWlTm_0(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1B274CD90]();
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

double _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v3, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMR, type metadata accessor for GeneralEPSK);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for GeneralEPSK(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of X25519MLKEM768EphemeralKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GeneratedEphemeralPrivateKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v42);
    __swift_project_boxed_opaque_existential_0(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of ContiguousBytes?(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of ByteBuffer?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of ByteBuffer?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}