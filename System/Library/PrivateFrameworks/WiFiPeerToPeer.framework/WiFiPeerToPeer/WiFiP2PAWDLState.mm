@interface WiFiP2PAWDLState
- (BOOL)isEqual:(id)equal;
- (WiFiP2PAWDLState)initWithCoder:(id)coder;
- (WiFiP2PAWDLState)initWithInterfaceName:(id)name supportsSoloMode:(BOOL)mode supportsDataTransfer:(BOOL)transfer channelSequence:(id)sequence isEnabled:(BOOL)enabled substate:(unsigned int)substate macAddress:(id)address peerMasterChannel:(id)self0 peerPrimaryPreferredChannel:(id)self1 peerSecondaryPreferredChannel:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiP2PAWDLState

- (WiFiP2PAWDLState)initWithInterfaceName:(id)name supportsSoloMode:(BOOL)mode supportsDataTransfer:(BOOL)transfer channelSequence:(id)sequence isEnabled:(BOOL)enabled substate:(unsigned int)substate macAddress:(id)address peerMasterChannel:(id)self0 peerPrimaryPreferredChannel:(id)self1 peerSecondaryPreferredChannel:(id)self2
{
  nameCopy = name;
  sequenceCopy = sequence;
  addressCopy = address;
  channelCopy = channel;
  preferredChannelCopy = preferredChannel;
  secondaryPreferredChannelCopy = secondaryPreferredChannel;
  v38.receiver = self;
  v38.super_class = WiFiP2PAWDLState;
  v23 = [(WiFiP2PAWDLState *)&v38 init];
  if (v23)
  {
    v24 = [nameCopy copy];
    interfaceName = v23->_interfaceName;
    v23->_interfaceName = v24;

    v23->_supportsSoloMode = mode;
    v23->_supportsDataTransfer = transfer;
    v26 = [sequenceCopy copy];
    channelSequence = v23->_channelSequence;
    v23->_channelSequence = v26;

    v23->_isEnabled = enabled;
    v23->_substate = substate;
    v28 = [addressCopy copy];
    macAddress = v23->_macAddress;
    v23->_macAddress = v28;

    v30 = [channelCopy copy];
    peerMasterChannel = v23->_peerMasterChannel;
    v23->_peerMasterChannel = v30;

    v32 = [preferredChannelCopy copy];
    peerPrimaryPreferredChannel = v23->_peerPrimaryPreferredChannel;
    v23->_peerPrimaryPreferredChannel = v32;

    v34 = [secondaryPreferredChannelCopy copy];
    peerSecondaryPreferredChannel = v23->_peerSecondaryPreferredChannel;
    v23->_peerSecondaryPreferredChannel = v34;
  }

  return v23;
}

