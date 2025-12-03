@interface PKDTransaction
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)marshalPaths:(id)paths;
- (BOOL)processPaths:(id)paths;
- (BOOL)processUuidList:(id)list;
- (OS_xpc_object)connection;
- (PKDServer)server;
- (PKDTransaction)initWithRequest:(id)request forClient:(id)client;
- (id)findPlugInByPathURL:(id)l;
- (id)findPlugInByUUID:(id)d;
- (void)accessPlugIns;
- (void)addAnnotationForPlugIn:(id)in in:(id)a4;
- (void)addPlugIns;
- (void)annotatePlugIns;
- (void)bulkAnnotatePlugIns;
- (void)bulkPlugIns;
- (void)dispatch;
- (void)done;
- (void)fail:(int64_t)fail error:(id)error;
- (void)fail:(int64_t)fail message:(id)message;
- (void)findPlugIn;
- (void)lockDownPlugIns;
- (void)matchPlugIns;
- (void)readyPlugIns;
- (void)removePlugIns;
@end

@implementation PKDTransaction

- (void)dispatch
{
  client = [self client];
  [client pid];
  v7 = self[1];
  dispatch_queue_get_label(0);
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x1Cu);
}

- (PKDServer)server
{
  client = [(PKDTransaction *)self client];
  server = [client server];

  return server;
}

- (void)matchPlugIns
{
  if (os_log_type_enabled(self, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
  }
}

- (void)findPlugIn
{
  uuid = [self uuid];
  identifier = [self identifier];
  version = [self version];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x2Au);
}

- (OS_xpc_object)connection
{
  client = [(PKDTransaction *)self client];
  connection = [client connection];

  return connection;
}

- (void)done
{
  reply = [(PKDTransaction *)self reply];
  uint64 = xpc_dictionary_get_uint64(reply, &PKDErrorCodeKey);

  v5 = pklog_handle_for_category();
  v6 = v5;
  interval = self->_interval;
  if (interval - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    type = self->_type;
    v11 = 136446466;
    v12 = type;
    v13 = 2050;
    v14 = uint64;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, interval, "DaemonXPCRequest", " command=%{public, signpost.description:attribute}s  error=%{public, signpost.description:attribute}llu ", &v11, 0x16u);
  }

  connection = [(PKDTransaction *)self connection];
  reply2 = [(PKDTransaction *)self reply];
  xpc_connection_send_message(connection, reply2);
}

void __30__PKDTransaction_matchPlugIns__block_invoke_151(uint64_t a1, void *a2)
{
  v3 = a2;
  v85 = v3;
  if ((*(*(*(a1 + 72) + 8) + 25) & 2) == 0)
  {
    v4 = v3;
    if (([v3 onSystemVolume] & 1) == 0)
    {
      v5 = [v4 containingUrl];

      if (!v5)
      {
        v6 = pklog_handle_for_category();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v18 = *(a1 + 32);
          v19 = [v85 uuid];
          v20 = [v85 identifier];
          v21 = [v85 version];
          *buf = 138413058;
          *&buf[4] = v18;
          *&buf[12] = 2114;
          *&buf[14] = v19;
          *&buf[22] = 2112;
          v101 = v20;
          *v102 = 2112;
          *&v102[2] = v21;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[d %@] [u %{public}@] [%@(%@)] rejecting; non-system plugins must have a containing app", buf, 0x2Au);
        }

        goto LABEL_56;
      }

      v4 = v85;
      if ((*(*(*(a1 + 72) + 8) + 24) & 8) != 0)
      {
        v6 = pklog_handle_for_category();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v22 = *(a1 + 32);
          v23 = [v85 uuid];
          v24 = [v85 identifier];
          v25 = [v85 version];
          *buf = 138413058;
          *&buf[4] = v22;
          *&buf[12] = 2114;
          *&buf[14] = v23;
          *&buf[22] = 2112;
          v101 = v24;
          *v102 = 2112;
          *&v102[2] = v25;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[d %@] [u %{public}@] [%@(%@)] rejecting; plugin is not a system plugin, but client requested only system plugins", buf, 0x2Au);
        }

        goto LABEL_56;
      }
    }

    if ([v4 isDedicated])
    {
      v6 = +[NSFileManager defaultManager];
      v98 = 0;
      v7 = [*(a1 + 40) client];
      v8 = [v7 bundle];
      v9 = [v8 url];
      v10 = [v85 url];
      v97 = 0;
      v11 = [v6 getRelationship:&v98 ofDirectoryAtURL:v9 toItemAtURL:v10 error:&v97];
      v12 = v97;

      if ((v11 & 1) == 0)
      {
        v13 = pklog_handle_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v71 = *(a1 + 32);
          obja = [v85 uuid];
          v72 = [v85 identifier];
          v73 = [v85 version];
          v74 = [*(a1 + 40) client];
          v75 = [v74 bundle];
          v76 = [v75 url];
          v77 = [v85 url];
          *buf = 138413826;
          *&buf[4] = v71;
          *&buf[12] = 2114;
          *&buf[14] = obja;
          *&buf[22] = 2112;
          v101 = v72;
          *v102 = 2112;
          *&v102[2] = v73;
          *&v102[10] = 2112;
          *&v102[12] = v76;
          *&v102[20] = 2112;
          *&v102[22] = v77;
          *&v102[30] = 2112;
          *&v102[32] = v12;
          _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[d %@] [u %{public}@] [%@(%@)] failed to get relationship between %@ and %@: %@", buf, 0x48u);
        }

        goto LABEL_14;
      }

      if (v98)
      {
        v13 = pklog_handle_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 32);
          v15 = [v85 uuid];
          v16 = [v85 identifier];
          v17 = [v85 version];
          *buf = 138413058;
          *&buf[4] = v14;
          *&buf[12] = 2114;
          *&buf[14] = v15;
          *&buf[22] = 2112;
          v101 = v16;
          *v102 = 2112;
          *&v102[2] = v17;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "[d %@] [u %{public}@] [%@(%@)] rejecting; plugin is dedicated but isn't in host bundle", buf, 0x2Au);
        }

