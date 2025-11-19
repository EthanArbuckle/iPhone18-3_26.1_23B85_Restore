@interface WLKAppSettings
+ (BOOL)isExternalID:(id)a3 equalToExternalID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAppSettings:(id)a3;
- (WLKAppSettings)initWithChannelID:(id)a3 accessStatus:(unint64_t)a4 displayName:(id)a5 externalID:(id)a6;
- (WLKAppSettings)initWithCoder:(id)a3;
- (id)JSONDictionary;
- (id)_statusStrings;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLKAppSettings

- (WLKAppSettings)initWithChannelID:(id)a3 accessStatus:(unint64_t)a4 displayName:(id)a5 externalID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = WLKAppSettings;
  v13 = [(WLKAppSettings *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    channelID = v13->_channelID;
    v13->_channelID = v14;

    v13->_accessStatus = a4;
    v16 = [v11 copy];
    displayName = v13->_displayName;
    v13->_displayName = v16;

    v18 = [v12 copy];
    externalID = v13->_externalID;
    v13->_externalID = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKAppSettings *)self isEqualToAppSettings:v4];
  }

  return v5;
}

- (BOOL)isEqualToAppSettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    accessStatus = self->_accessStatus;
    if (accessStatus == [v4 accessStatus])
    {
      channelID = self->_channelID;
      v8 = [v5 channelID];
      if (![(NSString *)channelID isEqualToString:v8])
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      externalID = self->_externalID;
      v10 = [v5 externalID];
      v11 = v10;
      if (externalID && v10)
      {
        if (([(NSString *)externalID isEqual:v10]& 1) == 0)
        {
LABEL_7:
          v12 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      else if (externalID | v10)
      {
        goto LABEL_7;
      }

      displayName = self->_displayName;
      v14 = [v5 displayName];
      v15 = v14;
      if (displayName && v14)
      {
        v12 = [(NSString *)displayName isEqual:v14];
      }

      else
      {
        v12 = (displayName | v14) == 0;
      }

      goto LABEL_16;
    }
  }

  v12 = 0;
LABEL_18:

  return v12;
}

+ (BOOL)isExternalID:(id)a3 equalToExternalID:(id)a4
{
  if (a3 && a4)
  {
    return [a3 isEqual:a4];
  }

  else
  {
    return (a3 | a4) == 0;
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
  v6 = [(WLKAppSettings *)self _statusStrings];
  v7 = [v6 objectAtIndex:self->_accessStatus];
  v8 = [v3 stringWithFormat:@"%@ channelID:%@ displayName:%@; externalID:%@; accessStatus:%@", v4, v10, externalID, v7];;

  return v8;
}

- (id)JSONDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_channelID forKeyedSubscript:@"channelID"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_accessStatus];
  [v3 setObject:v4 forKeyedSubscript:@"accessStatus"];

  v5 = [(WLKAppSettings *)self _statusStrings];
  v6 = [v5 objectAtIndex:self->_accessStatus];
  [v3 setObject:v6 forKeyedSubscript:@"accessStatusString"];

  if ([(NSString *)self->_externalID length])
  {
    [v3 setObject:self->_externalID forKeyedSubscript:@"externalID"];
  }

  v7 = [v3 copy];

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

- (WLKAppSettings)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [(WLKAppSettings *)self init];
    if (v5)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppSettings.channelID"];
      channelID = v5->_channelID;
      v5->_channelID = v6;

      v5->_accessStatus = [v4 decodeIntegerForKey:@"WLKAppSettings.accessStatus"];
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppSettings.displayName"];
      displayName = v5->_displayName;
      v5->_displayName = v8;

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppSettings.externalID"];
      externalID = v5->_externalID;
      v5->_externalID = v10;

      v5->_obsolete = [v4 decodeBoolForKey:@"WLKAppSettings.obsolete"];
    }

    self = v5;
    v12 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeObject:self->_channelID forKey:@"WLKAppSettings.channelID"];
  [v4 encodeInteger:self->_accessStatus forKey:@"WLKAppSettings.accessStatus"];
  [v4 encodeObject:self->_displayName forKey:@"WLKAppSettings.displayName"];
  [v4 encodeObject:self->_externalID forKey:@"WLKAppSettings.externalID"];
  [v4 encodeBool:self->_obsolete forKey:@"WLKAppSettings.obsolete"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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