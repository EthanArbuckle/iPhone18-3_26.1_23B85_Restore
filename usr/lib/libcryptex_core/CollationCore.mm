@interface CollationCore
- (BOOL)appendCollationElement:(id)element;
- (BOOL)isEmpty;
- (BOOL)removeCollationElementWithPath:(id)path;
- (CollationCore)initWithXPC:(id)c queue:(id)queue;
- (id)createEndpoint;
- (id)description;
- (id)getValidPaths:(id)paths forBundleID:(id)d;
- (id)mountPointOfBundleID:(id)d;
- (id)packToXPC;
- (void)enumerateCollationElements:(id)elements;
- (void)enumerateElements:(id)elements;
- (void)parseMessage:(id)message;
- (void)setupHandler;
@end

@implementation CollationCore

- (CollationCore)initWithXPC:(id)c queue:(id)queue
{
  cCopy = c;
  queueCopy = queue;
  queueCopy = [(CollationCore *)self initWithID:xpc_dictionary_get_uint64(cCopy queue:"uid"), queueCopy];

  if (queueCopy)
  {
    v9 = xpc_dictionary_get_array(cCopy, "collation_cryptexes");
    if (v9)
    {
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 3221225472;
      applier[2] = __35__CollationCore_initWithXPC_queue___block_invoke;
      applier[3] = &unk_29EEA8640;
      v12 = queueCopy;
      xpc_array_apply(v9, applier);
    }
  }

  return queueCopy;
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
  coll_elems = [(CollationCore *)self coll_elems];
  v6 = [coll_elems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(coll_elems);
        }

        package = [*(*(&v13 + 1) + 8 * i) package];
        xpc_array_append_value(v4, package);
      }

      v7 = [coll_elems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  xpc_dictionary_set_value(empty, "collation_cryptexes", v4);
  v11 = *MEMORY[0x29EDCA608];

  return empty;
}

- (void)parseMessage:(id)message
{
  messageCopy = message;
  reply = xpc_dictionary_create_reply(messageCopy);
  if (reply)
  {
    string = xpc_dictionary_get_string(messageCopy, "command");
    if (string)
    {
      v7 = string;
      if (!strcmp(string, "package"))
      {
        packToXPC = [(CollationCore *)self packToXPC];
        xpc_dictionary_set_value(reply, "package", packToXPC);
      }

      else
      {
        packToXPC = [(CollationCore *)self log];
        if (os_log_type_enabled(packToXPC, OS_LOG_TYPE_ERROR))
        {
          [(CollationCore *)v7 parseMessage:packToXPC];
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
  listener = [(CollationCore *)self listener];
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3221225472;
  handler[2] = __29__CollationCore_setupHandler__block_invoke;
  handler[3] = &unk_29EEA8690;
  handler[4] = self;
  xpc_connection_set_event_handler(listener, handler);

  listener2 = [(CollationCore *)self listener];
  xpc_connection_activate(listener2);
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

- (id)mountPointOfBundleID:(id)d
{
  v21 = *MEMORY[0x29EDCA608];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  coll_elems = [(CollationCore *)self coll_elems];
  cle_mnt_path = [coll_elems countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!cle_mnt_path)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = *v17;
  do
  {
    for (i = 0; i != cle_mnt_path; i = i + 1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(coll_elems);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      cle_bundle_id = [v10 cle_bundle_id];
      v12 = [cle_bundle_id isEqualToString:dCopy];

      if (v12)
      {
        v13 = v10;

        v7 = v13;
      }
    }

    cle_mnt_path = [coll_elems countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (cle_mnt_path);

  if (v7)
  {
    cle_mnt_path = [v7 cle_mnt_path];
    coll_elems = v7;
LABEL_12:

    goto LABEL_14;
  }

  cle_mnt_path = 0;
LABEL_14:

  v14 = *MEMORY[0x29EDCA608];

  return cle_mnt_path;
}

- (id)getValidPaths:(id)paths forBundleID:(id)d
{
  v41 = *MEMORY[0x29EDCA608];
  pathsCopy = paths;
  dCopy = d;
  v29 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  [pathsCopy componentsSeparatedByString:@":"];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v27 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  v22 = pathsCopy;
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
        coll_elems = [(CollationCore *)self coll_elems];
        v11 = [coll_elems countByEnumeratingWithState:&v31 objects:v39 count:16];
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
                objc_enumerationMutation(coll_elems);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              if (dCopy)
              {
                cle_bundle_id = [*(*(&v31 + 1) + 8 * i) cle_bundle_id];
                v17 = [dCopy isEqualToString:cle_bundle_id];

                if (!v17)
                {
                  continue;
                }
              }

              v18 = [v15 copyAbsolutePath:v9];

              if ([defaultManager fileExistsAtPath:v18])
              {
                [v29 addObject:v18];
              }

              v7 = v18;
            }

            v12 = [coll_elems countByEnumeratingWithState:&v31 objects:v39 count:16];
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

- (BOOL)appendCollationElement:(id)element
{
  elementCopy = element;
  coll_elems = [(CollationCore *)self coll_elems];
  [coll_elems addObject:elementCopy];

  return 1;
}

- (BOOL)removeCollationElementWithPath:(id)path
{
  v25 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  coll_elems = [(CollationCore *)self coll_elems];
  v6 = [coll_elems countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(coll_elems);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        cle_mnt_path = [v12 cle_mnt_path];
        v14 = [cle_mnt_path isEqualToString:pathCopy];

        if (v14)
        {
          v15 = v12;

          v9 = v15;
        }
      }

      v8 = [coll_elems countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);

    if (!v9)
    {
      v7 = 0;
      goto LABEL_15;
    }

    coll_elems2 = [(CollationCore *)self coll_elems];
    [coll_elems2 removeObject:v9];

    v7 = v19;
  }

  else
  {
    v9 = coll_elems;
  }

LABEL_15:
  v17 = *MEMORY[0x29EDCA608];
  return v7;
}

- (void)enumerateCollationElements:(id)elements
{
  elementsCopy = elements;
  coll_elems = [(CollationCore *)self coll_elems];
  v6 = [coll_elems count];

  if (v6)
  {
    coll_elems2 = [(CollationCore *)self coll_elems];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __44__CollationCore_enumerateCollationElements___block_invoke;
    v8[3] = &unk_29EEA86B8;
    v9 = elementsCopy;
    [coll_elems2 enumerateObjectsUsingBlock:v8];
  }
}

uint64_t __44__CollationCore_enumerateCollationElements___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *a3 = result ^ 1;
  return result;
}

- (void)enumerateElements:(id)elements
{
  elementsCopy = elements;
  coll_elems = [(CollationCore *)self coll_elems];
  v6 = [coll_elems count];

  if (v6)
  {
    coll_elems2 = [(CollationCore *)self coll_elems];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __35__CollationCore_enumerateElements___block_invoke;
    v8[3] = &unk_29EEA86B8;
    v9 = elementsCopy;
    [coll_elems2 enumerateObjectsUsingBlock:v8];
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
  listener = [(CollationCore *)self listener];
  v3 = xpc_endpoint_create(listener);

  return v3;
}

- (BOOL)isEmpty
{
  coll_elems = [(CollationCore *)self coll_elems];
  v3 = [coll_elems count] == 0;

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