LABEL_14:

        goto LABEL_56;
      }
    }

    v26 = [*(a1 + 40) server];
    v6 = [v26 holdOnPlugIn:v85];

    if (v6)
    {
      v27 = pklog_handle_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        v29 = [v85 uuid];
        v30 = [v85 identifier];
        v31 = [v85 version];
        v32 = [v6 client];
        v33 = [v32 pid];
        v34 = [v6 created];
        *buf = 138413826;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        *&buf[22] = 2112;
        v101 = v30;
        *v102 = 2112;
        *&v102[2] = v31;
        *&v102[10] = 1024;
        *&v102[12] = v33;
        *&v102[16] = 2114;
        *&v102[18] = v34;
        *&v102[26] = 2112;
        *&v102[28] = v6;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] rejecting; plugin has an active hold by pid %d taken at %{public}@ (%@)", buf, 0x44u);
      }

      goto LABEL_56;
    }
  }

  v35 = *(a1 + 48);
  v36 = *(a1 + 32);
  v37 = [*(a1 + 40) server];
  v96 = 0;
  LOBYTE(v36) = [v85 match:v35 discoveryInstanceUUID:v36 server:v37 withError:&v96];
  v6 = v96;

  if (v36)
  {
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = *(a1 + 56);
    v38 = [obj countByEnumeratingWithState:&v92 objects:v99 count:16];
    if (v38)
    {
      v39 = *v93;
      while (2)
      {
        v40 = 0;
        if (v38 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v38;
        }

        do
        {
          if (*v93 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v92 + 1) + 8 * v40);
          v43 = *(a1 + 32);
          v44 = [*(a1 + 40) server];
          v91 = v6;
          LODWORD(v43) = [v85 match:v42 discoveryInstanceUUID:v43 server:v44 withError:&v91];
          v45 = v91;

          v6 = v45;
          if (v43)
          {
            v52 = pklog_handle_for_category();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              v53 = *(a1 + 32);
              v54 = [v85 uuid];
              v55 = [v85 identifier];
              v56 = [v85 version];
              *buf = 138413058;
              *&buf[4] = v53;
              *&buf[12] = 2114;
              *&buf[14] = v54;
              *&buf[22] = 2112;
              v101 = v55;
              *v102 = 2112;
              *&v102[2] = v56;
              _os_log_impl(&dword_0, v52, OS_LOG_TYPE_INFO, "[d %@] [u %{public}@] [%@(%@)] rejecting; plugin globally excluded", buf, 0x2Au);
            }

            v50 = 0;
            goto LABEL_46;
          }

          if (v45)
          {
            v46 = pklog_handle_for_category();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v47 = *(a1 + 32);
              v82 = [v85 uuid];
              v48 = [v85 identifier];
              v49 = [v85 version];
              *buf = 138413570;
              *&buf[4] = v47;
              *&buf[12] = 2114;
              *&buf[14] = v82;
              *&buf[22] = 2112;
              v101 = v48;
              *v102 = 2112;
              *&v102[2] = v49;
              *&v102[10] = 2112;
              *&v102[12] = v42;
              *&v102[20] = 2112;
              *&v102[22] = v6;
              _os_log_error_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "[d %@] [u %{public}@] [%@(%@)] Could not determine if plugin matched the exclusion rule: %@, error: %@", buf, 0x3Eu);
            }
          }

          ++v40;
        }

        while (v41 != v40);
        v38 = [obj countByEnumeratingWithState:&v92 objects:v99 count:16];
        if (v38)
        {
          continue;
        }

        break;
      }
    }

    v50 = 1;
LABEL_46:

    if (v50)
    {
      if ((*(*(*(a1 + 72) + 8) + 25) & 2) == 0)
      {
        v57 = [*(a1 + 40) client];
        v58 = [v85 allowForClient:v57 discoveryInstanceUUID:*(a1 + 32)];

        if (v58)
        {
          v59 = pklog_handle_for_category();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v78 = *(a1 + 32);
            v79 = [v85 uuid];
            v80 = [v85 identifier];
            v81 = [v85 version];
            *buf = 138413314;
            *&buf[4] = v78;
            *&buf[12] = 2114;
            *&buf[14] = v79;
            *&buf[22] = 2112;
            v101 = v80;
            *v102 = 2112;
            *&v102[2] = v81;
            *&v102[10] = 2114;
            *&v102[12] = v58;
            _os_log_error_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "[d %@] [u %{public}@] [%@(%@)] rejecting; plugin disallowed for client: %{public}@", buf, 0x34u);
          }

          goto LABEL_56;
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v101 = __Block_byref_object_copy_;
      *v102 = __Block_byref_object_dispose_;
      *&v102[8] = v85;
      v60 = *(a1 + 64);
      v86[0] = _NSConcreteStackBlock;
      v86[1] = 3221225472;
      v86[2] = __30__PKDTransaction_matchPlugIns__block_invoke_153;
      v86[3] = &unk_28EA0;
      v89 = buf;
      v61 = *(a1 + 32);
      v63 = *(a1 + 64);
      v62 = *(a1 + 72);
      v87 = v61;
      v90 = v62;
      v88 = v63;
      [v60 enumerateKeysAndObjectsUsingBlock:v86];
      v64 = *(*&buf[8] + 40);
      if (v64)
      {
        v65 = *(a1 + 64);
        v66 = [*(*&buf[8] + 40) uuid];
        [v65 setObject:v64 forKeyedSubscript:v66];
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else if (v6)
  {
    v51 = pklog_handle_for_category();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v67 = *(a1 + 32);
      v68 = [v85 uuid];
      v69 = [v85 identifier];
      v70 = [v85 version];
      *buf = 138413314;
      *&buf[4] = v67;
      *&buf[12] = 2114;
      *&buf[14] = v68;
      *&buf[22] = 2112;
      v101 = v69;
      *v102 = 2112;
      *&v102[2] = v70;
      *&v102[10] = 2112;
      *&v102[12] = v6;
      _os_log_error_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "[d %@] [u %{public}@] [%@(%@)] Rule matching failed for the plugin, error: %@", buf, 0x34u);
    }
  }

LABEL_56:
}

void __30__PKDTransaction_matchPlugIns__block_invoke_157(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v29 = 0;
  v5 = [v4 export:&v29];
  v6 = v29;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    v8 = [*(a1 + 40) UUIDString];
    [v7 setObject:v8 forKeyedSubscript:PKDiscoveryInstanceUUIDFormKey];

    [*(a1 + 48) addAnnotationForPlugIn:v4 in:v7];
    v9 = [*(a1 + 48) client];
    [v4 augmentForm:v7 host:v9];

    [*(a1 + 56) addObject:v7];
    v10 = v7;

    v11 = [v4 valueForEntitlement:PKOverrideEntitlement];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 64) setObject:v10 forKeyedSubscript:v11];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v6;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v18 = v11;
          v19 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v19)
          {
            v20 = *v26;
            do
            {
              v21 = 0;
              if (v19 <= 1)
              {
                v22 = 1;
              }

              else
              {
                v22 = v19;
              }

              do
              {
                if (*v26 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v25 + 1) + 8 * v21);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [*(a1 + 64) setObject:v10 forKeyedSubscript:v23];
                }

                ++v21;
              }

              while (v22 != v21);
              v19 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
            }

            while (v19);
          }

          v6 = v24;
        }
      }
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = [v4 uuid];
    [v12 addObject:v13];

    v10 = pklog_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v15 = [v4 uuid];
      v16 = [v4 identifier];
      v17 = [v4 version];
      *buf = 138413314;
      v32 = v14;
      v33 = 2114;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      v37 = 2112;
      v38 = v17;
      v39 = 2114;
      v40 = v6;
      _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[d %@] [u %{public}@] [%@(%@)] rejecting; failed to export matching plugin: %{public}@", buf, 0x34u);
    }
  }
}

