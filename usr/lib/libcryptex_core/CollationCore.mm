@interface CollationCore
- (BOOL)appendCollationElement:(id)a3;
- (BOOL)isEmpty;
- (BOOL)removeCollationElementWithPath:(id)a3;
- (CollationCore)initWithXPC:(id)a3 queue:(id)a4;
- (id)createEndpoint;
- (id)description;
- (id)getValidPaths:(id)a3 forBundleID:(id)a4;
- (id)mountPointOfBundleID:(id)a3;
- (id)packToXPC;
- (void)enumerateCollationElements:(id)a3;
- (void)enumerateElements:(id)a3;
- (void)parseMessage:(id)a3;
- (void)setupHandler;
@end

@implementation CollationCore

- (CollationCore)initWithXPC:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CollationCore *)self initWithID:xpc_dictionary_get_uint64(v6 queue:"uid"), v7];

  if (v8)
  {
    v9 = xpc_dictionary_get_array(v6, "collation_cryptexes");
    if (v9)
    {
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 3221225472;
      applier[2] = __35__CollationCore_initWithXPC_queue___block_invoke;
      applier[3] = &unk_29EEA8640;
      v12 = v8;
      xpc_array_apply(v9, applier);
    }
  }

  return v8;
}

uint64_t __35__CollationCore_initWithXPC_queue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[CollationElement alloc] initWithXPC:v4];

  v6 = [*(a1 + 32) coll_elems];
  [v6 addObject:v5];

  return 1;
}

- (id)packToXPC
{
  v18 = *MEMORY[0x29EDCA608];
  empty = xpc_dictionary_create_empty();
  v4 = xpc_array_create_empty();
  xpc_dictionary_set_int64(empty, "uid", [(CollationCore *)self coll_uid]);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CollationCore *)self coll_elems];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) package];
        xpc_array_append_value(v4, v10);
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  xpc_dictionary_set_value(empty, "collation_cryptexes", v4);
  v11 = *MEMORY[0x29EDCA608];

  return empty;
}

- (void)parseMessage:(id)a3
{
  v4 = a3;
  reply = xpc_dictionary_create_reply(v4);
  if (reply)
  {
    string = xpc_dictionary_get_string(v4, "command");
    if (string)
    {
      v7 = string;
      if (!strcmp(string, "package"))
      {
        v8 = [(CollationCore *)self packToXPC];
        xpc_dictionary_set_value(reply, "package", v8);
      }

      else
      {
        v8 = [(CollationCore *)self log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(CollationCore *)v7 parseMessage:v8];
        }
      }
    }

    xpc_dictionary_send_reply();
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    [CollationCore parseMessage:];
  }
}

- (void)setupHandler
{
  v3 = [(CollationCore *)self listener];
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3221225472;
  handler[2] = __29__CollationCore_setupHandler__block_invoke;
  handler[3] = &unk_29EEA8690;
  handler[4] = self;
  xpc_connection_set_event_handler(v3, handler);

  v4 = [(CollationCore *)self listener];
  xpc_connection_activate(v4);
}

void __29__CollationCore_setupHandler__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = MEMORY[0x29C2903B0]();
  if (v4 != MEMORY[0x29EDCA9F0])
  {
    v5 = v4;
    v6 = MEMORY[0x29EDCAA18];
    v7 = [*(a1 + 32) log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5 == v6)
    {
      if (v8)
      {
        string = xpc_dictionary_get_string(v3, *MEMORY[0x29EDCA9C8]);
        *buf = 136315138;
        v18 = string;
        v9 = "connection error: %s";
        v10 = v7;
        v11 = 12;
        goto LABEL_8;
      }
    }

    else if (v8)
    {
      *buf = 0;
      v9 = "unrecognized connection event";
      v10 = v7;
      v11 = 2;
LABEL_8:
      _os_log_impl(&dword_2986F2000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }

    goto LABEL_10;
  }

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __29__CollationCore_setupHandler__block_invoke_2;
  v15[3] = &unk_29EEA8668;
  v15[4] = *(a1 + 32);
  v12 = v3;
  v16 = v12;
  xpc_connection_set_event_handler(v12, v15);
  xpc_connection_activate(v12);

LABEL_10:
  v14 = *MEMORY[0x29EDCA608];
}

