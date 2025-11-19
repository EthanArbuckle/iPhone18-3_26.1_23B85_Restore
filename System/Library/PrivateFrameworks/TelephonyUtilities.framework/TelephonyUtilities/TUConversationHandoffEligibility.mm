@interface TUConversationHandoffEligibility
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHandoffEligibility:(id)a3;
- (NSString)localizedDeviceCategory;
- (TUConversationHandoffEligibility)initWithCoder:(id)a3;
- (TUConversationHandoffEligibility)initWithHandoffEligibility:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationHandoffEligibility

- (TUConversationHandoffEligibility)initWithHandoffEligibility:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUConversationHandoffEligibility;
  v5 = [(TUConversationHandoffEligibility *)&v13 init];
  if (v5)
  {
    v5->_eligible = [v4 isEligible];
    v5->_uplinkMuted = [v4 isUplinkMuted];
    v5->_sendingVideo = [v4 isSendingVideo];
    v6 = [v4 conversationGroupUUID];
    conversationGroupUUID = v5->_conversationGroupUUID;
    v5->_conversationGroupUUID = v6;

    v8 = [v4 association];
    association = v5->_association;
    v5->_association = v8;

    v10 = [v4 originatingDeviceType];
    originatingDeviceType = v5->_originatingDeviceType;
    v5->_originatingDeviceType = v10;
  }

  return v5;
}

- (NSString)localizedDeviceCategory
{
  v3 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  if ([v3 containsString:@"com.apple.iphone"])
  {
    v4 = @"IPHONE";
LABEL_3:

LABEL_6:
    v7 = TUBundle();
    v8 = [v7 localizedStringForKey:v4 value:&stru_1F098C218 table:@"TelephonyUtilities"];

    goto LABEL_7;
  }

  v5 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v6 = [v5 containsString:@"com.apple.homebuttonless-iphone"];

  if (v6)
  {
    v4 = @"IPHONE";
    goto LABEL_6;
  }

  v3 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  if ([v3 containsString:@"com.apple.ipad"])
  {
    v4 = @"IPAD";
    goto LABEL_3;
  }

  v10 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v11 = [v10 containsString:@"com.apple.homebuttonless-ipad"];

  if (v11)
  {
    v4 = @"IPAD";
    goto LABEL_6;
  }

  v12 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v13 = [v12 containsString:@"com.apple.ipod"];

  if (v13)
  {
    v4 = @"IPOD";
    goto LABEL_6;
  }

  v14 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v15 = [v14 containsString:@"com.apple.mac"];

  if (v15)
  {
    v4 = @"MAC";
    goto LABEL_6;
  }

  v16 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v17 = [v16 containsString:@"com.apple.visionpro"];

  if (v17)
  {
    v4 = @"VISIONPRO";
    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (TUConversationHandoffEligibility)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TUConversationHandoffEligibility;
  v5 = [(TUConversationHandoffEligibility *)&v22 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isEligible);
    v5->_eligible = [v4 decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_isUplinkMuted);
    v5->_uplinkMuted = [v4 decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_isSendingVideo);
    v5->_sendingVideo = [v4 decodeBoolForKey:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_conversationGroupUUID);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    conversationGroupUUID = v5->_conversationGroupUUID;
    v5->_conversationGroupUUID = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_association);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    association = v5->_association;
    v5->_association = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_originatingDeviceType);
    v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
    originatingDeviceType = v5->_originatingDeviceType;
    v5->_originatingDeviceType = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationHandoffEligibility *)self isEligible];
  v6 = NSStringFromSelector(sel_isEligible);
  [v4 encodeBool:v5 forKey:v6];

  v7 = [(TUConversationHandoffEligibility *)self isUplinkMuted];
  v8 = NSStringFromSelector(sel_isUplinkMuted);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(TUConversationHandoffEligibility *)self isSendingVideo];
  v10 = NSStringFromSelector(sel_isSendingVideo);
  [v4 encodeBool:v9 forKey:v10];

  v11 = [(TUConversationHandoffEligibility *)self conversationGroupUUID];
  v12 = NSStringFromSelector(sel_conversationGroupUUID);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUConversationHandoffEligibility *)self association];
  v14 = NSStringFromSelector(sel_association);
  [v4 encodeObject:v13 forKey:v14];

  v16 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v15 = NSStringFromSelector(sel_originatingDeviceType);
  [v4 encodeObject:v16 forKey:v15];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUConversationHandoffEligibility allocWithZone:a3];

  return [(TUConversationHandoffEligibility *)v4 initWithHandoffEligibility:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" isEligible=%d", -[TUConversationHandoffEligibility isEligible](self, "isEligible")];
  [v3 appendFormat:@" isUplinkMuted=%d", -[TUConversationHandoffEligibility isUplinkMuted](self, "isUplinkMuted")];
  [v3 appendFormat:@" isSendingVideo=%d", -[TUConversationHandoffEligibility isSendingVideo](self, "isSendingVideo")];
  v4 = [(TUConversationHandoffEligibility *)self conversationGroupUUID];
  [v3 appendFormat:@" conversationGroupUUID=%@", v4];

  v5 = [(TUConversationHandoffEligibility *)self association];
  [v3 appendFormat:@" association=%@", v5];

  v6 = [(TUConversationHandoffEligibility *)self originatingDeviceType];

  if (v6)
  {
    v7 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
    [v3 appendFormat:@" originatingDeviceType=%@", v7];
  }

  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

- (unint64_t)hash
{
  v3 = 1231;
  if ([(TUConversationHandoffEligibility *)self isEligible])
  {
    v4 = 1231;
  }

  else
  {
    v4 = 1237;
  }

  if ([(TUConversationHandoffEligibility *)self isUplinkMuted])
  {
    v5 = 1231;
  }

  else
  {
    v5 = 1237;
  }

  v6 = v5 ^ v4;
  if (![(TUConversationHandoffEligibility *)self isSendingVideo])
  {
    v3 = 1237;
  }

  v7 = [(TUConversationHandoffEligibility *)self conversationGroupUUID];
  v8 = v6 ^ v3 ^ [v7 hash];
  v9 = [(TUConversationHandoffEligibility *)self association];
  v10 = [v9 hash];
  v11 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v12 = v10 ^ [v11 hash];

  return v8 ^ v12;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationHandoffEligibility *)self isEqualToHandoffEligibility:v4];
  }

  return v5;
}

- (BOOL)isEqualToHandoffEligibility:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationHandoffEligibility *)self isEligible];
  if (v5 == [v4 isEligible] && (v6 = -[TUConversationHandoffEligibility isUplinkMuted](self, "isUplinkMuted"), v6 == objc_msgSend(v4, "isUplinkMuted")) && (v7 = -[TUConversationHandoffEligibility isSendingVideo](self, "isSendingVideo"), v7 == objc_msgSend(v4, "isSendingVideo")))
  {
    v10 = [(TUConversationHandoffEligibility *)self conversationGroupUUID];
    v11 = [v4 conversationGroupUUID];
    if (v10 == v11)
    {
      v12 = [(TUConversationHandoffEligibility *)self association];
      v13 = [v4 association];
      if ([v12 isEqual:v13])
      {
        v14 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
        v15 = [v4 originatingDeviceType];
        v8 = TUObjectsAreEqualOrNil(v14, v15);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end