void __30__PKDTransaction_matchPlugIns__block_invoke_153(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = [*(*(*(a1 + 48) + 8) + 40) identifier];
  v9 = [v7 identifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [*(*(*(a1 + 48) + 8) + 40) version];
    v12 = [v7 version];
    v13 = [v11 compareVersionString:v12];

    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = __30__PKDTransaction_matchPlugIns__block_invoke_2;
    v57[3] = &unk_28E78;
    v60 = *(a1 + 48);
    v14 = v7;
    v58 = v14;
    v59 = *(a1 + 32);
    v15 = objc_retainBlock(v57);
    v16 = v15;
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (*(*(*(a1 + 56) + 8) + 24) & 4 | v13)
      {
LABEL_24:

        goto LABEL_25;
      }

      v17 = (v15[2])(v15);
      v18 = pklog_handle_for_category();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (!v17)
      {
        if (v19)
        {
          v55 = [v14 uuid];
          v51 = [v14 identifier];
          v38 = [v14 version];
          v47 = *(a1 + 32);
          v39 = [*(*(*(a1 + 48) + 8) + 40) uuid];
          v40 = [*(*(*(a1 + 48) + 8) + 40) identifier];
          v41 = [*(*(*(a1 + 48) + 8) + 40) version];
          *buf = 138413826;
          v62 = v55;
          v63 = 2114;
          v64 = v51;
          v65 = 2112;
          v66 = v38;
          v67 = 2112;
          v68 = v47;
          v69 = 2114;
          v70 = v39;
          v71 = 2112;
          v72 = v40;
          v73 = 2112;
          v74 = v41;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] rejecting; another plugin has precedent: [u %{public}@] [%@(%@)] ", buf, 0x48u);
        }

        goto LABEL_22;
      }

      if (v19)
      {
        v52 = [*(*(*(a1 + 48) + 8) + 40) uuid];
        v20 = [*(*(*(a1 + 48) + 8) + 40) identifier];
        v21 = [*(*(*(a1 + 48) + 8) + 40) version];
        v48 = *(a1 + 32);
        v44 = [v14 uuid];
        v22 = [v14 identifier];
        v23 = [v14 version];
        *buf = 138413826;
        v62 = v52;
        v63 = 2114;
        v64 = v20;
        v65 = 2112;
        v66 = v21;
        v67 = 2112;
        v68 = v48;
        v69 = 2114;
        v70 = v44;
        v71 = 2112;
        v72 = v22;
        v73 = 2112;
        v74 = v23;
        v24 = v23;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] rejecting; better tie breaker: another plugin has precedent: [u %{public}@] [%@(%@)] ", buf, 0x48u);
      }
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!(v15[2])(v15))
      {
LABEL_16:
        v30 = pklog_handle_for_category();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [*(*(*(a1 + 48) + 8) + 40) version];
          v32 = [v14 version];
          *buf = 138412546;
          v62 = v31;
          v63 = 2112;
          v64 = v32;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "ignoring %@, preferring %@", buf, 0x16u);
        }

        v18 = pklog_handle_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v14 uuid];
          v50 = [v14 identifier];
          [v14 version];
          v34 = v54 = v16;
          v46 = *(a1 + 32);
          v35 = [*(*(*(a1 + 48) + 8) + 40) uuid];
          v36 = [*(*(*(a1 + 48) + 8) + 40) identifier];
          v37 = [*(*(*(a1 + 48) + 8) + 40) version];
          *buf = 138413826;
          v62 = v33;
          v63 = 2114;
          v64 = v50;
          v65 = 2112;
          v66 = v34;
          v67 = 2112;
          v68 = v46;
          v69 = 2114;
          v70 = v35;
          v71 = 2112;
          v72 = v36;
          v73 = 2112;
          v74 = v37;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] rejecting; ignoring plugin: another plugin has precedent: [u %{public}@] [%@(%@)] ", buf, 0x48u);

          v16 = v54;
        }

LABEL_22:

        v42 = *(*(a1 + 48) + 8);
        v43 = *(v42 + 40);
        *(v42 + 40) = 0;

        goto LABEL_23;
      }

      v25 = pklog_handle_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [*(*(*(a1 + 48) + 8) + 40) uuid];
        v26 = [*(*(*(a1 + 48) + 8) + 40) identifier];
        v27 = [*(*(*(a1 + 48) + 8) + 40) version];
        v49 = *(a1 + 32);
        v45 = [v14 uuid];
        v28 = [v14 identifier];
        v29 = [v14 version];
        *buf = 138413826;
        v62 = v53;
        v63 = 2114;
        v64 = v26;
        v65 = 2112;
        v66 = v27;
        v67 = 2112;
        v68 = v49;
        v69 = 2114;
        v70 = v45;
        v71 = 2112;
        v72 = v28;
        v73 = 2112;
        v74 = v29;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] rejecting; ordered same but another plugin has precedent: [u %{public}@] [%@(%@)] ", buf, 0x48u);
      }
    }

    [*(a1 + 40) removeObjectForKey:v6];
LABEL_23:
    *a4 = 1;
    goto LABEL_24;
  }

LABEL_25:
}

- (void)readyPlugIns
{
  v54 = 0;
  v55 = 0;
  current_persona = voucher_get_current_persona();
  memset(v66, 0, sizeof(v66));
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  memset(v85, 0, sizeof(v85));
  *v66 = 1;
  pklog_get_persona_type_and_name();
  v4 = pklog_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110146;
    v57 = geteuid();
    v58 = 1024;
    v59 = getuid();
    v60 = 1024;
    v61 = current_persona;
    v62 = 2080;
    v63 = v55;
    v64 = 2080;
    v65 = v54;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Ready plugins received as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", buf, 0x28u);
  }

  request = [(PKDTransaction *)self request];
  v6 = xpc_dictionary_get_dictionary(request, &PKDEnvironmentKey);
  v7 = _CFXPCCreateCFObjectFromXPCObject();

  if (v7)
  {
    client = [(PKDTransaction *)self client];
    v9 = PKEnvironmentProvisionEntitlement;
    v10 = [client hasEntitlement:PKEnvironmentProvisionEntitlement];

    if ((v10 & 1) == 0)
    {
      string = [NSString stringWithFormat:@"Transmission of environment variables requires the %@ host entitlement", v9];
      [(PKDTransaction *)self fail:11 message:string];
      goto LABEL_28;
    }

    v11 = pklog_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      client2 = [(PKDTransaction *)self client];
      v13 = [client2 pid];
      v14 = [v7 count];
      *v66 = 67109376;
      *&v66[4] = v13;
      *&v66[8] = 1024;
      *&v66[10] = v14;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "pid %d provided %d environment entries", v66, 0xEu);
    }
  }

  request2 = [(PKDTransaction *)self request];
  string = xpc_dictionary_get_string(request2, &PKDSandboxOverrideKey);

  if (string)
  {
    client3 = [(PKDTransaction *)self client];
    v18 = PKSandboxOverrideEntitlement;
    v19 = [client3 hasEntitlement:PKSandboxOverrideEntitlement];

    if ((v19 & 1) == 0)
    {
      string = [NSString stringWithFormat:@"Overriding default sandbox requires the %@ host entitlement", v18];
      [(PKDTransaction *)self fail:11 message:string];
      goto LABEL_28;
    }

    string = [NSString stringWithUTF8String:string];
    v20 = pklog_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      client4 = [(PKDTransaction *)self client];
      v22 = [client4 pid];
      *v66 = 67109378;
      *&v66[4] = v22;
      *&v66[8] = 2112;
      *&v66[10] = string;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "pid %d requested sandbox profile override %@", v66, 0x12u);
    }
  }

  request3 = [(PKDTransaction *)self request];
  v24 = xpc_dictionary_get_array(request3, &PKDPreferredLanguagesKey);
  v40 = _CFXPCCreateCFObjectFromXPCObject();

  v25 = objc_opt_new();
  v26 = objc_opt_new();
  request4 = [(PKDTransaction *)self request];
  v28 = xpc_dictionary_get_string(request4, &PKDLaunchPersonaKey);

  if (v28)
  {
    v29 = [NSString stringWithUTF8String:v28];
  }

  else
  {
    v29 = 0;
  }

  v39 = v29;
  if (v28)
  {
  }

  *v66 = 0;
  *&v66[8] = v66;
  *&v66[16] = 0x2020000000;
  v66[24] = 0;
  empty = xpc_array_create_empty();
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = __30__PKDTransaction_readyPlugIns__block_invoke;
  v50[3] = &unk_28D38;
  v53 = v66;
  v50[4] = self;
  v31 = v25;
  v51 = v31;
  v32 = v26;
  v52 = v32;
  if ([(PKDTransaction *)self processUuidList:v50])
  {
    v33 = objc_opt_new();
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __30__PKDTransaction_readyPlugIns__block_invoke_85;
    v41[3] = &unk_28D60;
    v42 = v32;
    selfCopy = self;
    v44 = v7;
    v45 = v40;
    v46 = v39;
    v47 = string;
    v34 = v33;
    v48 = v34;
    v35 = empty;
    v49 = v35;
    [v31 enumerateObjectsUsingBlock:v41];
    if ([v34 count])
    {
      v36 = _CFXPCCreateXPCObjectFromCFObject();
      reply = [(PKDTransaction *)self reply];
      xpc_dictionary_set_value(reply, &PKDPidArrayKey, v36);
    }

    if (*(*&v66[8] + 24) == 1 && xpc_array_get_count(v35))
    {
      reply2 = [(PKDTransaction *)self reply];
      xpc_dictionary_set_value(reply2, &PKDUUIDKey, v35);
    }

    [(PKDTransaction *)self done];
  }

  _Block_object_dispose(v66, 8);