void __29__CollationCore_setupHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x29C2903B0]() == MEMORY[0x29EDCAA00])
  {
    [*(a1 + 32) parseMessage:v3];
  }

  else
  {
    xpc_connection_cancel(*(a1 + 40));
  }
}

- (id)description
{
  v2 = MEMORY[0x29EDBA0F8];
  coll_uid = self->_coll_uid;
  v4 = [(NSMutableSet *)self->_coll_elems description];
  v5 = [v2 stringWithFormat:@"[Collation %d]\n%@", coll_uid, v4];

  return v5;
}

- (id)mountPointOfBundleID:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(CollationCore *)self coll_elems];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = *v17;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      v11 = [v10 cle_bundle_id];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        v13 = v10;

        v7 = v13;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v6);

  if (v7)
  {
    v6 = [v7 cle_mnt_path];
    v5 = v7;
LABEL_12:

    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:

  v14 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)getValidPaths:(id)a3 forBundleID:(id)a4
{
  v41 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  v29 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v30 = [MEMORY[0x29EDB9FB8] defaultManager];
  [v5 componentsSeparatedByString:@":"];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v27 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  v22 = v5;
  v7 = 0;
  if (v27)
  {
    v25 = *v36;
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v8;
        v9 = *(*(&v35 + 1) + 8 * v8);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = [(CollationCore *)self coll_elems];
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              if (v6)
              {
                v16 = [*(*(&v31 + 1) + 8 * i) cle_bundle_id];
                v17 = [v6 isEqualToString:v16];

                if (!v17)
                {
                  continue;
                }
              }

              v18 = [v15 copyAbsolutePath:v9];

              if ([v30 fileExistsAtPath:v18])
              {
                [v29 addObject:v18];
              }

              v7 = v18;
            }

            v12 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v12);
        }

        v8 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v27);
  }

  v19 = [v29 componentsJoinedByString:{@":", v22}];

  v20 = *MEMORY[0x29EDCA608];

  return v19;
}

- (BOOL)appendCollationElement:(id)a3
{
  v4 = a3;
  v5 = [(CollationCore *)self coll_elems];
  [v5 addObject:v4];

  return 1;
}

- (BOOL)removeCollationElementWithPath:(id)a3
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(CollationCore *)self coll_elems];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    v19 = v6 != 0;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 cle_mnt_path];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          v15 = v12;

          v9 = v15;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);

    if (!v9)
    {
      v7 = 0;
      goto LABEL_15;
    }

    v16 = [(CollationCore *)self coll_elems];
    [v16 removeObject:v9];

    v7 = v19;
  }

  else
  {
    v9 = v5;
  }

LABEL_15:
  v17 = *MEMORY[0x29EDCA608];
  return v7;
}

- (void)enumerateCollationElements:(id)a3
{
  v4 = a3;
  v5 = [(CollationCore *)self coll_elems];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(CollationCore *)self coll_elems];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __44__CollationCore_enumerateCollationElements___block_invoke;
    v8[3] = &unk_29EEA86B8;
    v9 = v4;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

uint64_t __44__CollationCore_enumerateCollationElements___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *a3 = result ^ 1;
  return result;
}

- (void)enumerateElements:(id)a3
{
  v4 = a3;
  v5 = [(CollationCore *)self coll_elems];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(CollationCore *)self coll_elems];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __35__CollationCore_enumerateElements___block_invoke;
    v8[3] = &unk_29EEA86B8;
    v9 = v4;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

void __35__CollationCore_enumerateElements___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v5 cle_scope];
  v12 = [v5 cle_bundle_id];
  v7 = v12;
  v8 = [v12 UTF8String];
  v9 = [v5 cle_bundle_version];
  v10 = [v9 UTF8String];
  v11 = [v5 cle_mnt_path];

  *a3 = (*(v4 + 16))(v4, v6, v8, v10, [v11 UTF8String]) ^ 1;
}

- (id)createEndpoint
{
  v2 = [(CollationCore *)self listener];
  v3 = xpc_endpoint_create(v2);

  return v3;
}

- (BOOL)isEmpty
{
  v2 = [(CollationCore *)self coll_elems];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)parseMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_2986F2000, a2, OS_LOG_TYPE_ERROR, "Unknown subcommand %s", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end