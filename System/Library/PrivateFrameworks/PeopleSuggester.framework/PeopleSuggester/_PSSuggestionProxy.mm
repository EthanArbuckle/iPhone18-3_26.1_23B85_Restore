@interface _PSSuggestionProxy
- (BOOL)isEqual:(id)equal;
- (NSString)suggestionKey;
- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handle:(id)handle reason:(id)reason reasonType:(id)type;
- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handle:(id)handle reason:(id)reason reasonType:(id)type groupName:(id)name image:(id)self0;
- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handle:(id)handle reason:(id)reason reasonType:(id)type image:(id)image;
- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handle:(id)handle reason:(id)reason reasonType:(id)type useGroupsWhenFindingRecipient:(BOOL)recipient;
- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handles:(id)handles reason:(id)reason reasonType:(id)type useGroupsWhenFindingRecipient:(BOOL)recipient groupName:(id)self0 image:(id)self1;
- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handles:(id)handles reason:(id)reason reasonType:(id)type useGroupsWhenFindingRecipient:(BOOL)recipient groupName:(id)self0 image:(id)self1 modelScore:(id)self2;
- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD reason:(id)reason reasonType:(id)type;
- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients handles:(id)handles reason:(id)reason reasonType:(id)type;
- (_PSSuggestionProxy)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSSuggestionProxy

- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handle:(id)handle reason:(id)reason reasonType:(id)type groupName:(id)name image:(id)self0
{
  v30[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  recipientsCopy = recipients;
  iDCopy = iD;
  handleCopy = handle;
  reasonCopy = reason;
  typeCopy = type;
  nameCopy = name;
  imageCopy = image;
  if (handleCopy)
  {
    v30[0] = handleCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  }

  else
  {
    v23 = 0;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:-1.0];
  LOBYTE(v28) = 0;
  v25 = [(_PSSuggestionProxy *)self initWithBundleID:dCopy interactionRecipients:recipientsCopy contactID:iDCopy handles:v23 reason:reasonCopy reasonType:typeCopy useGroupsWhenFindingRecipient:v28 groupName:nameCopy image:imageCopy modelScore:v24];

  if (handleCopy)
  {
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handle:(id)handle reason:(id)reason reasonType:(id)type image:(id)image
{
  v28[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  recipientsCopy = recipients;
  iDCopy = iD;
  handleCopy = handle;
  reasonCopy = reason;
  typeCopy = type;
  imageCopy = image;
  if (handleCopy)
  {
    v28[0] = handleCopy;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  }

  else
  {
    v22 = 0;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithDouble:-1.0];
  LOBYTE(v27) = 0;
  v24 = [(_PSSuggestionProxy *)self initWithBundleID:dCopy interactionRecipients:recipientsCopy contactID:iDCopy handles:v22 reason:reasonCopy reasonType:typeCopy useGroupsWhenFindingRecipient:v27 groupName:0 image:imageCopy modelScore:v23];

  if (handleCopy)
  {
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD reason:(id)reason reasonType:(id)type
{
  v12 = MEMORY[0x1E696AD98];
  typeCopy = type;
  reasonCopy = reason;
  iDCopy = iD;
  recipientsCopy = recipients;
  dCopy = d;
  v18 = [v12 numberWithDouble:-1.0];
  LOBYTE(v21) = 0;
  v19 = [(_PSSuggestionProxy *)self initWithBundleID:dCopy interactionRecipients:recipientsCopy contactID:iDCopy handles:0 reason:reasonCopy reasonType:typeCopy useGroupsWhenFindingRecipient:v21 groupName:0 image:0 modelScore:v18];

  return v19;
}

- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handle:(id)handle reason:(id)reason reasonType:(id)type
{
  v38 = *MEMORY[0x1E69E9840];
  if (handle)
  {
    handleCopy = handle;
    v14 = MEMORY[0x1E695DEC8];
    typeCopy = type;
    reasonCopy = reason;
    handleCopy2 = handle;
    iDCopy = iD;
    recipientsCopy = recipients;
    dCopy = d;
    v21 = [v14 arrayWithObjects:&handleCopy count:1];
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:-1.0];

    LOBYTE(v36) = 0;
    v23 = [(_PSSuggestionProxy *)self initWithBundleID:dCopy interactionRecipients:recipientsCopy contactID:iDCopy handles:v21 reason:reasonCopy reasonType:typeCopy useGroupsWhenFindingRecipient:v36 groupName:0 image:0 modelScore:v22, handleCopy, v38];

    v24 = v23;
  }

  else
  {
    v25 = MEMORY[0x1E696AD98];
    typeCopy2 = type;
    reasonCopy2 = reason;
    v28 = 0;
    iDCopy2 = iD;
    recipientsCopy2 = recipients;
    dCopy2 = d;
    v32 = [v25 numberWithDouble:-1.0];

    LOBYTE(v36) = 0;
    v33 = [(_PSSuggestionProxy *)self initWithBundleID:dCopy2 interactionRecipients:recipientsCopy2 contactID:iDCopy2 handles:0 reason:reasonCopy2 reasonType:typeCopy2 useGroupsWhenFindingRecipient:v36 groupName:0 image:0 modelScore:v32];

    v24 = v33;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v24;
}

- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients handles:(id)handles reason:(id)reason reasonType:(id)type
{
  v12 = MEMORY[0x1E696AD98];
  typeCopy = type;
  reasonCopy = reason;
  handlesCopy = handles;
  recipientsCopy = recipients;
  dCopy = d;
  v18 = [v12 numberWithDouble:-1.0];
  LOBYTE(v21) = 0;
  v19 = [(_PSSuggestionProxy *)self initWithBundleID:dCopy interactionRecipients:recipientsCopy contactID:0 handles:handlesCopy reason:reasonCopy reasonType:typeCopy useGroupsWhenFindingRecipient:v21 groupName:0 image:0 modelScore:v18];

  return v19;
}

- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handle:(id)handle reason:(id)reason reasonType:(id)type useGroupsWhenFindingRecipient:(BOOL)recipient
{
  v39 = *MEMORY[0x1E69E9840];
  if (handle)
  {
    handleCopy = handle;
    v15 = MEMORY[0x1E695DEC8];
    typeCopy = type;
    reasonCopy = reason;
    handleCopy2 = handle;
    iDCopy = iD;
    recipientsCopy = recipients;
    dCopy = d;
    v22 = [v15 arrayWithObjects:&handleCopy count:1];
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:-1.0];

    LOBYTE(v37) = recipient;
    v24 = [(_PSSuggestionProxy *)self initWithBundleID:dCopy interactionRecipients:recipientsCopy contactID:iDCopy handles:v22 reason:reasonCopy reasonType:typeCopy useGroupsWhenFindingRecipient:v37 groupName:0 image:0 modelScore:v23, handleCopy, v39];

    v25 = v24;
  }

  else
  {
    v26 = MEMORY[0x1E696AD98];
    typeCopy2 = type;
    reasonCopy2 = reason;
    v29 = 0;
    iDCopy2 = iD;
    recipientsCopy2 = recipients;
    dCopy2 = d;
    v33 = [v26 numberWithDouble:-1.0];

    LOBYTE(v37) = recipient;
    v34 = [(_PSSuggestionProxy *)self initWithBundleID:dCopy2 interactionRecipients:recipientsCopy2 contactID:iDCopy2 handles:0 reason:reasonCopy2 reasonType:typeCopy2 useGroupsWhenFindingRecipient:v37 groupName:0 image:0 modelScore:v33];

    v25 = v34;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v25;
}

- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handles:(id)handles reason:(id)reason reasonType:(id)type useGroupsWhenFindingRecipient:(BOOL)recipient groupName:(id)self0 image:(id)self1
{
  v17 = MEMORY[0x1E696AD98];
  imageCopy = image;
  nameCopy = name;
  typeCopy = type;
  reasonCopy = reason;
  handlesCopy = handles;
  iDCopy = iD;
  recipientsCopy = recipients;
  dCopy = d;
  v26 = [v17 numberWithDouble:-1.0];
  LOBYTE(v29) = recipient;
  v27 = [(_PSSuggestionProxy *)self initWithBundleID:dCopy interactionRecipients:recipientsCopy contactID:iDCopy handles:handlesCopy reason:reasonCopy reasonType:typeCopy useGroupsWhenFindingRecipient:v29 groupName:nameCopy image:imageCopy modelScore:v26];

  return v27;
}

- (_PSSuggestionProxy)initWithBundleID:(id)d interactionRecipients:(id)recipients contactID:(id)iD handles:(id)handles reason:(id)reason reasonType:(id)type useGroupsWhenFindingRecipient:(BOOL)recipient groupName:(id)self0 image:(id)self1 modelScore:(id)self2
{
  dCopy = d;
  recipientsCopy = recipients;
  iDCopy = iD;
  handlesCopy = handles;
  reasonCopy = reason;
  typeCopy = type;
  nameCopy = name;
  imageCopy = image;
  scoreCopy = score;
  v42.receiver = self;
  v42.super_class = _PSSuggestionProxy;
  v24 = [(_PSSuggestionProxy *)&v42 init];
  if (v24)
  {
    v25 = [dCopy copy];
    bundleID = v24->_bundleID;
    v24->_bundleID = v25;

    v27 = [recipientsCopy copy];
    interactionRecipients = v24->_interactionRecipients;
    v24->_interactionRecipients = v27;

    v29 = [reasonCopy copy];
    reason = v24->_reason;
    v24->_reason = v29;

    v31 = [typeCopy copy];
    reasonType = v24->_reasonType;
    v24->_reasonType = v31;

    v24->_useGroupsWhenFindingRecipient = recipient;
    v33 = [handlesCopy copy];
    handles = v24->_handles;
    v24->_handles = v33;

    handle = v24->_handle;
    v24->_handle = 0;

    objc_storeStrong(&v24->_contactID, iD);
    objc_storeStrong(&v24->_groupName, name);
    if (handlesCopy && [handlesCopy count] == 1)
    {
      v36 = [handlesCopy objectAtIndexedSubscript:0];
      v37 = v24->_handle;
      v24->_handle = v36;
    }

    objc_storeStrong(&v24->_image, image);
    objc_storeStrong(&v24->_modelScore, score);
  }

  return v24;
}

- (NSString)suggestionKey
{
  bundleID = [(_PSSuggestionProxy *)self bundleID];
  interactionRecipients = [(_PSSuggestionProxy *)self interactionRecipients];
  v5 = _PSSuggestionKey(bundleID, interactionRecipients);

  return v5;
}

- (unint64_t)hash
{
  v20 = *MEMORY[0x1E69E9840];
  handles = [(_PSSuggestionProxy *)self handles];

  if (handles)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    handles2 = [(_PSSuggestionProxy *)self handles];
    v5 = [handles2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(handles2);
          }

          v7 ^= [*(*(&v15 + 1) + 8 * i) hash];
        }

        v6 = [handles2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        bundleID = [(_PSSuggestionProxy *)self bundleID];
        if (!bundleID)
        {
          goto LABEL_14;
        }

        v9 = bundleID;
        interactionRecipients = [(_PSSuggestionProxy *)self interactionRecipients];
        if (interactionRecipients)
        {
          contactID5 = interactionRecipients;
          bundleID2 = [(_PSSuggestionProxy *)v7 bundleID];
          if (bundleID2)
          {
            v12 = bundleID2;
            interactionRecipients2 = [(_PSSuggestionProxy *)v7 interactionRecipients];

            if (interactionRecipients2)
            {
              bundleID3 = [(_PSSuggestionProxy *)self bundleID];
              bundleID4 = [(_PSSuggestionProxy *)v7 bundleID];
              if ([bundleID3 isEqualToString:bundleID4])
              {
                interactionRecipients3 = [(_PSSuggestionProxy *)self interactionRecipients];
                interactionRecipients4 = [(_PSSuggestionProxy *)v7 interactionRecipients];
LABEL_43:
                v45 = interactionRecipients4;
                v18 = [interactionRecipients3 isEqualToString:interactionRecipients4];

LABEL_45:
                goto LABEL_46;
              }

              goto LABEL_44;
            }

LABEL_14:
            contactID = [(_PSSuggestionProxy *)self contactID];
            if (contactID)
            {
              v20 = contactID;
              contactID2 = [(_PSSuggestionProxy *)v7 contactID];
              if (contactID2)
              {
                contactID5 = contactID2;
                contactID3 = [(_PSSuggestionProxy *)self contactID];
                contactID4 = [(_PSSuggestionProxy *)v7 contactID];
                v24 = [contactID3 isEqualToString:contactID4];

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

            bundleID3 = [(_PSSuggestionProxy *)self contactID];
            if (bundleID3)
            {
              contactID5 = [(_PSSuggestionProxy *)v7 contactID];
              if (!contactID5)
              {
                v18 = 0;
LABEL_46:

                goto LABEL_47;
              }
            }

            contactID6 = [(_PSSuggestionProxy *)v7 contactID];
            if (contactID6)
            {
              contactID7 = [(_PSSuggestionProxy *)self contactID];

              if (bundleID3)
              {
              }

              if (!contactID7)
              {
                goto LABEL_26;
              }
            }

            else
            {

              if (bundleID3)
              {
              }
            }

            bundleID3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            bundleID4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            handles = [(_PSSuggestionProxy *)self handles];
            if (!handles)
            {
              goto LABEL_51;
            }

            v28 = handles;
            handles2 = [(_PSSuggestionProxy *)v7 handles];

            if (!handles2)
            {
              goto LABEL_51;
            }

            handles3 = [(_PSSuggestionProxy *)self handles];
            v31 = [handles3 count];

            if (v31)
            {
              v32 = 0;
              do
              {
                handles4 = [(_PSSuggestionProxy *)self handles];
                v34 = [handles4 objectAtIndexedSubscript:v32];
                [bundleID3 addObject:v34];

                ++v32;
                handles5 = [(_PSSuggestionProxy *)self handles];
                v36 = [handles5 count];
              }

              while (v36 > v32);
            }

            handles6 = [(_PSSuggestionProxy *)v7 handles];
            v38 = [handles6 count];

            if (v38)
            {
              v39 = 0;
              do
              {
                handles7 = [(_PSSuggestionProxy *)v7 handles];
                v41 = [handles7 objectAtIndexedSubscript:v39];
                [bundleID4 addObject:v41];

                ++v39;
                handles8 = [(_PSSuggestionProxy *)v7 handles];
                v43 = [handles8 count];
              }

              while (v43 > v39);
            }

            v44 = [bundleID3 count];
            if (v44 == [bundleID4 count])
            {
              if ([bundleID3 isEqualToSet:bundleID4])
              {
LABEL_51:
                if ([bundleID3 count] && objc_msgSend(bundleID4, "count") && objc_msgSend(bundleID3, "isEqualToSet:", bundleID4))
                {
                  interactionRecipients3 = [(_PSSuggestionProxy *)self bundleID];
                  interactionRecipients4 = [(_PSSuggestionProxy *)v7 bundleID];
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

- (_PSSuggestionProxy)initWithCoder:(id)coder
{
  v29[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = _PSSuggestionProxy;
  v5 = [(_PSSuggestionProxy *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interactionRecipients"];
    interactionRecipients = v5->_interactionRecipients;
    v5->_interactionRecipients = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactID"];
    contactID = v5->_contactID;
    v5->_contactID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reasonType"];
    reasonType = v5->_reasonType;
    v5->_reasonType = v16;

    v5->_useGroupsWhenFindingRecipient = [coderCopy decodeBoolForKey:@"useGroupsWhenFindingRecipient"];
    v18 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v20 = [v18 setWithArray:v19];

    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"handles"];
    handles = v5->_handles;
    v5->_handles = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelScore"];
    modelScore = v5->_modelScore;
    v5->_modelScore = v23;

    v25 = v5;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_interactionRecipients forKey:@"interactionRecipients"];
  [coderCopy encodeObject:self->_contactID forKey:@"contactID"];
  [coderCopy encodeObject:self->_handle forKey:@"handle"];
  [coderCopy encodeObject:self->_reason forKey:@"reason"];
  [coderCopy encodeObject:self->_reasonType forKey:@"reasonType"];
  [coderCopy encodeBool:self->_useGroupsWhenFindingRecipient forKey:@"useGroupsWhenFindingRecipient"];
  [coderCopy encodeObject:self->_handles forKey:@"handles"];
  [coderCopy encodeObject:self->_modelScore forKey:@"modelScore"];
}

@end