LABEL_28:
}

BOOL __30__PKDTransaction_readyPlugIns__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v9 = [*(a1 + 32) server];
  v10 = [v9 holdOnPlugIn:v7];

  if (v10)
  {
    v11 = pklog_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 uuid];
      v13 = [v7 identifier];
      v14 = [v7 version];
      v15 = [*(a1 + 32) client];
      *buf = 138544386;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      v37 = 1024;
      v38 = [v15 pid];
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] denied access to %d; the plugin is on hold by %@", buf, 0x30u);
    }

    v16 = *(a1 + 32);
    v17 = [v7 identifier];
    v18 = [NSString stringWithFormat:@"access to plugin %@ denied: the plug-in is on hold", v17];
    [v16 fail:11 message:v18];

    v19 = 0;
  }

  else
  {
    if ([v7 isData])
    {
      v19 = 1;
      goto LABEL_8;
    }

    v21 = [*(a1 + 32) client];
    v22 = [v7 discoveryInstanceUUID];
    v17 = [v7 allowForClient:v21 discoveryInstanceUUID:v22];

    v19 = v17 == 0;
    if (v17)
    {
      v23 = pklog_handle_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v7 uuid];
        v25 = [v7 identifier];
        v26 = [v7 version];
        v30 = [*(a1 + 32) client];
        *buf = 138544386;
        v32 = v24;
        v33 = 2112;
        v34 = v25;
        v35 = 2112;
        v36 = v26;
        v37 = 1024;
        v38 = [v30 pid];
        v39 = 2114;
        v40 = v17;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] denied access to %d; %{public}@", buf, 0x30u);
      }

      v27 = *(a1 + 32);
      v28 = [v7 identifier];
      v29 = [NSString stringWithFormat:@"access to plugin %@ denied: %@", v28, v17];
      [v27 fail:11 message:v29];
    }

    else
    {
      [*(a1 + 40) addObject:v7];
      [*(a1 + 48) addObject:v8];
    }
  }

LABEL_8:
  return v19;
}

void __30__PKDTransaction_readyPlugIns__block_invoke_85(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v20 = -1;
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  if (zeroUUID_onceToken != -1)
  {
    __30__PKDTransaction_readyPlugIns__block_invoke_85_cold_1();
  }

  if ([v8 isEqual:zeroUUID_zero])
  {

    v8 = 0;
  }

  v9 = [*(a1 + 40) client];
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v19 = 0;
  v14 = [v7 enableForClient:v9 environment:v10 languages:v11 oneShotUUID:v8 persona:v12 sandbox:v13 pid:&v20 error:&v19];
  v15 = v19;

  if (v14)
  {
    if (v20 >= 1)
    {
      v16 = *(a1 + 80);
      v17 = [NSNumber numberWithInt:?];
      [v16 addObject:v17];

      *uuid = 0;
      v22 = 0;
      v18 = [v7 uuid];
      [v18 getUUIDBytes:uuid];

      xpc_array_set_uuid(*(a1 + 88), 0xFFFFFFFFFFFFFFFFLL, uuid);
    }
  }

  else
  {
    [*(a1 + 40) fail:objc_msgSend(v15 error:{"code"), v15}];
    *a4 = 1;
  }
}

- (PKDTransaction)initWithRequest:(id)request forClient:(id)client
{
  requestCopy = request;
  clientCopy = client;
  v25.receiver = self;
  v25.super_class = PKDTransaction;
  v9 = [(PKDTransaction *)&v25 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&v9->_client, client);
  objc_storeStrong(&v10->_request, request);
  request = [(PKDTransaction *)v10 request];
  reply = xpc_dictionary_create_reply(request);
  v13 = v10->_reply;
  v10->_reply = reply;

  request2 = [(PKDTransaction *)v10 request];
  v10->_type = xpc_dictionary_get_string(request2, &PKDRequestKey);

  v15 = pklog_handle_for_category();
  v10->_interval = os_signpost_id_make_with_pointer(v15, v10);

  type = v10->_type;
  if (!strcmp(type, &PKDMatchRequest))
  {
    uuid = xpc_dictionary_get_uuid(requestCopy, &PKDUUIDKey);
    if (!uuid)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (strcmp(type, &PKDReadyRequest))
  {
    uuid = 0;
    goto LABEL_7;
  }

  v24 = xpc_dictionary_get_array(requestCopy, &PKDUUIDKey);
  uuid = xpc_array_get_uuid(v24, 0);

  if (uuid)
  {
LABEL_6:
    uuid = [[NSUUID alloc] initWithUUIDBytes:uuid];
  }

LABEL_7:
  v18 = PKGetThreadPriority();
  v19 = pklog_handle_for_category();
  v20 = v19;
  interval = v10->_interval;
  if (interval - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v22 = v10->_type;
    *buf = 136446722;
    v27 = v22;
    v28 = 2114;
    v29 = uuid;
    v30 = 1026;
    v31 = v18;
    _os_signpost_emit_with_name_impl(&dword_0, v20, OS_SIGNPOST_INTERVAL_BEGIN, interval, "DaemonXPCRequest", " command=%{public, signpost.description:attribute}s  uuid=%{public, signpost.description:attribute}@  priority=%{public, signpost.description:attribute}d ", buf, 0x1Cu);
  }

LABEL_11:
  return v10;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  client = [(PKDTransaction *)self client];
  if (client)
  {
    v6 = client;
    [client auditToken];
    client = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (BOOL)marshalPaths:(id)paths
{
  pathsCopy = paths;
  request = [(PKDTransaction *)self request];
  v6 = xpc_dictionary_get_array(request, &PKDPathsKey);

  if (v6 && xpc_get_type(v6) == &_xpc_type_array)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __31__PKDTransaction_marshalPaths___block_invoke;
    v9[3] = &unk_28C70;
    v9[4] = self;
    v10 = pathsCopy;
    v7 = xpc_array_apply(v6, v9);
  }

  else
  {
    [(PKDTransaction *)self fail:4 message:@"invalid request format"];
    v7 = 0;
  }

  return v7;
}

uint64_t __31__PKDTransaction_marshalPaths___block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (!string_ptr)
  {
    [*(a1 + 32) fail:4 message:@"invalid request format"];
    return 0;
  }

  if (*string_ptr != 47)
  {
    v13 = *(a1 + 32);
    v14 = [NSString stringWithFormat:@"absolute path required: %s", string_ptr];
    [v13 fail:9 message:v14];

    return 0;
  }

  v5 = string_ptr;
  v6 = realpath_DARWIN_EXTSN(string_ptr, v15);
  v7 = v6 != 0;
  v8 = *(a1 + 40);
  if (v6)
  {
    v9 = v15;
  }

  else
  {
    v9 = v5;
  }

  v10 = [NSString stringWithUTF8String:v9];
  v11 = (*(v8 + 16))(v8, v10, v7);

  return v11;
}

- (BOOL)processPaths:(id)paths
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __31__PKDTransaction_processPaths___block_invoke;
  v7[3] = &unk_28C98;
  pathsCopy = paths;
  v8 = pathsCopy;
  v5 = [(PKDTransaction *)self marshalPaths:v7];
  if (v5)
  {
    [(PKDTransaction *)self done];
  }

  return v5;
}

