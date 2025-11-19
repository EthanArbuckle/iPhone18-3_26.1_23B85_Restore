@interface _PSSuggestionProxy
- (BOOL)isEqual:(id)a3;
- (NSString)suggestionKey;
- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handle:(id)a6 reason:(id)a7 reasonType:(id)a8;
- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handle:(id)a6 reason:(id)a7 reasonType:(id)a8 groupName:(id)a9 image:(id)a10;
- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handle:(id)a6 reason:(id)a7 reasonType:(id)a8 image:(id)a9;
- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handle:(id)a6 reason:(id)a7 reasonType:(id)a8 useGroupsWhenFindingRecipient:(BOOL)a9;
- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handles:(id)a6 reason:(id)a7 reasonType:(id)a8 useGroupsWhenFindingRecipient:(BOOL)a9 groupName:(id)a10 image:(id)a11;
- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handles:(id)a6 reason:(id)a7 reasonType:(id)a8 useGroupsWhenFindingRecipient:(BOOL)a9 groupName:(id)a10 image:(id)a11 modelScore:(id)a12;
- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 reason:(id)a6 reasonType:(id)a7;
- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 handles:(id)a5 reason:(id)a6 reasonType:(id)a7;
- (_PSSuggestionProxy)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSSuggestionProxy

- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handle:(id)a6 reason:(id)a7 reasonType:(id)a8 groupName:(id)a9 image:(id)a10
{
  v30[1] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (v18)
  {
    v30[0] = v18;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  }

  else
  {
    v23 = 0;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:-1.0];
  LOBYTE(v28) = 0;
  v25 = [(_PSSuggestionProxy *)self initWithBundleID:v29 interactionRecipients:v16 contactID:v17 handles:v23 reason:v19 reasonType:v20 useGroupsWhenFindingRecipient:v28 groupName:v21 image:v22 modelScore:v24];

  if (v18)
  {
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handle:(id)a6 reason:(id)a7 reasonType:(id)a8 image:(id)a9
{
  v28[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (v18)
  {
    v28[0] = v18;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  }

  else
  {
    v22 = 0;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithDouble:-1.0];
  LOBYTE(v27) = 0;
  v24 = [(_PSSuggestionProxy *)self initWithBundleID:v15 interactionRecipients:v16 contactID:v17 handles:v22 reason:v19 reasonType:v20 useGroupsWhenFindingRecipient:v27 groupName:0 image:v21 modelScore:v23];

  if (v18)
  {
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 reason:(id)a6 reasonType:(id)a7
{
  v12 = MEMORY[0x1E696AD98];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 numberWithDouble:-1.0];
  LOBYTE(v21) = 0;
  v19 = [(_PSSuggestionProxy *)self initWithBundleID:v17 interactionRecipients:v16 contactID:v15 handles:0 reason:v14 reasonType:v13 useGroupsWhenFindingRecipient:v21 groupName:0 image:0 modelScore:v18];

  return v19;
}

- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handle:(id)a6 reason:(id)a7 reasonType:(id)a8
{
  v38 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v37 = a6;
    v14 = MEMORY[0x1E695DEC8];
    v15 = a8;
    v16 = a7;
    v17 = a6;
    v18 = a5;
    v19 = a4;
    v20 = a3;
    v21 = [v14 arrayWithObjects:&v37 count:1];
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:-1.0];

    LOBYTE(v36) = 0;
    v23 = [(_PSSuggestionProxy *)self initWithBundleID:v20 interactionRecipients:v19 contactID:v18 handles:v21 reason:v16 reasonType:v15 useGroupsWhenFindingRecipient:v36 groupName:0 image:0 modelScore:v22, v37, v38];

    v24 = v23;
  }

  else
  {
    v25 = MEMORY[0x1E696AD98];
    v26 = a8;
    v27 = a7;
    v28 = 0;
    v29 = a5;
    v30 = a4;
    v31 = a3;
    v32 = [v25 numberWithDouble:-1.0];

    LOBYTE(v36) = 0;
    v33 = [(_PSSuggestionProxy *)self initWithBundleID:v31 interactionRecipients:v30 contactID:v29 handles:0 reason:v27 reasonType:v26 useGroupsWhenFindingRecipient:v36 groupName:0 image:0 modelScore:v32];

    v24 = v33;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v24;
}

- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 handles:(id)a5 reason:(id)a6 reasonType:(id)a7
{
  v12 = MEMORY[0x1E696AD98];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 numberWithDouble:-1.0];
  LOBYTE(v21) = 0;
  v19 = [(_PSSuggestionProxy *)self initWithBundleID:v17 interactionRecipients:v16 contactID:0 handles:v15 reason:v14 reasonType:v13 useGroupsWhenFindingRecipient:v21 groupName:0 image:0 modelScore:v18];

  return v19;
}

- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handle:(id)a6 reason:(id)a7 reasonType:(id)a8 useGroupsWhenFindingRecipient:(BOOL)a9
{
  v39 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v38 = a6;
    v15 = MEMORY[0x1E695DEC8];
    v16 = a8;
    v17 = a7;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    v21 = a3;
    v22 = [v15 arrayWithObjects:&v38 count:1];
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:-1.0];

    LOBYTE(v37) = a9;
    v24 = [(_PSSuggestionProxy *)self initWithBundleID:v21 interactionRecipients:v20 contactID:v19 handles:v22 reason:v17 reasonType:v16 useGroupsWhenFindingRecipient:v37 groupName:0 image:0 modelScore:v23, v38, v39];

    v25 = v24;
  }

  else
  {
    v26 = MEMORY[0x1E696AD98];
    v27 = a8;
    v28 = a7;
    v29 = 0;
    v30 = a5;
    v31 = a4;
    v32 = a3;
    v33 = [v26 numberWithDouble:-1.0];

    LOBYTE(v37) = a9;
    v34 = [(_PSSuggestionProxy *)self initWithBundleID:v32 interactionRecipients:v31 contactID:v30 handles:0 reason:v28 reasonType:v27 useGroupsWhenFindingRecipient:v37 groupName:0 image:0 modelScore:v33];

    v25 = v34;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v25;
}

- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handles:(id)a6 reason:(id)a7 reasonType:(id)a8 useGroupsWhenFindingRecipient:(BOOL)a9 groupName:(id)a10 image:(id)a11
{
  v17 = MEMORY[0x1E696AD98];
  v18 = a11;
  v19 = a10;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [v17 numberWithDouble:-1.0];
  LOBYTE(v29) = a9;
  v27 = [(_PSSuggestionProxy *)self initWithBundleID:v25 interactionRecipients:v24 contactID:v23 handles:v22 reason:v21 reasonType:v20 useGroupsWhenFindingRecipient:v29 groupName:v19 image:v18 modelScore:v26];

  return v27;
}

- (_PSSuggestionProxy)initWithBundleID:(id)a3 interactionRecipients:(id)a4 contactID:(id)a5 handles:(id)a6 reason:(id)a7 reasonType:(id)a8 useGroupsWhenFindingRecipient:(BOOL)a9 groupName:(id)a10 image:(id)a11 modelScore:(id)a12
{
  v17 = a3;
  v18 = a4;
  v41 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v40 = a10;
  v22 = a11;
  v23 = a12;
  v42.receiver = self;
  v42.super_class = _PSSuggestionProxy;
  v24 = [(_PSSuggestionProxy *)&v42 init];
  if (v24)
  {
    v25 = [v17 copy];
    bundleID = v24->_bundleID;
    v24->_bundleID = v25;

    v27 = [v18 copy];
    interactionRecipients = v24->_interactionRecipients;
    v24->_interactionRecipients = v27;

    v29 = [v20 copy];
    reason = v24->_reason;
    v24->_reason = v29;

    v31 = [v21 copy];
    reasonType = v24->_reasonType;
    v24->_reasonType = v31;

    v24->_useGroupsWhenFindingRecipient = a9;
    v33 = [v19 copy];
    handles = v24->_handles;
    v24->_handles = v33;

    handle = v24->_handle;
    v24->_handle = 0;

    objc_storeStrong(&v24->_contactID, a5);
    objc_storeStrong(&v24->_groupName, a10);
    if (v19 && [v19 count] == 1)
    {
      v36 = [v19 objectAtIndexedSubscript:0];
      v37 = v24->_handle;
      v24->_handle = v36;
    }

    objc_storeStrong(&v24->_image, a11);
    objc_storeStrong(&v24->_modelScore, a12);
  }

  return v24;
}

- (NSString)suggestionKey
{
  v3 = [(_PSSuggestionProxy *)self bundleID];
  v4 = [(_PSSuggestionProxy *)self interactionRecipients];
  v5 = _PSSuggestionKey(v3, v4);

  return v5;
}

- (unint64_t)hash
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(_PSSuggestionProxy *)self handles];

  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(_PSSuggestionProxy *)self handles];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 ^= [*(*(&v15 + 1) + 8 * i) hash];
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = [(NSString *)self->_bundleID hash];
  v11 = [(NSString *)self->_interactionRecipients hash];
  v12 = [(NSString *)self->_contactID hash];
  v13 = *MEMORY[0x1E69E9840];
  return v10 ^ v7 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v18 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(_PSSuggestionProxy *)self bundleID];
        if (!v8)
        {
          goto LABEL_14;
        }

        v9 = v8;
        v10 = [(_PSSuggestionProxy *)self interactionRecipients];
        if (v10)
        {
          v3 = v10;
          v11 = [(_PSSuggestionProxy *)v7 bundleID];
          if (v11)
          {
            v12 = v11;
            v13 = [(_PSSuggestionProxy *)v7 interactionRecipients];

            if (v13)
            {
              v14 = [(_PSSuggestionProxy *)self bundleID];
              v15 = [(_PSSuggestionProxy *)v7 bundleID];
              if ([v14 isEqualToString:v15])
              {
                v16 = [(_PSSuggestionProxy *)self interactionRecipients];
                v17 = [(_PSSuggestionProxy *)v7 interactionRecipients];
LABEL_43:
                v45 = v17;
                v18 = [v16 isEqualToString:v17];

LABEL_45:
                goto LABEL_46;
              }

              goto LABEL_44;
            }

LABEL_14:
            v19 = [(_PSSuggestionProxy *)self contactID];
            if (v19)
            {
              v20 = v19;
              v21 = [(_PSSuggestionProxy *)v7 contactID];
              if (v21)
              {
                v3 = v21;
                v22 = [(_PSSuggestionProxy *)self contactID];
                v23 = [(_PSSuggestionProxy *)v7 contactID];
                v24 = [v22 isEqualToString:v23];

                if (!v24)
                {
LABEL_26:
                  v18 = 0;
LABEL_47:

                  goto LABEL_48;
                }
              }

              else
              {
              }
            }

            v14 = [(_PSSuggestionProxy *)self contactID];
            if (v14)
            {
              v3 = [(_PSSuggestionProxy *)v7 contactID];
              if (!v3)
              {
                v18 = 0;
LABEL_46:

                goto LABEL_47;
              }
            }

            v25 = [(_PSSuggestionProxy *)v7 contactID];
            if (v25)
            {
              v26 = [(_PSSuggestionProxy *)self contactID];

              if (v14)
              {
              }

              if (!v26)
              {
                goto LABEL_26;
              }
            }

            else
            {

              if (v14)
              {
              }
            }

            v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v27 = [(_PSSuggestionProxy *)self handles];
            if (!v27)
            {
              goto LABEL_51;
            }

            v28 = v27;
            v29 = [(_PSSuggestionProxy *)v7 handles];

            if (!v29)
            {
              goto LABEL_51;
            }

            v30 = [(_PSSuggestionProxy *)self handles];
            v31 = [v30 count];

            if (v31)
            {
              v32 = 0;
              do
              {
                v33 = [(_PSSuggestionProxy *)self handles];
                v34 = [v33 objectAtIndexedSubscript:v32];
                [v14 addObject:v34];

                ++v32;
                v35 = [(_PSSuggestionProxy *)self handles];
                v36 = [v35 count];
              }

              while (v36 > v32);
            }

            v37 = [(_PSSuggestionProxy *)v7 handles];
            v38 = [v37 count];

            if (v38)
            {
              v39 = 0;
              do
              {
                v40 = [(_PSSuggestionProxy *)v7 handles];
                v41 = [v40 objectAtIndexedSubscript:v39];
                [v15 addObject:v41];

                ++v39;
                v42 = [(_PSSuggestionProxy *)v7 handles];
                v43 = [v42 count];
              }

              while (v43 > v39);
            }

            v44 = [v14 count];
            if (v44 == [v15 count])
            {
              if ([v14 isEqualToSet:v15])
              {
LABEL_51:
                if ([v14 count] && objc_msgSend(v15, "count") && objc_msgSend(v14, "isEqualToSet:", v15))
                {
                  v16 = [(_PSSuggestionProxy *)self bundleID];
                  v17 = [(_PSSuggestionProxy *)v7 bundleID];
                  goto LABEL_43;
                }
              }
            }

LABEL_44:
            v18 = 0;
            goto LABEL_45;
          }
        }

        goto LABEL_14;
      }
    }

    v18 = 0;
  }