- (WiFiP2PAWDLState)initWithCoder:(id)coder
{
  v29[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"AWDLState.channelSequenceKey"];

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
            selfCopy = 0;
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

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLState.interfaceNameKey"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLState.macAddressKey"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLState.peerMasterChannelKey"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLState.peerPrimaryPreferredChannelKey"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLState.peerSecondaryPreferredChannelKey"];
    v20 = v19;
    selfCopy = 0;
    if (v15 && v16 && v17 && v18 && v19)
    {
      self = -[WiFiP2PAWDLState initWithInterfaceName:supportsSoloMode:supportsDataTransfer:channelSequence:isEnabled:substate:macAddress:peerMasterChannel:peerPrimaryPreferredChannel:peerSecondaryPreferredChannel:](self, "initWithInterfaceName:supportsSoloMode:supportsDataTransfer:channelSequence:isEnabled:substate:macAddress:peerMasterChannel:peerPrimaryPreferredChannel:peerSecondaryPreferredChannel:", v15, [coderCopy decodeBoolForKey:@"AWDLState.supportsSoloModeKey"], objc_msgSend(coderCopy, "decodeBoolForKey:", @"AWDLState.supportsDataTransferKey"), v9, objc_msgSend(coderCopy, "decodeBoolForKey:", @"AWDLState.isEnabledKey"), objc_msgSend(coderCopy, "decodeInt32ForKey:", @"AWDLState.substateKey"), v16, v17, v18, v19);
      selfCopy = self;
    }

LABEL_20:
  }

  else
  {
    selfCopy = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  interfaceName = [(WiFiP2PAWDLState *)self interfaceName];
  [coderCopy encodeObject:interfaceName forKey:@"AWDLState.interfaceNameKey"];

  [coderCopy encodeBool:-[WiFiP2PAWDLState supportsSoloMode](self forKey:{"supportsSoloMode"), @"AWDLState.supportsSoloModeKey"}];
  [coderCopy encodeBool:-[WiFiP2PAWDLState supportsDataTransfer](self forKey:{"supportsDataTransfer"), @"AWDLState.supportsDataTransferKey"}];
  channelSequence = [(WiFiP2PAWDLState *)self channelSequence];
  [coderCopy encodeObject:channelSequence forKey:@"AWDLState.channelSequenceKey"];

  [coderCopy encodeBool:-[WiFiP2PAWDLState isEnabled](self forKey:{"isEnabled"), @"AWDLState.isEnabledKey"}];
  [coderCopy encodeInt32:-[WiFiP2PAWDLState substate](self forKey:{"substate"), @"AWDLState.substateKey"}];
  macAddress = [(WiFiP2PAWDLState *)self macAddress];
  [coderCopy encodeObject:macAddress forKey:@"AWDLState.macAddressKey"];

  peerMasterChannel = [(WiFiP2PAWDLState *)self peerMasterChannel];
  [coderCopy encodeObject:peerMasterChannel forKey:@"AWDLState.peerMasterChannelKey"];

  peerPrimaryPreferredChannel = [(WiFiP2PAWDLState *)self peerPrimaryPreferredChannel];
  [coderCopy encodeObject:peerPrimaryPreferredChannel forKey:@"AWDLState.peerPrimaryPreferredChannelKey"];

  peerSecondaryPreferredChannel = [(WiFiP2PAWDLState *)self peerSecondaryPreferredChannel];
  [coderCopy encodeObject:peerSecondaryPreferredChannel forKey:@"AWDLState.peerSecondaryPreferredChannelKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  interfaceName = [(WiFiP2PAWDLState *)self interfaceName];
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

  channelSequence = [(WiFiP2PAWDLState *)self channelSequence];
  v8 = [v3 stringWithFormat:@"<%@: %s%s ChannelSequence=%@>", interfaceName, v5, v6, channelSequence];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = 0;
      v5 = 0;
      goto LABEL_24;
    }

    v5 = equalCopy;
    interfaceName = [(WiFiP2PAWDLState *)self interfaceName];
    interfaceName2 = [(WiFiP2PAWDLState *)v5 interfaceName];
    if ([interfaceName isEqual:interfaceName2])
    {
      supportsSoloMode = [(WiFiP2PAWDLState *)self supportsSoloMode];
      if (supportsSoloMode == [(WiFiP2PAWDLState *)v5 supportsSoloMode])
      {
        channelSequence = [(WiFiP2PAWDLState *)self channelSequence];
        channelSequence2 = [(WiFiP2PAWDLState *)v5 channelSequence];
        if ([channelSequence isEqual:channelSequence2])
        {
          isEnabled = [(WiFiP2PAWDLState *)self isEnabled];
          if (isEnabled == [(WiFiP2PAWDLState *)v5 isEnabled])
          {
            supportsDataTransfer = [(WiFiP2PAWDLState *)self supportsDataTransfer];
            if (supportsDataTransfer == [(WiFiP2PAWDLState *)v5 supportsDataTransfer])
            {
              substate = [(WiFiP2PAWDLState *)self substate];
              if (substate == [(WiFiP2PAWDLState *)v5 substate])
              {
                macAddress = [(WiFiP2PAWDLState *)self macAddress];
                macAddress2 = [(WiFiP2PAWDLState *)v5 macAddress];
                if ([macAddress isEqual:macAddress2])
                {
                  v31 = macAddress;
                  peerMasterChannel = [(WiFiP2PAWDLState *)self peerMasterChannel];
                  peerMasterChannel2 = [(WiFiP2PAWDLState *)v5 peerMasterChannel];
                  if ([peerMasterChannel isEqual:peerMasterChannel2])
                  {
                    v28 = peerMasterChannel2;
                    v29 = macAddress2;
                    v30 = peerMasterChannel;
                    peerPrimaryPreferredChannel = [(WiFiP2PAWDLState *)self peerPrimaryPreferredChannel];
                    peerPrimaryPreferredChannel2 = [(WiFiP2PAWDLState *)v5 peerPrimaryPreferredChannel];
                    v20 = peerPrimaryPreferredChannel;
                    v21 = peerPrimaryPreferredChannel;
                    v22 = peerPrimaryPreferredChannel2;
                    if ([v21 isEqual:?])
                    {
                      peerSecondaryPreferredChannel = [(WiFiP2PAWDLState *)self peerSecondaryPreferredChannel];
                      peerSecondaryPreferredChannel2 = [(WiFiP2PAWDLState *)v5 peerSecondaryPreferredChannel];
                      v27 = [peerSecondaryPreferredChannel isEqual:peerSecondaryPreferredChannel2];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v16 = [WiFiP2PAWDLState alloc];
  interfaceName = [(WiFiP2PAWDLState *)self interfaceName];
  supportsSoloMode = [(WiFiP2PAWDLState *)self supportsSoloMode];
  supportsDataTransfer = [(WiFiP2PAWDLState *)self supportsDataTransfer];
  channelSequence = [(WiFiP2PAWDLState *)self channelSequence];
  isEnabled = [(WiFiP2PAWDLState *)self isEnabled];
  substate = [(WiFiP2PAWDLState *)self substate];
  macAddress = [(WiFiP2PAWDLState *)self macAddress];
  peerMasterChannel = [(WiFiP2PAWDLState *)self peerMasterChannel];
  peerPrimaryPreferredChannel = [(WiFiP2PAWDLState *)self peerPrimaryPreferredChannel];
  peerSecondaryPreferredChannel = [(WiFiP2PAWDLState *)self peerSecondaryPreferredChannel];
  v14 = [(WiFiP2PAWDLState *)v16 initWithInterfaceName:interfaceName supportsSoloMode:supportsSoloMode supportsDataTransfer:supportsDataTransfer channelSequence:channelSequence isEnabled:isEnabled substate:substate macAddress:macAddress peerMasterChannel:peerMasterChannel peerPrimaryPreferredChannel:peerPrimaryPreferredChannel peerSecondaryPreferredChannel:peerSecondaryPreferredChannel];

  return v14;
}

@end