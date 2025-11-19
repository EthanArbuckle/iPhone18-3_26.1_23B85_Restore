@interface RPNearFieldTapEvent
- (RPNearFieldTapEvent)initWithCoder:(id)a3;
- (RPNearFieldTapEvent)initWithIdentifier:(id)a3 applicationLabel:(id)a4 pkData:(id)a5 bonjourListenerUUID:(id)a6 isSameAccount:(BOOL)a7 contactID:(id)a8 accountID:(id)a9 forceSingleBandAWDLMode:(BOOL)a10 knownIdentity:(BOOL)a11 isUnsupportedApplicationLabel:(BOOL)a12 flags:(unsigned int)a13;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RPNearFieldTapEvent

- (RPNearFieldTapEvent)initWithIdentifier:(id)a3 applicationLabel:(id)a4 pkData:(id)a5 bonjourListenerUUID:(id)a6 isSameAccount:(BOOL)a7 contactID:(id)a8 accountID:(id)a9 forceSingleBandAWDLMode:(BOOL)a10 knownIdentity:(BOOL)a11 isUnsupportedApplicationLabel:(BOOL)a12 flags:(unsigned int)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a8;
  v24 = a9;
  v39.receiver = self;
  v39.super_class = RPNearFieldTapEvent;
  v25 = [(RPNearFieldTapEvent *)&v39 init];
  if (v25)
  {
    v26 = [v19 copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [v20 copy];
    applicationLabel = v25->_applicationLabel;
    v25->_applicationLabel = v28;

    v30 = [v21 copy];
    pkData = v25->_pkData;
    v25->_pkData = v30;

    objc_storeStrong(&v25->_bonjourListenerUUID, a6);
    v25->_isSameAccount = a7;
    v32 = [v23 copy];
    contactID = v25->_contactID;
    v25->_contactID = v32;

    v34 = [v24 copy];
    accountID = v25->_accountID;
    v25->_accountID = v34;

    v25->_shouldForceSingleBandAWDLMode = a10;
    v36 = [MEMORY[0x1E695DF00] now];
    date = v25->_date;
    v25->_date = v36;

    v25->_isKnownIdentity = a11;
    v25->_isUnsupportedApplicationLabel = a12;
    v25->_flags = a13;
  }

  return v25;
}

- (RPNearFieldTapEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = RPNearFieldTapEvent;
  v5 = [(RPNearFieldTapEvent *)&v22 init];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v4;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v7 = v6;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v8 = v7;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v9 = v8;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v10 = v9;
  if ([v10 containsValueForKey:@"isSameAccount"])
  {
    v5->_isSameAccount = [v10 decodeBoolForKey:@"isSameAccount"];
  }

  v11 = v10;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v12 = v11;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v13 = v12;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v14 = v13;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v15 = v14;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v16 = v15;
  if ([v16 containsValueForKey:@"forceSingleBand"])
  {
    v5->_shouldForceSingleBandAWDLMode = [v16 decodeBoolForKey:@"forceSingleBand"];
  }

  v17 = v16;
  if ([v17 containsValueForKey:@"knownIdentity"])
  {
    v5->_isKnownIdentity = [v17 decodeBoolForKey:@"knownIdentity"];
  }

  v18 = v17;
  if ([v18 containsValueForKey:@"isUnsupportedApplicationLabel"])
  {
    v5->_isUnsupportedApplicationLabel = [v18 decodeBoolForKey:@"isUnsupportedApplicationLabel"];
  }

  v23 = 0;
  if (NSDecodeSInt64RangedIfPresent())
  {
    v5->_flags = v23;
  }

  if (!v5->_identifier || !v5->_applicationLabel || !v5->_date)
  {
    v20 = RPErrorF();
    [v18 failWithError:v20];

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v19 = v5;
LABEL_18:

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v15 = v4;
  if (identifier)
  {
    [v4 encodeObject:identifier forKey:@"identifier"];
    v4 = v15;
  }

  applicationLabel = self->_applicationLabel;
  if (applicationLabel)
  {
    [v15 encodeObject:applicationLabel forKey:@"appLabel"];
    v4 = v15;
  }

  pkData = self->_pkData;
  if (pkData)
  {
    [v15 encodeObject:pkData forKey:@"pkDataKey"];
    v4 = v15;
  }

  date = self->_date;
  if (date)
  {
    [v15 encodeObject:date forKey:@"date"];
    v4 = v15;
  }

  if (self->_isSameAccount)
  {
    [v15 encodeBool:1 forKey:@"isSameAccount"];
    v4 = v15;
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v15 encodeObject:deviceName forKey:@"deviceName"];
    v4 = v15;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v15 encodeObject:deviceModel forKey:@"deviceModel"];
    v4 = v15;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    [v15 encodeObject:accountID forKey:@"accountID"];
    v4 = v15;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v15 encodeObject:contactID forKey:@"contactID"];
    v4 = v15;
  }

  bonjourListenerUUID = self->_bonjourListenerUUID;
  if (bonjourListenerUUID)
  {
    [v15 encodeObject:bonjourListenerUUID forKey:@"bonjourListenerUUIDKey"];
    v4 = v15;
  }

  if (self->_shouldForceSingleBandAWDLMode)
  {
    [v15 encodeBool:1 forKey:@"forceSingleBand"];
    v4 = v15;
  }

  if (self->_isKnownIdentity)
  {
    [v15 encodeBool:1 forKey:@"knownIdentity"];
    v4 = v15;
  }

  if (self->_isUnsupportedApplicationLabel)
  {
    [v15 encodeBool:1 forKey:@"isUnsupportedApplicationLabel"];
    v4 = v15;
  }

  flags = self->_flags;
  if (flags)
  {
    [v15 encodeInt64:flags forKey:@"flags"];
    v4 = v15;
  }
}

- (id)descriptionWithLevel:(int)a3
{
  isSameAccount = self->_isSameAccount;
  contactID = self->_contactID;
  applicationDomain = self->_applicationDomain;
  date = self->_date;
  identifier = self->_identifier;
  applicationLabel = self->_applicationLabel;
  NSAppendPrintF();
  v4 = 0;
  v5 = v4;
  if (self->_flags)
  {
    v27 = v4;
    identifier = self->_flags;
    applicationLabel = &unk_1B6F2E623;
    NSAppendPrintF();
    v6 = v27;

    v5 = v6;
  }

  pkData = self->_pkData;
  v8 = [(NSData *)pkData length:identifier];
  v17 = pkData;
  v22 = v8;
  NSAppendPrintF();
  v9 = v5;

  v10 = [(NSUUID *)self->_bonjourListenerUUID UUIDString:v17];
  NSAppendPrintF();
  v11 = v9;

  shouldForceSingleBandAWDLMode = self->_shouldForceSingleBandAWDLMode;
  NSAppendPrintF();
  v12 = v11;

  isKnownIdentity = self->_isKnownIdentity;
  NSAppendPrintF();
  v13 = v12;

  isUnsupportedApplicationLabel = self->_isUnsupportedApplicationLabel;
  NSAppendPrintF();
  v14 = v13;

  return v13;
}

@end