- (void)addPlugIns
{
  client = [self client];
  [client pid];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 8u);
}

BOOL __28__PKDTransaction_addPlugIns__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = [*(a1 + 32) server];
    v8 = [NSURL fileURLWithPath:v5];
    v9 = [v7 addPlugIn:v8];

    v10 = v9 == 0;
    if (v9)
    {
      v11 = pklog_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __28__PKDTransaction_addPlugIns__block_invoke_cold_1();
      }

      v12 = *(a1 + 32);
      v13 = [NSString stringWithFormat:@"unable to register plug-in at %@", v5];
      [v12 fail:2 message:v13];
    }
  }

  else
  {
    v9 = [NSString stringWithFormat:@"invalid plugin path: %@", v5];
    [v6 fail:9 message:v9];
    v10 = 0;
  }

  return v10;
}

- (void)removePlugIns
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __31__PKDTransaction_removePlugIns__block_invoke;
  v2[3] = &unk_28CC0;
  v2[4] = self;
  [(PKDTransaction *)self processPaths:v2];
}

BOOL __31__PKDTransaction_removePlugIns__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) client];
  v5 = [v4 hasEntitlement:PKManagerEntitlement];

  if (v5)
  {
    v6 = [*(a1 + 32) server];
    v7 = [NSURL fileURLWithPath:v3];
    v8 = [v6 removePlugIn:v7];

    v9 = v8 == 0;
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = [NSString stringWithFormat:@"no plugin at %@", v3];
      [v10 fail:9 message:v11];
    }
  }

  else
  {
    v12 = pklog_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __31__PKDTransaction_removePlugIns__block_invoke_cold_1((a1 + 32));
    }

    [*(a1 + 32) fail:11 message:@"caller lacks entitlement for this operation"];
    v9 = 0;
  }

  return v9;
}

- (void)bulkPlugIns
{
  request = [(PKDTransaction *)self request];
  uint64 = xpc_dictionary_get_uint64(request, &PKDFlagsKey);

  v5 = pklog_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(PKDTransaction *)uint64 bulkPlugIns:v5];
  }

  [(PKDTransaction *)self done];
}

- (BOOL)processUuidList:(id)list
{
  listCopy = list;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  request = [(PKDTransaction *)self request];
  v6 = xpc_dictionary_get_array(request, &PKDUUIDKey);

  if (v6 && xpc_get_type(v6) == &_xpc_type_array)
  {
    request2 = [(PKDTransaction *)self request];
    v9 = xpc_dictionary_get_array(request2, &PKDPathsKey);

    if (v9 && xpc_get_type(v9) != &_xpc_type_array)
    {
      v10 = pklog_handle_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Paths present but not an array (ignoring values)", buf, 2u);
      }

      v9 = 0;
    }

    if (v9)
    {
      count = xpc_array_get_count(v9);
      if (count != xpc_array_get_count(v6))
      {
        v12 = pklog_handle_for_category();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Paths present but has different count than UUIDs (ignoring)", buf, 2u);
        }

        v9 = 0;
      }
    }

    request3 = [(PKDTransaction *)self request];
    v14 = xpc_dictionary_get_array(request3, &PKDOneShotUUIDsKey);

    if (v14 && xpc_get_type(v14) != &_xpc_type_array)
    {
      v15 = pklog_handle_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Multi-instance UUID array present but not an array (ignoring values)", buf, 2u);
      }

      v14 = 0;
    }

    if (v14)
    {
      v16 = xpc_array_get_count(v14);
      if (v16 != xpc_array_get_count(v6))
      {
        v17 = pklog_handle_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Multi-instance UUID array present but has different count than UUIDs (ignoring)", buf, 2u);
        }

        v14 = 0;
      }
    }

    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = __34__PKDTransaction_processUuidList___block_invoke;
    applier[3] = &unk_28D10;
    applier[4] = self;
    v18 = v9;
    v22 = v18;
    v25 = v27;
    v19 = v14;
    v23 = v19;
    v24 = listCopy;
    v7 = xpc_array_apply(v6, applier);
  }

  else
  {
    [(PKDTransaction *)self fail:4 message:@"invalid request format (uuid)"];
    v7 = 0;
  }

  _Block_object_dispose(v27, 8);
  return v7;
}

