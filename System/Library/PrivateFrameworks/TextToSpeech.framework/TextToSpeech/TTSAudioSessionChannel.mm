@interface TTSAudioSessionChannel
+ (id)channelWithChannel:(id)channel;
+ (id)convertChannels:(id)channels;
- (BOOL)isEqual:(id)equal;
- (NSString)channelName;
- (NSString)owningPortUID;
- (TTSAudioSessionChannel)init;
- (id)description;
- (unint64_t)channelNumber;
- (unsigned)channelLabel;
- (void)dealloc;
@end

@implementation TTSAudioSessionChannel

+ (id)channelWithChannel:(id)channel
{
  channelCopy = channel;
  v4 = objc_opt_new();
  objc_msgSend_setChannel_(v4, v5, channelCopy, v6, v7);

  return v4;
}

+ (id)convertChannels:(id)channels
{
  v40 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6, v7);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = channelsCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v35, v39, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v36;
    do
    {
      v18 = 0;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v35 + 1) + 8 * v18);
        v20 = objc_msgSend_channel(v19, v12, v13, v14, v15);

        v25 = objc_msgSend_channel(v19, v21, v22, v23, v24);
        v29 = v25;
        if (v20)
        {
          objc_msgSend_addObject_(v8, v26, v25, v27, v28);
LABEL_8:

          goto LABEL_10;
        }

        if (!v29)
        {
          v29 = AXTTSLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            sub_1A9578B50(&v33, v34, v29);
          }

          goto LABEL_8;
        }

LABEL_10:
        ++v18;
      }

      while (v16 != v18);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v35, v39, 16);
      v16 = v30;
    }

    while (v30);
  }

  v31 = *MEMORY[0x1E69E9840];

  return v8;
}

- (TTSAudioSessionChannel)init
{
  v6.receiver = self;
  v6.super_class = TTSAudioSessionChannel;
  v2 = [(TTSAudioSessionChannel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_channelNumber = 0x7FFFFFFFFFFFFFFFLL;
    v2->_channelLabel = -1;
    v4 = v2;
  }

  return v3;
}

- (unsigned)channelLabel
{
  if (self->_channelLabel != -1)
  {
    return self->_channelLabel;
  }

  v6 = objc_msgSend_channel(self, a2, v2, v3, v4);
  v11 = objc_msgSend_channelLabel(v6, v7, v8, v9, v10);

  return v11;
}

- (unint64_t)channelNumber
{
  if (self->_channelNumber != 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_channelNumber;
  }

  v5 = objc_msgSend_channel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_channelNumber(v5, v6, v7, v8, v9);

  return v10;
}

- (NSString)channelName
{
  channelName = self->_channelName;
  if (channelName)
  {
    v6 = channelName;
  }

  else
  {
    v7 = objc_msgSend_channel(self, a2, v2, v3, v4);
    v6 = objc_msgSend_channelName(v7, v8, v9, v10, v11);
  }

  return v6;
}

- (NSString)owningPortUID
{
  owningPortUID = self->_owningPortUID;
  if (owningPortUID)
  {
    v6 = owningPortUID;
  }

  else
  {
    v7 = objc_msgSend_channel(self, a2, v2, v3, v4);
    v6 = objc_msgSend_owningPortUID(v7, v8, v9, v10, v11);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_channelNumber == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_channelNumber(equalCopy, v5, v6, v7, v8) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = objc_msgSend_channel(self, v5, v6, v7, v8);
      v14 = objc_msgSend_channel(equalCopy, v10, v11, v12, v13);
      isEqual = objc_msgSend_isEqual_(v9, v15, v14, v16, v17);
    }

    else
    {
      channelNumber = self->_channelNumber;
      isEqual = channelNumber == objc_msgSend_channelNumber(equalCopy, v5, v6, v7, v8);
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)dealloc
{
  objc_msgSend_setChannel_(self, a2, 0, v2, v3);
  v5.receiver = self;
  v5.super_class = TTSAudioSessionChannel;
  [(TTSAudioSessionChannel *)&v5 dealloc];
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_channel(self, a2, v2, v3, v4);
  v11 = objc_msgSend_description(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_stringWithFormat_(v5, v12, @"TTSAudioSessionChannel -> %@", v13, v14, v11);

  return v15;
}

@end