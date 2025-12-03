@interface _UIStatusBarDataCellularEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataCellularEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataCellularEntry

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataCellularEntry;
  v3 = *&self->_wifiCallingEnabled ^ [(_UIStatusBarDataNetworkEntry *)&v7 hash];
  v4 = v3 ^ [self->_type hash];
  v5 = [(NSString *)self->_string hash];
  return v4 ^ v5 ^ [(NSString *)self->_crossfadeString hash]^ LOBYTE(self->super._status) ^ BYTE1(self->super._status) ^ BYTE2(self->super._status) ^ BYTE3(self->super._status) ^ BYTE4(self->super._status);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataCellularEntry;
  v4 = [(_UIStatusBarDataNetworkEntry *)&v6 copyWithZone:zone];
  [v4 setType:*&self->_wifiCallingEnabled];
  [v4 setString:self->_type];
  [v4 setCrossfadeString:self->_string];
  [v4 setBadgeString:self->_crossfadeString];
  [v4 setWifiCallingEnabled:LOBYTE(self->super._status)];
  [v4 setCallForwardingEnabled:BYTE1(self->super._status)];
  [v4 setShowsSOSWhenDisabled:BYTE2(self->super._status)];
  [v4 setSosAvailable:BYTE3(self->super._status)];
  [v4 setIsBootstrapCellular:BYTE4(self->super._status)];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataCellularEntry;
  coderCopy = coder;
  [(_UIStatusBarDataNetworkEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:*&self->_wifiCallingEnabled forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_type forKey:@"string"];
  [coderCopy encodeObject:self->_string forKey:@"crossfadeString"];
  [coderCopy encodeObject:self->_crossfadeString forKey:@"badgeString"];
  [coderCopy encodeBool:LOBYTE(self->super._status) forKey:@"wifiCallingEnabled"];
  [coderCopy encodeBool:BYTE1(self->super._status) forKey:@"callForwardingEnabled"];
  [coderCopy encodeBool:BYTE2(self->super._status) forKey:@"showsSOSWhenDisabled"];
  [coderCopy encodeBool:BYTE3(self->super._status) forKey:@"sosAvailable"];
  [coderCopy encodeBool:BYTE4(self->super._status) forKey:@"isBootstrapCellular"];
}

- (_UIStatusBarDataCellularEntry)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = _UIStatusBarDataCellularEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataNetworkEntry *)&v10 initWithCoder:coderCopy];
  -[_UIStatusBarDataCellularEntry setType:](v4, "setType:", [coderCopy decodeIntegerForKey:{@"type", v10.receiver, v10.super_class}]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
  [(_UIStatusBarDataCellularEntry *)v4 setString:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crossfadeString"];
  [(_UIStatusBarDataCellularEntry *)v4 setCrossfadeString:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"badgeString"];
  [(_UIStatusBarDataCellularEntry *)v4 setBadgeString:v7];

  -[_UIStatusBarDataCellularEntry setWifiCallingEnabled:](v4, "setWifiCallingEnabled:", [coderCopy decodeBoolForKey:@"wifiCallingEnabled"]);
  -[_UIStatusBarDataCellularEntry setCallForwardingEnabled:](v4, "setCallForwardingEnabled:", [coderCopy decodeBoolForKey:@"callForwardingEnabled"]);
  -[_UIStatusBarDataCellularEntry setShowsSOSWhenDisabled:](v4, "setShowsSOSWhenDisabled:", [coderCopy decodeBoolForKey:@"showsSOSWhenDisabled"]);
  -[_UIStatusBarDataCellularEntry setSosAvailable:](v4, "setSosAvailable:", [coderCopy decodeBoolForKey:@"sosAvailable"]);
  v8 = [coderCopy decodeBoolForKey:@"isBootstrapCellular"];

  [(_UIStatusBarDataCellularEntry *)v4 setIsBootstrapCellular:v8];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v31.receiver = self;
  v31.super_class = _UIStatusBarDataCellularEntry;
  if ([(_UIStatusBarDataNetworkEntry *)&v31 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      v6 = *&self->_wifiCallingEnabled;
      if (v6 == [v5 type])
      {
        type = self->_type;
        string = [v5 string];
        v9 = type;
        v10 = string;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          if (v9)
          {
            v12 = v10 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            v13 = 0;
            v14 = v10;
            goto LABEL_38;
          }

          v15 = [(NSString *)v9 isEqual:v10];

          if (!v15)
          {
            v13 = 0;
LABEL_40:

            goto LABEL_41;
          }
        }

        string = self->_string;
        crossfadeString = [v5 crossfadeString];
        v14 = string;
        v18 = crossfadeString;
        v9 = v18;
        if (v14 == v18)
        {
        }

        else
        {
          if (!v14 || !v18)
          {

            goto LABEL_37;
          }

          v19 = [(NSString *)v14 isEqual:v18];

          if (!v19)
          {
            v13 = 0;
LABEL_39:

            goto LABEL_40;
          }
        }

        crossfadeString = self->_crossfadeString;
        badgeString = [v5 badgeString];
        v22 = crossfadeString;
        v23 = badgeString;
        v14 = v23;
        if (v22 == v23)
        {

LABEL_31:
          status_low = LOBYTE(self->super._status);
          if (status_low != [v5 wifiCallingEnabled])
          {
            goto LABEL_37;
          }

          v26 = BYTE1(self->super._status);
          if (v26 != [v5 callForwardingEnabled])
          {
            goto LABEL_37;
          }

          v27 = BYTE2(self->super._status);
          if (v27 != [v5 showsSOSWhenDisabled])
          {
            goto LABEL_37;
          }

          v28 = BYTE3(self->super._status);
          if (v28 != [v5 sosAvailable])
          {
            goto LABEL_37;
          }

          v29 = BYTE4(self->super._status);
          v13 = v29 == [v5 isBootstrapCellular];
LABEL_38:

          goto LABEL_39;
        }

        if (v22 && v23)
        {
          v24 = [(NSString *)v22 isEqual:v23];

          if (!v24)
          {
            goto LABEL_37;
          }

          goto LABEL_31;
        }

LABEL_37:
        v13 = 0;
        goto LABEL_38;
      }

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

LABEL_41:

    goto LABEL_42;
  }

  v13 = 0;
LABEL_42:

  return v13;
}

- (id)_ui_descriptionBuilder
{
  v16[9] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = _UIStatusBarDataCellularEntry;
  _ui_descriptionBuilder = [(_UIStatusBarDataNetworkEntry *)&v15 _ui_descriptionBuilder];
  v14 = NSStringFromSelector(sel_type);
  v16[0] = v14;
  v13 = NSStringFromSelector(sel_string);
  v16[1] = v13;
  v3 = NSStringFromSelector(sel_crossfadeString);
  v16[2] = v3;
  v4 = NSStringFromSelector(sel_badgeString);
  v16[3] = v4;
  v5 = NSStringFromSelector(sel_wifiCallingEnabled);
  v16[4] = v5;
  v6 = NSStringFromSelector(sel_callForwardingEnabled);
  v16[5] = v6;
  v7 = NSStringFromSelector(sel_showsSOSWhenDisabled);
  v16[6] = v7;
  v8 = NSStringFromSelector(sel_sosAvailable);
  v16[7] = v8;
  v9 = NSStringFromSelector(sel_isBootstrapCellular);
  v16[8] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:9];
  v11 = [_ui_descriptionBuilder appendKeys:v10];

  return v11;
}

@end