@interface TUConversationHandoffEligibility
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHandoffEligibility:(id)eligibility;
- (NSString)localizedDeviceCategory;
- (TUConversationHandoffEligibility)initWithCoder:(id)coder;
- (TUConversationHandoffEligibility)initWithHandoffEligibility:(id)eligibility;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationHandoffEligibility

- (TUConversationHandoffEligibility)initWithHandoffEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  v13.receiver = self;
  v13.super_class = TUConversationHandoffEligibility;
  v5 = [(TUConversationHandoffEligibility *)&v13 init];
  if (v5)
  {
    v5->_eligible = [eligibilityCopy isEligible];
    v5->_uplinkMuted = [eligibilityCopy isUplinkMuted];
    v5->_sendingVideo = [eligibilityCopy isSendingVideo];
    conversationGroupUUID = [eligibilityCopy conversationGroupUUID];
    conversationGroupUUID = v5->_conversationGroupUUID;
    v5->_conversationGroupUUID = conversationGroupUUID;

    association = [eligibilityCopy association];
    association = v5->_association;
    v5->_association = association;

    originatingDeviceType = [eligibilityCopy originatingDeviceType];
    originatingDeviceType = v5->_originatingDeviceType;
    v5->_originatingDeviceType = originatingDeviceType;
  }

  return v5;
}