uint64_t __34__PKDTransaction_processUuidList___block_invoke(uint64_t a1, size_t a2, xpc_object_t xuuid)
{
  bytes = xpc_uuid_get_bytes(xuuid);
  if (!bytes)
  {
    v8 = *(a1 + 32);
    v14 = @"invalid request (bad uuid array)";
LABEL_13:
    [v8 fail:4 message:v14];
    return 0;
  }

  v6 = bytes;
  v7 = [[NSUUID alloc] initWithUUIDBytes:bytes];
  v8 = *(a1 + 32);
  if (!v7)
  {
    v14 = @"invalid request (uuid allocation failure)";
    goto LABEL_13;
  }

  v9 = [v8 server];
  string = [v9 findPlugInWithUUID:v7];

  if (!string)
  {
    if (*(a1 + 40))
    {
      v16 = pklog_handle_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0x1004100202;
        v31 = 2096;
        v32 = v6;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Failed to find plugin by %{uuid_t}.16P", buf, 0x12u);
      }

      string = xpc_array_get_string(*(a1 + 40), a2);
      if (string)
      {
        v17 = pklog_handle_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0x1004100302;
          v31 = 2096;
          v32 = v6;
          v33 = 2080;
          v34 = string;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Looking for plugin %{uuid_t}.16P by path %s", buf, 0x1Cu);
        }

        v18 = [*(a1 + 32) server];
        v19 = [NSString stringWithUTF8String:string];
        v20 = [NSURL fileURLWithPath:v19];
        string = [v18 findPlugInAtPath:v20];

        if (string)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
          v21 = [*(a1 + 32) client];
          v22 = [v21 hasEntitlement:@"com.apple.pluginkit.test"];

          if ((v22 & 1) == 0)
          {
            v23 = [NSString stringWithUTF8String:*(*(a1 + 32) + 8)];
            v28 = *(a1 + 32);
            string = string;
            v29 = v23;
            v24 = v23;
            AnalyticsSendEventLazy();
          }
        }
      }
    }

    else
    {
      string = 0;
    }
  }

  if (string)
  {
    if (zeroUUID_onceToken != -1)
    {
      __34__PKDTransaction_processUuidList___block_invoke_cold_1();
    }

    v11 = zeroUUID_zero;

    v12 = *(a1 + 48);
    if (!v12)
    {
      v7 = v11;
LABEL_29:
      v27 = *(*(*(a1 + 64) + 8) + 24);
      v25 = (*(*(a1 + 56) + 16))();
      goto LABEL_30;
    }

    uuid = xpc_array_get_uuid(v12, a2);
    if (uuid)
    {
      v7 = [[NSUUID alloc] initWithUUIDBytes:uuid];

      if (v7)
      {
        goto LABEL_29;
      }

      v11 = 0;
      v26 = @"invalid request (multi-instance uuid allocation failure)";
    }

    else
    {
      v26 = @"invalid request (bad uuid array)";
    }

    [*(a1 + 32) fail:4 message:v26];
    v7 = v11;
    v25 = 0;
  }

  else
  {
    [*(a1 + 32) fail:4 message:@"no such plugin (uuid not found)"];
    v25 = 0;
  }

LABEL_30:

  return v25;
}

id __34__PKDTransaction_processUuidList___block_invoke_44(uint64_t a1)
{
  v20[0] = @"clientBundleID";
  v2 = [*(a1 + 32) client];
  v3 = [v2 bundle];
  v4 = [v3 bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"(nil)";
  }

  v21[0] = v6;
  v20[1] = @"clientPath";
  v7 = [*(a1 + 32) client];
  v8 = [v7 path];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"(nil)";
  }

  v21[1] = v10;
  v20[2] = @"plugInBundleID";
  v11 = [*(a1 + 40) identifier];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"(nil)";
  }

  v21[2] = v13;
  v20[3] = @"plugInPath";
  v14 = [*(a1 + 40) path];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"(nil)";
  }

  v20[4] = @"requestType";
  v17 = *(a1 + 48);
  v21[3] = v16;
  v21[4] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];

  return v18;
}

- (void)accessPlugIns
{
  +[NSMutableArray array];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __31__PKDTransaction_accessPlugIns__block_invoke;
  v9 = &unk_28D88;
  v3 = v10 = self;
  v11 = v3;
  if ([(PKDTransaction *)self processUuidList:&v6])
  {
    v4 = _CFXPCCreateXPCObjectFromCFObject();
    v5 = [(PKDTransaction *)self reply:v6];
    xpc_dictionary_set_value(v5, &PKDExtensionsKey, v4);

    [(PKDTransaction *)self done];
  }
}

BOOL __31__PKDTransaction_accessPlugIns__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 url];
  v5 = [*(a1 + 32) client];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  v7 = pkIssueSandboxExtensionForURL();

  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v3 path];
    v10 = [NSString stringWithFormat:@"cannot create file extension to %@: %d", v9, *__error()];
    [v8 fail:4 message:v10];
  }

  return v7 != 0;
}

- (void)annotatePlugIns
{
  request = [(PKDTransaction *)self request];
  v4 = xpc_dictionary_get_dictionary(request, &PKDAnnotationsKey);

  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = +[NSMutableDictionary dictionary];
    v7 = PKAnnotationElectionKey;
    v8 = [v5 objectForKeyedSubscript:PKAnnotationElectionKey];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(PKDTransaction *)self fail:4 message:@"invalid request format (annotation election)"];
LABEL_18:

        goto LABEL_19;
      }

      [v6 setObject:v8 forKeyedSubscript:v7];
      v9 = PKAnnotationBootInstanceKey;
      v10 = [v5 objectForKeyedSubscript:PKAnnotationBootInstanceKey];
      [v6 setObject:v10 forKeyedSubscript:v9];

      v11 = PKAnnotationTimestampKey;
      v12 = [v5 objectForKeyedSubscript:PKAnnotationTimestampKey];
      [v6 setObject:v12 forKeyedSubscript:v11];
    }

    v13 = PKAnnotationExtensionKey;
    v14 = [v5 objectForKeyedSubscript:PKAnnotationExtensionKey];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(PKDTransaction *)self fail:4 message:@"invalid request format (annotation extension)"];
LABEL_17:

        goto LABEL_18;
      }

      [v6 setObject:v14 forKeyedSubscript:v13];
      v15 = PKAnnotationBootInstanceKey;
      v16 = [v5 objectForKeyedSubscript:PKAnnotationBootInstanceKey];
      [v6 setObject:v16 forKeyedSubscript:v15];

      v17 = PKAnnotationTimestampKey;
      v18 = [v5 objectForKeyedSubscript:PKAnnotationTimestampKey];
      [v6 setObject:v18 forKeyedSubscript:v17];
    }

    if ([v6 count])
    {
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = __33__PKDTransaction_annotatePlugIns__block_invoke;
      v23 = &unk_28D88;
      selfCopy = self;
      v25 = v6;
      if ([(PKDTransaction *)self processUuidList:&v20])
      {
        v19 = [(PKDTransaction *)self server:v20];
        [v19 notifyAnnotationChange];

        [(PKDTransaction *)self done];
      }
    }

    else
    {
      [(PKDTransaction *)self done];
    }

    goto LABEL_17;
  }

  [(PKDTransaction *)self fail:4 message:@"invalid request format (bad annotations dictionary)"];
LABEL_19:
}

uint64_t __33__PKDTransaction_annotatePlugIns__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pklog_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __33__PKDTransaction_annotatePlugIns__block_invoke_cold_1(v3, a1, v4);
  }

  v5 = PKAnnotationElectionKey;
  v6 = [*(a1 + 40) objectForKeyedSubscript:PKAnnotationElectionKey];

  if (v6)
  {
    v7 = pklog_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 uuid];
      v9 = [v3 identifier];
      v10 = [v3 version];
      v11 = [*(a1 + 32) client];
      v12 = [v11 pid];
      v13 = [*(a1 + 40) objectForKeyedSubscript:v5];
      v17 = 138544386;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 1024;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] client pid %d election := %@", &v17, 0x30u);
    }
  }

  v14 = [*(a1 + 32) server];
  v15 = [v14 setAnnotation:*(a1 + 40) forPlugIn:v3];

  return 1;
}

- (void)bulkAnnotatePlugIns
{
  client = [self client];
  [client pid];
  [a2 count];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0xEu);
}

