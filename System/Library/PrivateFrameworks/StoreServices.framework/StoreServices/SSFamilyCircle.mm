@interface SSFamilyCircle
- (SSFamilyCircle)initWithCacheRepresentation:(id)representation;
- (SSFamilyCircle)initWithXPCEncoding:(id)encoding;
- (id)allITunesIdentifiers;
- (id)copyXPCEncoding;
- (id)newCacheRepresentation;
@end

@implementation SSFamilyCircle

- (id)allITunesIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_familyMembers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        iTunesIdentifier = [*(*(&v11 + 1) + 8 * i) iTunesIdentifier];
        if (iTunesIdentifier)
        {
          [v3 addObject:iTunesIdentifier];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (SSFamilyCircle)initWithCacheRepresentation:(id)representation
{
  v38 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35.receiver = self;
    v35.super_class = SSFamilyCircle;
    v5 = [(SSFamilyCircle *)&v35 init];
    if (v5)
    {
      v6 = [representationCopy objectForKey:@"family"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v32;
          do
          {
            v12 = 0;
            do
            {
              if (*v32 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [[SSFamilyMember alloc] initWithCacheRepresentation:*(*(&v31 + 1) + 8 * v12)];
              if (v13)
              {
                [v7 addObject:v13];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
          }

          while (v10);
        }

        v14 = [v7 copy];
        familyMembers = v5->_familyMembers;
        v5->_familyMembers = v14;
      }

      v16 = [representationCopy objectForKey:@"accountNames"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v28;
          do
          {
            v22 = 0;
            do
            {
              if (*v28 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v27 + 1) + 8 * v22);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v17 addObject:{v23, v27}];
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v20);
        }

        v24 = [v17 copy];
        iTunesAccountNames = v5->_iTunesAccountNames;
        v5->_iTunesAccountNames = v24;
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (id)newCacheRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  iTunesAccountNames = self->_iTunesAccountNames;
  if (iTunesAccountNames)
  {
    [v3 setObject:iTunesAccountNames forKey:@"accountNames"];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_familyMembers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        newCacheRepresentation = [*(*(&v14 + 1) + 8 * v11) newCacheRepresentation];
        if (newCacheRepresentation)
        {
          [v6 addObject:newCacheRepresentation];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    [v4 setObject:v6 forKey:@"family"];
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_familyMembers);
  SSXPCDictionarySetObject(v3, "1", self->_iTunesAccountNames);
  return v3;
}

- (SSFamilyCircle)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v17.receiver = self;
    v17.super_class = SSFamilyCircle;
    v6 = [(SSFamilyCircle *)&v17 init];
    if (v6)
    {
      v8 = xpc_dictionary_get_value(v5, "0");
      v9 = v8;
      v10 = MEMORY[0x1E69E9E50];
      if (v8 && MEMORY[0x1DA6E0380](v8) == v10)
      {
        v11 = objc_opt_class();
        v12 = SSXPCCreateNSArrayFromXPCEncodedArray(v9, v11);
        familyMembers = v6->_familyMembers;
        v6->_familyMembers = v12;
      }

      v14 = xpc_dictionary_get_value(v5, "1");

      if (v14 && MEMORY[0x1DA6E0380](v14) == v10)
      {
        v15 = SSXPCCreateCFObjectFromXPCObject(v14);
        iTunesAccountNames = v6->_iTunesAccountNames;
        v6->_iTunesAccountNames = v15;
      }
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end