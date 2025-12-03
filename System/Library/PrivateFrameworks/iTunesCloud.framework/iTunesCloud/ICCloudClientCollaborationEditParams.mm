@interface ICCloudClientCollaborationEditParams
+ (id)descriptionForPositionType:(int64_t)type;
+ (id)newIdentifierString;
+ (id)paramsForAddingTrackWithAdamID:(unint64_t)d itemUUID:(id)iD itemPositionUUID:(id)uID afterReferencePositionUUD:(id)uD;
+ (id)paramsForAddingTrackWithAdamID:(unint64_t)d itemUUID:(id)iD itemPositionUUID:(id)uID atPosition:(int64_t)position;
+ (id)paramsForMovingTrackWithItemUUID:(id)d withNewItemPositionUUID:(id)iD afterReferencePositionUUD:(id)uD;
+ (id)paramsForMovingTrackWithItemUUID:(id)d withNewItemPositionUUID:(id)iD toPosition:(int64_t)position;
+ (id)paramsForRemovingTrackWithItemUUID:(id)d;
+ (id)paramsForSettingReaction:(id)reaction onTrackWithItemUUID:(id)d;
+ (id)paramsForUnsettingReaction:(id)reaction onTrackWithItemUUID:(id)d;
- (ICCloudClientCollaborationEditParams)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICCloudClientCollaborationEditParams

- (void)encodeWithCoder:(id)coder
{
  type_low = LODWORD(self->_type);
  coderCopy = coder;
  [coderCopy encodeInt32:type_low forKey:@"ICCloudClientCollaborationEditParamsTypeKey"];
  [coderCopy encodeObject:self->_itemUUID forKey:@"ICCloudClientCollaborationEditParamsItemUUIDKey"];
  [coderCopy encodeObject:self->_itemPositionUUID forKey:@"ICCloudClientCollaborationEditParamsItemPositionUUIDKey"];
  [coderCopy encodeObject:self->_referencePositionUUID forKey:@"ICCloudClientCollaborationEditParamsReferencePositionUUIDKey"];
  [coderCopy encodeInt32:LODWORD(self->_positionType) forKey:@"ICCloudClientCollaborationEditParamsPositionTypeKey"];
  [coderCopy encodeInt64:self->_itemAdamID forKey:@"ICCloudClientCollaborationEditParamsItemAdamIDKey"];
  [coderCopy encodeObject:self->_reactionString forKey:@"ICCloudClientCollaborationEditParamsReactionStringKey"];
  [coderCopy encodeObject:self->_timestamp forKey:@"ICCloudClientCollaborationEditParamsTimestampKey"];
}

- (ICCloudClientCollaborationEditParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  v5->_type = [coderCopy decodeInt32ForKey:@"ICCloudClientCollaborationEditParamsTypeKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICCloudClientCollaborationEditParamsItemUUIDKey"];
  itemUUID = v5->_itemUUID;
  v5->_itemUUID = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICCloudClientCollaborationEditParamsItemPositionUUIDKey"];
  itemPositionUUID = v5->_itemPositionUUID;
  v5->_itemPositionUUID = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICCloudClientCollaborationEditParamsReferencePositionUUIDKey"];
  referencePositionUUID = v5->_referencePositionUUID;
  v5->_referencePositionUUID = v10;

  v5->_positionType = [coderCopy decodeInt32ForKey:@"ICCloudClientCollaborationEditParamsPositionTypeKey"];
  v5->_itemAdamID = [coderCopy decodeInt64ForKey:@"ICCloudClientCollaborationEditParamsItemAdamIDKey"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICCloudClientCollaborationEditParamsReactionStringKey"];
  reactionString = v5->_reactionString;
  v5->_reactionString = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICCloudClientCollaborationEditParamsTimestampKey"];

  timestamp = v5->_timestamp;
  v5->_timestamp = v14;

  return v5;
}

- (id)description
{
  type = self->_type;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = v5;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type == 2)
      {
        [v4 stringWithFormat:@"<%@ %p: [REMOVE %@]>", v5, self, self->_itemUUID, v19, v20, v21, v22];
        goto LABEL_21;
      }

LABEL_20:
      [v4 stringWithFormat:@"<%@ %p: [Uknown param type %ld]>", v5, self, self->_type, v19, v20, v21, v22];
      goto LABEL_21;
    }

    itemAdamID = self->_itemAdamID;
    itemUUID = self->_itemUUID;
    itemPositionUUID = self->_itemPositionUUID;
    referencePositionUUID = self->_referencePositionUUID;
    if (referencePositionUUID)
    {
      v15 = "after";
    }

    else
    {
      v15 = "to";
    }

    if (referencePositionUUID)
    {
      [v4 stringWithFormat:@"<%@ %p: [ADD %lld %@/%@ %s %@]>", v5, self, itemAdamID, itemUUID, itemPositionUUID, v15, referencePositionUUID];
      goto LABEL_21;
    }

    v18 = [ICCloudClientCollaborationEditParams descriptionForPositionType:self->_positionType];
    [v4 stringWithFormat:@"<%@ %p: [ADD %lld %@/%@ %s %@]>", v6, self, itemAdamID, itemUUID, itemPositionUUID, v15, v18];
  }

  else
  {
    if (type != 3)
    {
      if (type == 4)
      {
        [v4 stringWithFormat:@"<%@ %p: [SET REACTION '%@' on %@]>", v5, self, self->_reactionString, self->_itemUUID, v20, v21, v22];
        goto LABEL_21;
      }

      if (type == 5)
      {
        [v4 stringWithFormat:@"<%@ %p: [UNSET REACTION '%@' on %@]>", v5, self, self->_reactionString, self->_itemUUID, v20, v21, v22];
        v16 = LABEL_21:;
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v7 = self->_itemUUID;
    v8 = self->_itemPositionUUID;
    v9 = self->_referencePositionUUID;
    if (v9)
    {
      v10 = "after";
    }

    else
    {
      v10 = "to";
    }

    if (v9)
    {
      [v4 stringWithFormat:@"<%@ %p: [MOVE %@/%@ %s %@]>", v5, self, v7, v8, v10, v9, v22];
      goto LABEL_21;
    }

    v18 = [ICCloudClientCollaborationEditParams descriptionForPositionType:self->_positionType];
    [v4 stringWithFormat:@"<%@ %p: [MOVE %@/%@ %s %@]>", v6, self, v7, v8, v10, v18, v22];
  }
  v16 = ;

LABEL_22:

  return v16;
}

+ (id)descriptionForPositionType:(int64_t)type
{
  v3 = @"Uknown";
  if (type == 2)
  {
    v3 = @"End";
  }

  if (type == 1)
  {
    return @"Beginning";
  }

  else
  {
    return v3;
  }
}

+ (id)newIdentifierString
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  lowercaseString = [uUIDString lowercaseString];

  return lowercaseString;
}

