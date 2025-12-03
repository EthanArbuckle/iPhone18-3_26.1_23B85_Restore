@interface NCNotificationListCellDynamicHeightTraits
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation NCNotificationListCellDynamicHeightTraits

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendBool:self->_alignContentToBottom];
  v5 = [builder appendBool:self->_showAuxiliaryOptions];
  v6 = [builder appendBool:self->_isGroupCollapsed];
  v7 = [builder hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      alignContentToBottom = [(NCNotificationListCellDynamicHeightTraits *)self alignContentToBottom];
      if (alignContentToBottom == [(NCNotificationListCellDynamicHeightTraits *)v5 alignContentToBottom]&& (v7 = [(NCNotificationListCellDynamicHeightTraits *)self showAuxiliaryOptions], v7 == [(NCNotificationListCellDynamicHeightTraits *)v5 showAuxiliaryOptions]))
      {
        isGroupCollapsed = [(NCNotificationListCellDynamicHeightTraits *)self isGroupCollapsed];
        v8 = isGroupCollapsed ^ [(NCNotificationListCellDynamicHeightTraits *)v5 isGroupCollapsed]^ 1;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_alignContentToBottom withName:@"alignContentToBottom"];
  v5 = [v3 appendBool:self->_showAuxiliaryOptions withName:@"showAuxiliaryOptions"];
  v6 = [v3 appendBool:self->_isGroupCollapsed withName:@"isGroupCollapsed"];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [v4 setAlignContentToBottom:{-[NCNotificationListCellDynamicHeightTraits alignContentToBottom](self, "alignContentToBottom")}];
    [v4 setShowAuxiliaryOptions:{-[NCNotificationListCellDynamicHeightTraits showAuxiliaryOptions](self, "showAuxiliaryOptions")}];
    [v4 setIsGroupCollapsed:{-[NCNotificationListCellDynamicHeightTraits isGroupCollapsed](self, "isGroupCollapsed")}];
  }

  return v4;
}

@end