- (NSString)localizedDeviceCategory
{
  originatingDeviceType = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  if ([originatingDeviceType containsString:@"com.apple.iphone"])
  {
    v4 = @"IPHONE";
LABEL_3:

LABEL_6:
    v7 = TUBundle();
    v8 = [v7 localizedStringForKey:v4 value:&stru_1F098C218 table:@"TelephonyUtilities"];

    goto LABEL_7;
  }

  originatingDeviceType2 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v6 = [originatingDeviceType2 containsString:@"com.apple.homebuttonless-iphone"];

  if (v6)
  {
    v4 = @"IPHONE";
    goto LABEL_6;
  }

  originatingDeviceType = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  if ([originatingDeviceType containsString:@"com.apple.ipad"])
  {
    v4 = @"IPAD";
    goto LABEL_3;
  }

  originatingDeviceType3 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v11 = [originatingDeviceType3 containsString:@"com.apple.homebuttonless-ipad"];

  if (v11)
  {
    v4 = @"IPAD";
    goto LABEL_6;
  }

  originatingDeviceType4 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v13 = [originatingDeviceType4 containsString:@"com.apple.ipod"];

  if (v13)
  {
    v4 = @"IPOD";
    goto LABEL_6;
  }

  originatingDeviceType5 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v15 = [originatingDeviceType5 containsString:@"com.apple.mac"];

  if (v15)
  {
    v4 = @"MAC";
    goto LABEL_6;
  }

  originatingDeviceType6 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v17 = [originatingDeviceType6 containsString:@"com.apple.visionpro"];

  if (v17)
  {
    v4 = @"VISIONPRO";
    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (TUConversationHandoffEligibility)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = TUConversationHandoffEligibility;
  v5 = [(TUConversationHandoffEligibility *)&v22 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isEligible);
    v5->_eligible = [coderCopy decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_isUplinkMuted);
    v5->_uplinkMuted = [coderCopy decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_isSendingVideo);
    v5->_sendingVideo = [coderCopy decodeBoolForKey:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_conversationGroupUUID);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    conversationGroupUUID = v5->_conversationGroupUUID;
    v5->_conversationGroupUUID = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_association);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    association = v5->_association;
    v5->_association = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_originatingDeviceType);
    v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];
    originatingDeviceType = v5->_originatingDeviceType;
    v5->_originatingDeviceType = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  isEligible = [(TUConversationHandoffEligibility *)self isEligible];
  v6 = NSStringFromSelector(sel_isEligible);
  [coderCopy encodeBool:isEligible forKey:v6];

  isUplinkMuted = [(TUConversationHandoffEligibility *)self isUplinkMuted];
  v8 = NSStringFromSelector(sel_isUplinkMuted);
  [coderCopy encodeBool:isUplinkMuted forKey:v8];

  isSendingVideo = [(TUConversationHandoffEligibility *)self isSendingVideo];
  v10 = NSStringFromSelector(sel_isSendingVideo);
  [coderCopy encodeBool:isSendingVideo forKey:v10];

  conversationGroupUUID = [(TUConversationHandoffEligibility *)self conversationGroupUUID];
  v12 = NSStringFromSelector(sel_conversationGroupUUID);
  [coderCopy encodeObject:conversationGroupUUID forKey:v12];

  association = [(TUConversationHandoffEligibility *)self association];
  v14 = NSStringFromSelector(sel_association);
  [coderCopy encodeObject:association forKey:v14];

  originatingDeviceType = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v15 = NSStringFromSelector(sel_originatingDeviceType);
  [coderCopy encodeObject:originatingDeviceType forKey:v15];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUConversationHandoffEligibility allocWithZone:zone];

  return [(TUConversationHandoffEligibility *)v4 initWithHandoffEligibility:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" isEligible=%d", -[TUConversationHandoffEligibility isEligible](self, "isEligible")];
  [v3 appendFormat:@" isUplinkMuted=%d", -[TUConversationHandoffEligibility isUplinkMuted](self, "isUplinkMuted")];
  [v3 appendFormat:@" isSendingVideo=%d", -[TUConversationHandoffEligibility isSendingVideo](self, "isSendingVideo")];
  conversationGroupUUID = [(TUConversationHandoffEligibility *)self conversationGroupUUID];
  [v3 appendFormat:@" conversationGroupUUID=%@", conversationGroupUUID];

  association = [(TUConversationHandoffEligibility *)self association];
  [v3 appendFormat:@" association=%@", association];

  originatingDeviceType = [(TUConversationHandoffEligibility *)self originatingDeviceType];

  if (originatingDeviceType)
  {
    originatingDeviceType2 = [(TUConversationHandoffEligibility *)self originatingDeviceType];
    [v3 appendFormat:@" originatingDeviceType=%@", originatingDeviceType2];
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

  conversationGroupUUID = [(TUConversationHandoffEligibility *)self conversationGroupUUID];
  v8 = v6 ^ v3 ^ [conversationGroupUUID hash];
  association = [(TUConversationHandoffEligibility *)self association];
  v10 = [association hash];
  originatingDeviceType = [(TUConversationHandoffEligibility *)self originatingDeviceType];
  v12 = v10 ^ [originatingDeviceType hash];

  return v8 ^ v12;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationHandoffEligibility *)self isEqualToHandoffEligibility:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToHandoffEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  isEligible = [(TUConversationHandoffEligibility *)self isEligible];
  if (isEligible == [eligibilityCopy isEligible] && (v6 = -[TUConversationHandoffEligibility isUplinkMuted](self, "isUplinkMuted"), v6 == objc_msgSend(eligibilityCopy, "isUplinkMuted")) && (v7 = -[TUConversationHandoffEligibility isSendingVideo](self, "isSendingVideo"), v7 == objc_msgSend(eligibilityCopy, "isSendingVideo")))
  {
    conversationGroupUUID = [(TUConversationHandoffEligibility *)self conversationGroupUUID];
    conversationGroupUUID2 = [eligibilityCopy conversationGroupUUID];
    if (conversationGroupUUID == conversationGroupUUID2)
    {
      association = [(TUConversationHandoffEligibility *)self association];
      association2 = [eligibilityCopy association];
      if ([association isEqual:association2])
      {
        originatingDeviceType = [(TUConversationHandoffEligibility *)self originatingDeviceType];
        originatingDeviceType2 = [eligibilityCopy originatingDeviceType];
        v8 = TUObjectsAreEqualOrNil(originatingDeviceType, originatingDeviceType2);
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