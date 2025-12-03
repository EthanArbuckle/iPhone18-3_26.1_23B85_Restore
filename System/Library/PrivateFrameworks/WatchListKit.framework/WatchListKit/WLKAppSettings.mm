@interface WLKAppSettings
+ (BOOL)isExternalID:(id)d equalToExternalID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAppSettings:(id)settings;
- (WLKAppSettings)initWithChannelID:(id)d accessStatus:(unint64_t)status displayName:(id)name externalID:(id)iD;
- (WLKAppSettings)initWithCoder:(id)coder;
- (id)JSONDictionary;
- (id)_statusStrings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WLKAppSettings

- (WLKAppSettings)initWithChannelID:(id)d accessStatus:(unint64_t)status displayName:(id)name externalID:(id)iD
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  v21.receiver = self;
  v21.super_class = WLKAppSettings;
  v13 = [(WLKAppSettings *)&v21 init];
  if (v13)
  {
    v14 = [dCopy copy];
    channelID = v13->_channelID;
    v13->_channelID = v14;

    v13->_accessStatus = status;
    v16 = [nameCopy copy];
    displayName = v13->_displayName;
    v13->_displayName = v16;

    v18 = [iDCopy copy];
    externalID = v13->_externalID;
    v13->_externalID = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKAppSettings *)self isEqualToAppSettings:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAppSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    accessStatus = self->_accessStatus;
    if (accessStatus == [settingsCopy accessStatus])
    {
      channelID = self->_channelID;
      channelID = [v5 channelID];
      if (![(NSString *)channelID isEqualToString:channelID])
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      externalID = self->_externalID;
      externalID = [v5 externalID];
      v11 = externalID;
      if (externalID && externalID)
      {
        if (([(NSString *)externalID isEqual:externalID]& 1) == 0)
        {
LABEL_7:
          v12 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      else if (externalID | externalID)
      {
        goto LABEL_7;
      }

      displayName = self->_displayName;
      displayName = [v5 displayName];
      v15 = displayName;
      if (displayName && displayName)
      {
        v12 = [(NSString *)displayName isEqual:displayName];
      }

      else
      {
        v12 = (displayName | displayName) == 0;
      }

      goto LABEL_16;
    }
  }

  v12 = 0;
LABEL_18:

  return v12;
}

+ (BOOL)isExternalID:(id)d equalToExternalID:(id)iD
{
  if (d && iD)
  {
    return [d isEqual:iD];
  }

  else
  {
    return (d | iD) == 0;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_channelID hash];
  v4 = [(NSString *)self->_externalID hash]^ v3;
  return v4 ^ [(NSString *)self->_displayName hash]^ self->_accessStatus;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = WLKAppSettings;
  v4 = [(WLKAppSettings *)&v11 description];
  v10 = *&self->_channelID;
  externalID = self->_externalID;
  _statusStrings = [(WLKAppSettings *)self _statusStrings];
  v7 = [_statusStrings objectAtIndex:self->_accessStatus];
  v8 = [v3 stringWithFormat:@"%@ channelID:%@ displayName:%@; externalID:%@; accessStatus:%@", v4, v10, externalID, v7];;

  return v8;
}

- (id)JSONDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_channelID forKeyedSubscript:@"channelID"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_accessStatus];
  [dictionary setObject:v4 forKeyedSubscript:@"accessStatus"];

  _statusStrings = [(WLKAppSettings *)self _statusStrings];
  v6 = [_statusStrings objectAtIndex:self->_accessStatus];
  [dictionary setObject:v6 forKeyedSubscript:@"accessStatusString"];

  if ([(NSString *)self->_externalID length])
  {
    [dictionary setObject:self->_externalID forKeyedSubscript:@"externalID"];
  }

  v7 = [dictionary copy];

  return v7;
}

- (id)_statusStrings
{
  if (_statusStrings_onceToken != -1)
  {
    [WLKAppSettings _statusStrings];
  }

  v3 = _statusStrings___statusStrings;

  return v3;
}

void __32__WLKAppSettings__statusStrings__block_invoke()
{
  v0 = _statusStrings___statusStrings;
  _statusStrings___statusStrings = &unk_288222F78;
}

- (WLKAppSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [(WLKAppSettings *)self init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppSettings.channelID"];
      channelID = v5->_channelID;
      v5->_channelID = v6;

      v5->_accessStatus = [coderCopy decodeIntegerForKey:@"WLKAppSettings.accessStatus"];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppSettings.displayName"];
      displayName = v5->_displayName;
      v5->_displayName = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppSettings.externalID"];
      externalID = v5->_externalID;
      v5->_externalID = v10;

      v5->_obsolete = [coderCopy decodeBoolForKey:@"WLKAppSettings.obsolete"];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeObject:self->_channelID forKey:@"WLKAppSettings.channelID"];
  [coderCopy encodeInteger:self->_accessStatus forKey:@"WLKAppSettings.accessStatus"];
  [coderCopy encodeObject:self->_displayName forKey:@"WLKAppSettings.displayName"];
  [coderCopy encodeObject:self->_externalID forKey:@"WLKAppSettings.externalID"];
  [coderCopy encodeBool:self->_obsolete forKey:@"WLKAppSettings.obsolete"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_channelID copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(NSString *)self->_displayName copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [(NSString *)self->_externalID copy];
  v10 = *(v4 + 40);
  *(v4 + 40) = v9;

  *(v4 + 32) = self->_accessStatus;
  *(v4 + 8) = self->_obsolete;
  return v4;
}

@end