LABEL_48:

  return v18;
}

- (_PSSuggestionProxy)initWithCoder:(id)a3
{
  v29[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = _PSSuggestionProxy;
  v5 = [(_PSSuggestionProxy *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interactionRecipients"];
    interactionRecipients = v5->_interactionRecipients;
    v5->_interactionRecipients = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactID"];
    contactID = v5->_contactID;
    v5->_contactID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reasonType"];
    reasonType = v5->_reasonType;
    v5->_reasonType = v16;

    v5->_useGroupsWhenFindingRecipient = [v4 decodeBoolForKey:@"useGroupsWhenFindingRecipient"];
    v18 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v20 = [v18 setWithArray:v19];

    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"handles"];
    handles = v5->_handles;
    v5->_handles = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelScore"];
    modelScore = v5->_modelScore;
    v5->_modelScore = v23;

    v25 = v5;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_interactionRecipients forKey:@"interactionRecipients"];
  [v5 encodeObject:self->_contactID forKey:@"contactID"];
  [v5 encodeObject:self->_handle forKey:@"handle"];
  [v5 encodeObject:self->_reason forKey:@"reason"];
  [v5 encodeObject:self->_reasonType forKey:@"reasonType"];
  [v5 encodeBool:self->_useGroupsWhenFindingRecipient forKey:@"useGroupsWhenFindingRecipient"];
  [v5 encodeObject:self->_handles forKey:@"handles"];
  [v5 encodeObject:self->_modelScore forKey:@"modelScore"];
}

@end