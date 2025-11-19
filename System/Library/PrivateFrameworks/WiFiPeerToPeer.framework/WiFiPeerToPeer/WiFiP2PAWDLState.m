@interface WiFiP2PAWDLState
- (BOOL)isEqual:(id)a3;
- (WiFiP2PAWDLState)initWithCoder:(id)a3;
- (WiFiP2PAWDLState)initWithInterfaceName:(id)a3 supportsSoloMode:(BOOL)a4 supportsDataTransfer:(BOOL)a5 channelSequence:(id)a6 isEnabled:(BOOL)a7 substate:(unsigned int)a8 macAddress:(id)a9 peerMasterChannel:(id)a10 peerPrimaryPreferredChannel:(id)a11 peerSecondaryPreferredChannel:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiP2PAWDLState

- (WiFiP2PAWDLState)initWithInterfaceName:(id)a3 supportsSoloMode:(BOOL)a4 supportsDataTransfer:(BOOL)a5 channelSequence:(id)a6 isEnabled:(BOOL)a7 substate:(unsigned int)a8 macAddress:(id)a9 peerMasterChannel:(id)a10 peerPrimaryPreferredChannel:(id)a11 peerSecondaryPreferredChannel:(id)a12
{
  v17 = a3;
  v18 = a6;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v38.receiver = self;
  v38.super_class = WiFiP2PAWDLState;
  v23 = [(WiFiP2PAWDLState *)&v38 init];
  if (v23)
  {
    v24 = [v17 copy];
    interfaceName = v23->_interfaceName;
    v23->_interfaceName = v24;

    v23->_supportsSoloMode = a4;
    v23->_supportsDataTransfer = a5;
    v26 = [v18 copy];
    channelSequence = v23->_channelSequence;
    v23->_channelSequence = v26;

    v23->_isEnabled = a7;
    v23->_substate = a8;
    v28 = [v19 copy];
    macAddress = v23->_macAddress;
    v23->_macAddress = v28;

    v30 = [v20 copy];
    peerMasterChannel = v23->_peerMasterChannel;
    v23->_peerMasterChannel = v30;

    v32 = [v21 copy];
    peerPrimaryPreferredChannel = v23->_peerPrimaryPreferredChannel;
    v23->_peerPrimaryPreferredChannel = v32;

    v34 = [v22 copy];
    peerSecondaryPreferredChannel = v23->_peerSecondaryPreferredChannel;
    v23->_peerSecondaryPreferredChannel = v34;
  }

  return v23;
}

- (WiFiP2PAWDLState)initWithCoder:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"AWDLState.channelSequenceKey"];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = 0;
            v15 = v9;
            goto LABEL_20;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLState.interfaceNameKey"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLState.macAddressKey"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLState.peerMasterChannelKey"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLState.peerPrimaryPreferredChannelKey"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLState.peerSecondaryPreferredChannelKey"];
    v20 = v19;
    v21 = 0;
    if (v15 && v16 && v17 && v18 && v19)
    {
      self = -[WiFiP2PAWDLState initWithInterfaceName:supportsSoloMode:supportsDataTransfer:channelSequence:isEnabled:substate:macAddress:peerMasterChannel:peerPrimaryPreferredChannel:peerSecondaryPreferredChannel:](self, "initWithInterfaceName:supportsSoloMode:supportsDataTransfer:channelSequence:isEnabled:substate:macAddress:peerMasterChannel:peerPrimaryPreferredChannel:peerSecondaryPreferredChannel:", v15, [v4 decodeBoolForKey:@"AWDLState.supportsSoloModeKey"], objc_msgSend(v4, "decodeBoolForKey:", @"AWDLState.supportsDataTransferKey"), v9, objc_msgSend(v4, "decodeBoolForKey:", @"AWDLState.isEnabledKey"), objc_msgSend(v4, "decodeInt32ForKey:", @"AWDLState.substateKey"), v16, v17, v18, v19);
      v21 = self;
    }