+ (id)paramsForUnsettingReaction:(id)reaction onTrackWithItemUUID:(id)d
{
  reactionCopy = reaction;
  dCopy = d;
  v7 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  itemUUID = v7->_itemUUID;
  v7->_type = 5;
  v7->_itemUUID = dCopy;
  v9 = dCopy;

  reactionString = v7->_reactionString;
  v7->_reactionString = reactionCopy;

  return v7;
}

+ (id)paramsForSettingReaction:(id)reaction onTrackWithItemUUID:(id)d
{
  reactionCopy = reaction;
  dCopy = d;
  v7 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  itemUUID = v7->_itemUUID;
  v7->_type = 4;
  v7->_itemUUID = dCopy;
  v9 = dCopy;

  reactionString = v7->_reactionString;
  v7->_reactionString = reactionCopy;
  v11 = reactionCopy;

  date = [MEMORY[0x1E695DF00] date];
  timestamp = v7->_timestamp;
  v7->_timestamp = date;

  return v7;
}

+ (id)paramsForMovingTrackWithItemUUID:(id)d withNewItemPositionUUID:(id)iD toPosition:(int64_t)position
{
  dCopy = d;
  iDCopy = iD;
  v9 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  itemUUID = v9->_itemUUID;
  v9->_type = 3;
  v9->_itemUUID = dCopy;
  v11 = dCopy;

  itemPositionUUID = v9->_itemPositionUUID;
  v9->_itemPositionUUID = iDCopy;

  v9->_positionType = position;

  return v9;
}

+ (id)paramsForMovingTrackWithItemUUID:(id)d withNewItemPositionUUID:(id)iD afterReferencePositionUUD:(id)uD
{
  dCopy = d;
  iDCopy = iD;
  uDCopy = uD;
  v10 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  itemUUID = v10->_itemUUID;
  v10->_type = 3;
  v10->_itemUUID = dCopy;
  v12 = dCopy;

  itemPositionUUID = v10->_itemPositionUUID;
  v10->_itemPositionUUID = iDCopy;
  v14 = iDCopy;

  referencePositionUUID = v10->_referencePositionUUID;
  v10->_referencePositionUUID = uDCopy;

  return v10;
}

+ (id)paramsForRemovingTrackWithItemUUID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  itemUUID = v4->_itemUUID;
  v4->_type = 2;
  v4->_itemUUID = dCopy;

  return v4;
}

+ (id)paramsForAddingTrackWithAdamID:(unint64_t)d itemUUID:(id)iD itemPositionUUID:(id)uID atPosition:(int64_t)position
{
  iDCopy = iD;
  uIDCopy = uID;
  v11 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  v11->_itemAdamID = d;
  itemUUID = v11->_itemUUID;
  v11->_type = 1;
  v11->_itemUUID = iDCopy;
  v13 = iDCopy;

  itemPositionUUID = v11->_itemPositionUUID;
  v11->_itemPositionUUID = uIDCopy;

  v11->_positionType = position;

  return v11;
}

+ (id)paramsForAddingTrackWithAdamID:(unint64_t)d itemUUID:(id)iD itemPositionUUID:(id)uID afterReferencePositionUUD:(id)uD
{
  iDCopy = iD;
  uIDCopy = uID;
  uDCopy = uD;
  v12 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  v12->_itemAdamID = d;
  itemUUID = v12->_itemUUID;
  v12->_type = 1;
  v12->_itemUUID = iDCopy;
  v14 = iDCopy;

  itemPositionUUID = v12->_itemPositionUUID;
  v12->_itemPositionUUID = uIDCopy;
  v16 = uIDCopy;

  referencePositionUUID = v12->_referencePositionUUID;
  v12->_referencePositionUUID = uDCopy;

  return v12;
}

@end