- (void)lockDownPlugIns
{
  request = [(PKDTransaction *)self request];
  uint64 = xpc_dictionary_get_uint64(request, &PKDFlagsKey);

  v5 = uint64 & 0x10;
  request2 = [(PKDTransaction *)self request];
  v7 = xpc_dictionary_get_array(request2, &PKDUUIDKey);

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = v8;
    if ((uint64 & 0x20) == 0)
    {
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = __33__PKDTransaction_lockDownPlugIns__block_invoke_119;
      v56[3] = &unk_28E00;
      v58 = uint64;
      v56[4] = self;
      v57 = v8;
      [(PKDTransaction *)self marshalPaths:v56];

      v10 = 0;
      v11 = &__NSArray0__struct;
LABEL_17:
      v47 = v5;
      v48 = v11;
      v19 = pklog_handle_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "processing hold request for plugins: %@", buf, 0xCu);
      }

      v20 = xpc_array_create(0, 0);
      v21 = +[NSMutableArray array];
      if ((uint64 & 2) != 0)
      {
        v44 = v10;
        v45 = v7;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v46 = v9;
        v22 = v9;
        v23 = [v22 countByEnumeratingWithState:&v52 objects:v66 count:16];
        if (v23)
        {
          v24 = *v53;
          do
          {
            v25 = 0;
            if (v23 <= 1)
            {
              v26 = 1;
            }

            else
            {
              v26 = v23;
            }

            do
            {
              if (*v53 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v52 + 1) + 8 * v25);
              checkBusy = [v27 checkBusy];
              if (checkBusy)
              {
                [v21 addObject:v27];
                xpc_array_append_value(v20, checkBusy);
              }

              ++v25;
            }

            while (v26 != v25);
            v23 = [v22 countByEnumeratingWithState:&v52 objects:v66 count:16];
          }

          while (v23);
        }

        v7 = v45;
        v9 = v46;
        v10 = v44;
      }

      if ([v21 count])
      {
        v29 = pklog_handle_for_category();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [PKDTransaction lockDownPlugIns];
        }

        reply = [(PKDTransaction *)self reply];
        xpc_dictionary_set_value(reply, &PKDConflictsKey, v20);

        [(PKDTransaction *)self fail:14 message:@"plugins are busy"];
      }

      else
      {
        v31 = v7;
        v32 = [PKDPlugInHold alloc];
        client = [(PKDTransaction *)self client];
        v34 = [(PKDPlugInHold *)v32 initWithPlugIns:v9 extensionPointName:v10 forClient:client];

        server = [(PKDTransaction *)self server];
        [server addHold:v34 silent:v47 != 0];

        *buf = 0uLL;
        uuid = [(PKDPlugInHold *)v34 uuid];
        [uuid getUUIDBytes:buf];

        reply2 = [(PKDTransaction *)self reply];
        xpc_dictionary_set_uuid(reply2, &PKDUUIDKey, buf);

        if ((uint64 & 4) != 0)
        {
          if ((uint64 & 0x20) != 0)
          {
            server2 = [(PKDTransaction *)self server];
            v42 = [server2 plugInsWithExtensionPointName:v10 platforms:v48];
            [v9 addObjectsFromArray:v42];
          }

          server3 = [(PKDTransaction *)self server];
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = __33__PKDTransaction_lockDownPlugIns__block_invoke_124;
          v49[3] = &unk_28E28;
          v50 = v34;
          selfCopy = self;
          [server3 terminatePlugIns:v9 synchronously:(uint64 >> 3) & 1 reply:v49];
        }

        else
        {
          v38 = pklog_handle_for_category();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [(PKDPlugInHold *)v34 uuid];
            uUIDString = [uuid2 UUIDString];
            *v63 = 138543362;
            v64 = uUIDString;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "hold request granted token: %{public}@", v63, 0xCu);
          }

          [(PKDTransaction *)self done];
        }

        v7 = v31;
      }

      v11 = v48;
      goto LABEL_45;
    }

    request3 = [(PKDTransaction *)self request];
    string = xpc_dictionary_get_string(request3, &PKDExtensionPointNameKey);

    if (!string)
    {
      [(PKDTransaction *)self fail:4 message:@"request missing extension point name"];
      v10 = 0;
      v11 = &__NSArray0__struct;
      goto LABEL_45;
    }

    v10 = [NSString stringWithUTF8String:string];
    request4 = [(PKDTransaction *)self request];
    v15 = xpc_dictionary_get_array(request4, &PKDExtensionPointPlatformsKey);

    if (v15 && xpc_array_get_count(v15))
    {
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = __33__PKDTransaction_lockDownPlugIns__block_invoke_2;
      v59[3] = &unk_28DD8;
      v60 = objc_opt_new();
      v16 = v60;
      v17 = xpc_array_apply(v15, v59);
      if (v17)
      {

        v11 = [v16 copy];
        if (!v17)
        {
LABEL_10:
          v18 = 0;
          v7 = 0;
          v5 = uint64 & 0x10;
          goto LABEL_16;
        }
      }

      else
      {
        [(PKDTransaction *)self fail:4 message:@"request contained invalid platforms array"];

        v11 = &__NSArray0__struct;
        if (!v17)
        {
          goto LABEL_10;
        }
      }

      v7 = 0;
      v5 = uint64 & 0x10;
    }

    else
    {
      v11 = &__NSArray0__struct;
    }

    v18 = 1;
LABEL_16:

    if (v18)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_46;
  }

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = __33__PKDTransaction_lockDownPlugIns__block_invoke;
  applier[3] = &unk_28DB0;
  applier[4] = self;
  v62 = (uint64 & 0x10) >> 4;
  xpc_array_apply(v7, applier);
  [(PKDTransaction *)self done];
LABEL_46:
}

BOOL __33__PKDTransaction_lockDownPlugIns__block_invoke(uint64_t a1, int a2, xpc_object_t xuuid)
{
  bytes = xpc_uuid_get_bytes(xuuid);
  v5 = *(a1 + 32);
  if (bytes)
  {
    v6 = [v5 server];
    v7 = [[NSUUID alloc] initWithUUIDBytes:bytes];
    [v6 unholdToken:v7 silent:*(a1 + 40)];
  }

  else
  {
    [v5 fail:4 message:@"could not get uuid bytes"];
  }

  return bytes != 0;
}

BOOL __33__PKDTransaction_lockDownPlugIns__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  type = xpc_get_type(v5);
  if (type == &_xpc_type_uint64)
  {
    v7 = [[NSNumber alloc] initWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    [*(a1 + 32) setObject:v7 atIndexedSubscript:a2];
  }

  else
  {
    v7 = pklog_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __33__PKDTransaction_lockDownPlugIns__block_invoke_2_cold_1();
    }
  }

  return type == &_xpc_type_uint64;
}

uint64_t __33__PKDTransaction_lockDownPlugIns__block_invoke_119(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (a3)
  {
    if (*(a1 + 48))
    {
      v8 = [NSURL fileURLWithPath:v5];
      v10 = [*(a1 + 32) server];
      v11 = [v10 findPlugInAtPath:v8];

      if (v11)
      {
        [*(a1 + 40) addObject:v11];
      }

      else
      {
        v12 = pklog_handle_for_category();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = v5;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "no plugin at path:%@", &v14, 0xCu);
        }
      }
    }

    else
    {
      v6 = [*(a1 + 32) server];
      v7 = [NSURL fileURLWithPath:v5];
      v8 = [v6 plugInsWithinApplication:v7];

      v9 = *(a1 + 40);
      if (v9)
      {
        [v9 addObjectsFromArray:v8];
      }
    }
  }

  else
  {
    v8 = pklog_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "invalid path: %@", &v14, 0xCu);
    }
  }

  return 1;
}

