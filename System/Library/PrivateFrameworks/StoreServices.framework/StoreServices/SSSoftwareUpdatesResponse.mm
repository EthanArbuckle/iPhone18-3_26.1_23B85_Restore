@interface SSSoftwareUpdatesResponse
- (NSArray)updateItems;
- (NSError)error;
- (SSSoftwareUpdatesResponse)initWithError:(id)a3;
- (SSSoftwareUpdatesResponse)initWithXPCEncoding:(id)a3;
- (id)copyUpdateItemDictionaries;
- (id)copyXPCEncoding;
- (id)description;
- (void)dealloc;
- (void)setUpdateItemsWithItemDictionaries:(id)a3;
@end

@implementation SSSoftwareUpdatesResponse

- (SSSoftwareUpdatesResponse)initWithError:(id)a3
{
  v7.receiver = self;
  v7.super_class = SSSoftwareUpdatesResponse;
  v4 = [(SSSoftwareUpdatesResponse *)&v7 init];
  if (v4)
  {
    v5 = a3;
    v4->_error = v5;
    v4->_failed = v5 != 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSoftwareUpdatesResponse;
  [(SSSoftwareUpdatesResponse *)&v3 dealloc];
}

- (NSError)error
{
  v2 = self->_error;

  return v2;
}

- (NSArray)updateItems
{
  v2 = self->_updateItems;

  return v2;
}

- (id)description
{
  if (self->_failed)
  {
    v4.receiver = self;
    v4.super_class = SSSoftwareUpdatesResponse;
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Failed with error: %@", -[SSSoftwareUpdatesResponse description](&v4, sel_description), self->_error];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = SSSoftwareUpdatesResponse;
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Found %ld updates", -[SSSoftwareUpdatesResponse description](&v3, sel_description), -[NSArray count](self->_updateItems, "count")];
  }
}

- (id)copyUpdateItemDictionaries
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  updateItems = self->_updateItems;
  v5 = [(NSArray *)updateItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(updateItems);
        }

        [v3 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "rawItemDictionary")}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)updateItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setUpdateItemsWithItemDictionaries:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [[SSItem alloc] initWithItemDictionary:v10];
          if (v11)
          {
            v12 = v11;
            [v5 addObject:v11];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  self->_updateItems = [v5 copy];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_error);
  xpc_dictionary_set_BOOL(v3, "1", self->_failed);
  v4 = [(SSSoftwareUpdatesResponse *)self copyUpdateItemDictionaries];
  SSXPCDictionarySetCFObject(v3, "2", v4);

  return v3;
}

- (SSSoftwareUpdatesResponse)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSSoftwareUpdatesResponse;
    v5 = [(SSSoftwareUpdatesResponse *)&v8 init];
    if (v5)
    {
      v5->_error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a3, "0")}];
      v5->_failed = xpc_dictionary_get_BOOL(a3, "1");
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(a3, "2");
      [(SSSoftwareUpdatesResponse *)v5 setUpdateItemsWithItemDictionaries:v7];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end