LABEL_20:
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiP2PAWDLState *)self interfaceName];
  [v4 encodeObject:v5 forKey:@"AWDLState.interfaceNameKey"];

  [v4 encodeBool:-[WiFiP2PAWDLState supportsSoloMode](self forKey:{"supportsSoloMode"), @"AWDLState.supportsSoloModeKey"}];
  [v4 encodeBool:-[WiFiP2PAWDLState supportsDataTransfer](self forKey:{"supportsDataTransfer"), @"AWDLState.supportsDataTransferKey"}];
  v6 = [(WiFiP2PAWDLState *)self channelSequence];
  [v4 encodeObject:v6 forKey:@"AWDLState.channelSequenceKey"];

  [v4 encodeBool:-[WiFiP2PAWDLState isEnabled](self forKey:{"isEnabled"), @"AWDLState.isEnabledKey"}];
  [v4 encodeInt32:-[WiFiP2PAWDLState substate](self forKey:{"substate"), @"AWDLState.substateKey"}];
  v7 = [(WiFiP2PAWDLState *)self macAddress];
  [v4 encodeObject:v7 forKey:@"AWDLState.macAddressKey"];

  v8 = [(WiFiP2PAWDLState *)self peerMasterChannel];
  [v4 encodeObject:v8 forKey:@"AWDLState.peerMasterChannelKey"];

  v9 = [(WiFiP2PAWDLState *)self peerPrimaryPreferredChannel];
  [v4 encodeObject:v9 forKey:@"AWDLState.peerPrimaryPreferredChannelKey"];

  v10 = [(WiFiP2PAWDLState *)self peerSecondaryPreferredChannel];
  [v4 encodeObject:v10 forKey:@"AWDLState.peerSecondaryPreferredChannelKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WiFiP2PAWDLState *)self interfaceName];
  if ([(WiFiP2PAWDLState *)self isEnabled])
  {
    v5 = "enabled";
  }

  else
  {
    v5 = "disabled";
  }

  if ([(WiFiP2PAWDLState *)self supportsSoloMode])
  {
    v6 = " supportsSoloMode";
  }

  else
  {
    v6 = "";
  }

  v7 = [(WiFiP2PAWDLState *)self channelSequence];
  v8 = [v3 stringWithFormat:@"<%@: %s%s ChannelSequence=%@>", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = 0;
      v5 = 0;
      goto LABEL_24;
    }

    v5 = v4;
    v6 = [(WiFiP2PAWDLState *)self interfaceName];
    v7 = [(WiFiP2PAWDLState *)v5 interfaceName];
    if ([v6 isEqual:v7])
    {
      v8 = [(WiFiP2PAWDLState *)self supportsSoloMode];
      if (v8 == [(WiFiP2PAWDLState *)v5 supportsSoloMode])
      {
        v9 = [(WiFiP2PAWDLState *)self channelSequence];
        v10 = [(WiFiP2PAWDLState *)v5 channelSequence];
        if ([v9 isEqual:v10])
        {
          v11 = [(WiFiP2PAWDLState *)self isEnabled];
          if (v11 == [(WiFiP2PAWDLState *)v5 isEnabled])
          {
            v12 = [(WiFiP2PAWDLState *)self supportsDataTransfer];
            if (v12 == [(WiFiP2PAWDLState *)v5 supportsDataTransfer])
            {
              v13 = [(WiFiP2PAWDLState *)self substate];
              if (v13 == [(WiFiP2PAWDLState *)v5 substate])
              {
                v14 = [(WiFiP2PAWDLState *)self macAddress];
                v15 = [(WiFiP2PAWDLState *)v5 macAddress];
                if ([v14 isEqual:v15])
                {
                  v31 = v14;
                  v16 = [(WiFiP2PAWDLState *)self peerMasterChannel];
                  v17 = [(WiFiP2PAWDLState *)v5 peerMasterChannel];
                  if ([v16 isEqual:v17])
                  {
                    v28 = v17;
                    v29 = v15;
                    v30 = v16;
                    v18 = [(WiFiP2PAWDLState *)self peerPrimaryPreferredChannel];
                    v19 = [(WiFiP2PAWDLState *)v5 peerPrimaryPreferredChannel];
                    v20 = v18;
                    v21 = v18;
                    v22 = v19;
                    if ([v21 isEqual:?])
                    {
                      v23 = [(WiFiP2PAWDLState *)self peerSecondaryPreferredChannel];
                      v24 = [(WiFiP2PAWDLState *)v5 peerSecondaryPreferredChannel];
                      v27 = [v23 isEqual:v24];

                      if ((v27 & 1) == 0)
                      {
                        goto LABEL_23;
                      }

                      goto LABEL_15;
                    }
                  }

                  else
                  {
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }
    }

LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  v5 = 0;
LABEL_15:
  v25 = 1;
LABEL_24:

  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = [WiFiP2PAWDLState alloc];
  v4 = [(WiFiP2PAWDLState *)self interfaceName];
  v5 = [(WiFiP2PAWDLState *)self supportsSoloMode];
  v6 = [(WiFiP2PAWDLState *)self supportsDataTransfer];
  v7 = [(WiFiP2PAWDLState *)self channelSequence];
  v8 = [(WiFiP2PAWDLState *)self isEnabled];
  v9 = [(WiFiP2PAWDLState *)self substate];
  v10 = [(WiFiP2PAWDLState *)self macAddress];
  v11 = [(WiFiP2PAWDLState *)self peerMasterChannel];
  v12 = [(WiFiP2PAWDLState *)self peerPrimaryPreferredChannel];
  v13 = [(WiFiP2PAWDLState *)self peerSecondaryPreferredChannel];
  v14 = [(WiFiP2PAWDLState *)v16 initWithInterfaceName:v4 supportsSoloMode:v5 supportsDataTransfer:v6 channelSequence:v7 isEnabled:v8 substate:v9 macAddress:v10 peerMasterChannel:v11 peerPrimaryPreferredChannel:v12 peerSecondaryPreferredChannel:v13];

  return v14;
}

@end