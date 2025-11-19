@interface SSDownloadManifestResponse
- (SSDownloadManifestResponse)initWithCoder:(id)a3;
- (SSDownloadManifestResponse)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setValidDownloads:(id)a3;
@end

@implementation SSDownloadManifestResponse

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadManifestResponse;
  [(SSDownloadManifestResponse *)&v3 dealloc];
}

- (void)setValidDownloads:(id)a3
{
  validDownloads = self->_validDownloads;
  if (validDownloads != a3)
  {

    self->_validDownloads = a3;
  }
}

- (SSDownloadManifestResponse)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [(SSDownloadManifestResponse *)a2 initWithCoder:?];
  }

  v10.receiver = self;
  v10.super_class = SSDownloadManifestResponse;
  v6 = [(SSDownloadManifestResponse *)&v10 init];
  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v6->_validDownloads = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"valid"}];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [(SSDownloadManifestResponse *)a2 encodeWithCoder:?];
  }

  validDownloads = self->_validDownloads;

  [a3 encodeObject:validDownloads forKey:@"valid"];
}

- (id)copyXPCEncoding
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = xpc_array_create(0, 0);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  validDownloads = self->_validDownloads;
  v6 = [(NSArray *)validDownloads countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(validDownloads);
        }

        xpc_array_set_int64(v4, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v11 + 1) + 8 * v9++) persistentIdentifier]);
      }

      while (v7 != v9);
      v7 = [(NSArray *)validDownloads countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  xpc_dictionary_set_value(v3, "valid", v4);
  xpc_release(v4);
  return v3;
}

- (SSDownloadManifestResponse)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v11.receiver = self;
    v11.super_class = SSDownloadManifestResponse;
    v5 = [(SSDownloadManifestResponse *)&v11 init];
    if (v5)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      value = xpc_dictionary_get_value(a3, "valid");
      if (value)
      {
        v9 = value;
        if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9E50])
        {
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = __50__SSDownloadManifestResponse_initWithXPCEncoding___block_invoke;
          applier[3] = &unk_1E84AD708;
          applier[4] = v7;
          xpc_array_apply(v9, applier);
        }
      }

      v5->_validDownloads = [v7 copy];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t __50__SSDownloadManifestResponse_initWithXPCEncoding___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (MEMORY[0x1DA6E0380](a3) == MEMORY[0x1E69E9EB0])
  {
    v5 = [[SSDownload alloc] initWithPersistentIdentifier:xpc_int64_get_value(a3)];
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

- (uint64_t)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SSDownloadManifestResponse.m" lineNumber:41 description:@"Only keyed coding is supported"];
}

- (uint64_t)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SSDownloadManifestResponse.m" lineNumber:49 description:@"Only keyed coding is supported"];
}

@end