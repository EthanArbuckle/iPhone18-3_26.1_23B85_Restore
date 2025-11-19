@interface NCNotificationListCellDynamicHeightTraits
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation NCNotificationListCellDynamicHeightTraits

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:self->_alignContentToBottom];
  v5 = [v3 appendBool:self->_showAuxiliaryOptions];
  v6 = [v3 appendBool:self->_isGroupCollapsed];
  v7 = [v3 hash];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NCNotificationListCellDynamicHeightTraits *)self alignContentToBottom];
      if (v6 == [(NCNotificationListCellDynamicHeightTraits *)v5 alignContentToBottom]&& (v7 = [(NCNotificationListCellDynamicHeightTraits *)self showAuxiliaryOptions], v7 == [(NCNotificationListCellDynamicHeightTraits *)v5 showAuxiliaryOptions]))
      {
        v9 = [(NCNotificationListCellDynamicHeightTraits *)self isGroupCollapsed];
        v8 = v9 ^ [(NCNotificationListCellDynamicHeightTraits *)v5 isGroupCollapsed]^ 1;
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
  v7 = [v3 build];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
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