id __33__PKDTransaction_lockDownPlugIns__block_invoke_124(uint64_t a1)
{
  v2 = pklog_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [v3 UUIDString];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "forced termination complete; hold request granted token: %{public}@", &v6, 0xCu);
  }

  return [*(a1 + 40) done];
}

- (id)findPlugInByUUID:(id)d
{
  bytes = xpc_uuid_get_bytes(d);
  if (bytes)
  {
    v5 = [[NSUUID alloc] initWithUUIDBytes:bytes];
    server = [(PKDTransaction *)self server];
    v7 = [server findPlugInWithUUID:v5];
  }

  else
  {
    v5 = pklog_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PKDTransaction findPlugInByUUID:v5];
    }

    v7 = 0;
  }

  return v7;
}

- (id)findPlugInByPathURL:(id)l
{
  lCopy = l;
  v5 = [NSString alloc];
  string_ptr = xpc_string_get_string_ptr(lCopy);

  v7 = [v5 initWithUTF8String:string_ptr];
  v8 = [NSURL URLWithString:v7];

  server = [(PKDTransaction *)self server];
  v10 = [server findPlugInAtPath:v8];

  return v10;
}

id __30__PKDTransaction_matchPlugIns__block_invoke(uint64_t a1)
{
  v17[0] = @"clientBundleID";
  v2 = [*(a1 + 32) client];
  v3 = [v2 bundle];
  v4 = [v3 bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"(nil)";
  }

  v18[0] = v6;
  v17[1] = @"clientPath";
  v7 = [*(a1 + 32) client];
  v8 = [v7 path];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"(nil)";
  }

  v18[1] = v10;
  v17[2] = @"isClientSandboxed";
  v11 = [*(a1 + 32) client];
  v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 isSandboxed]);
  v18[2] = v12;
  v17[3] = @"clientPID";
  v13 = [*(a1 + 32) client];
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 pid]);
  v18[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

uint64_t __30__PKDTransaction_matchPlugIns__block_invoke_2(uint64_t a1)
{
  if (([*(*(*(a1 + 48) + 8) + 40) onSystemVolume] & 1) == 0 && objc_msgSend(*(a1 + 32), "onSystemVolume"))
  {
    v2 = pklog_handle_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) uuid];
      v4 = [*(a1 + 32) identifier];
      v5 = [*(a1 + 32) version];
      v6 = *(a1 + 40);
      v7 = [*(*(*(a1 + 48) + 8) + 40) uuid];
      v8 = [*(*(*(a1 + 48) + 8) + 40) identifier];
      v9 = [*(*(*(a1 + 48) + 8) + 40) version];
      v24 = 138413826;
      v25 = v3;
      v26 = 2114;
      v27 = v4;
      v28 = 2112;
      v29 = v5;
      v30 = 2112;
      v31 = v6;
      v32 = 2114;
      v33 = v7;
      v34 = 2112;
      v35 = v8;
      v36 = 2112;
      v37 = v9;
      v10 = "[d %@] [u %{public}@] [%@(%@)] a system plugin has precedent: [u %{public}@] [%@(%@)] ";
LABEL_12:
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, v10, &v24, 0x48u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if ([*(*(*(a1 + 48) + 8) + 40) onSystemVolume] && (objc_msgSend(*(a1 + 32), "onSystemVolume") & 1) == 0)
  {
    v2 = pklog_handle_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:
      v16 = [*(*(*(a1 + 48) + 8) + 40) uuid];
      v17 = [*(*(*(a1 + 48) + 8) + 40) identifier];
      v18 = [*(*(*(a1 + 48) + 8) + 40) version];
      v19 = *(a1 + 40);
      v20 = [*(a1 + 32) uuid];
      v21 = [*(a1 + 32) identifier];
      v22 = [*(a1 + 32) version];
      v24 = 138413826;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      v32 = 2114;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      v36 = 2112;
      v37 = v22;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] detected another plugin with a newer modification date: [u %{public}@] [%@(%@)] ", &v24, 0x48u);
    }

LABEL_16:
    v15 = 1;
    goto LABEL_17;
  }

  v11 = [*(*(*(a1 + 48) + 8) + 40) lastModified];
  v12 = [*(a1 + 32) lastModified];
  v2 = pklog_handle_for_category();
  v13 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v11 > v12)
  {
    if (v13)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v13)
  {
    v3 = [*(*(*(a1 + 48) + 8) + 40) uuid];
    v4 = [*(*(*(a1 + 48) + 8) + 40) identifier];
    v5 = [*(*(*(a1 + 48) + 8) + 40) version];
    v14 = *(a1 + 40);
    v7 = [*(a1 + 32) uuid];
    v8 = [*(a1 + 32) identifier];
    v9 = [*(a1 + 32) version];
    v24 = 138413826;
    v25 = v3;
    v26 = 2114;
    v27 = v4;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v14;
    v32 = 2114;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    v10 = "[d %@] [u %{public}@] [%@(%@)] detected another plugin with the same modification date: [u %{public}@] [%@(%@)] ";
    goto LABEL_12;
  }

LABEL_13:
  v15 = 0;
LABEL_17:

  return v15;
}

- (void)addAnnotationForPlugIn:(id)in in:(id)a4
{
  inCopy = in;
  v7 = a4;
  server = [(PKDTransaction *)self server];
  v9 = [server annotationForPlugIn:inCopy];

  if (!v9)
  {
    if ([(PKDTransaction *)self pluginShouldBeAutoEnabled:inCopy])
    {
      v10 = PKAnnotationElectionKey;
      v11 = &off_2A240;
      v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    }

    else
    {
      v9 = &__NSDictionary0__struct;
    }
  }

  [v7 setObject:v9 forKeyedSubscript:PKAnnotationsFormKey];
}

- (void)fail:(int64_t)fail message:(id)message
{
  messageCopy = message;
  reply = [(PKDTransaction *)self reply];
  xpc_dictionary_set_uint64(reply, &PKDErrorCodeKey, fail);

  reply2 = [(PKDTransaction *)self reply];
  uTF8String = [messageCopy UTF8String];

  xpc_dictionary_set_string(reply2, &PKDErrorKey, uTF8String);

  [(PKDTransaction *)self done];
}

- (void)fail:(int64_t)fail error:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = PKPlugInKitErrorDomain;

  if (domain == v7)
  {
    code = [errorCopy code];
    userInfo = [errorCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
    [(PKDTransaction *)self fail:code message:v10];
  }

  else
  {
    userInfo = [errorCopy localizedDescription];
    [(PKDTransaction *)self fail:fail message:userInfo];
  }
}

void __31__PKDTransaction_removePlugIns__block_invoke_cold_1(id *a1)
{
  v1 = [*a1 client];
  [v1 pid];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x12u);
}

void __33__PKDTransaction_annotatePlugIns__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 uuid];
  v7 = [a1 identifier];
  v8 = [a1 version];
  v9 = [*(a2 + 32) client];
  v10 = [v9 pid];
  v11 = *(a2 + 40);
  v12 = 138544386;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  v18 = 1024;
  v19 = v10;
  v20 = 2112;
  v21 = v11;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] client pid %d requested annotation change: %@", &v12, 0x30u);
}

@end