@interface ICCloudClientCollaborationEditParams
+ (id)descriptionForPositionType:(int64_t)a3;
+ (id)newIdentifierString;
+ (id)paramsForAddingTrackWithAdamID:(unint64_t)a3 itemUUID:(id)a4 itemPositionUUID:(id)a5 afterReferencePositionUUD:(id)a6;
+ (id)paramsForAddingTrackWithAdamID:(unint64_t)a3 itemUUID:(id)a4 itemPositionUUID:(id)a5 atPosition:(int64_t)a6;
+ (id)paramsForMovingTrackWithItemUUID:(id)a3 withNewItemPositionUUID:(id)a4 afterReferencePositionUUD:(id)a5;
+ (id)paramsForMovingTrackWithItemUUID:(id)a3 withNewItemPositionUUID:(id)a4 toPosition:(int64_t)a5;
+ (id)paramsForRemovingTrackWithItemUUID:(id)a3;
+ (id)paramsForSettingReaction:(id)a3 onTrackWithItemUUID:(id)a4;
+ (id)paramsForUnsettingReaction:(id)a3 onTrackWithItemUUID:(id)a4;
- (ICCloudClientCollaborationEditParams)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICCloudClientCollaborationEditParams

- (void)encodeWithCoder:(id)a3
{
  type_low = LODWORD(self->_type);
  v5 = a3;
  [v5 encodeInt32:type_low forKey:@"ICCloudClientCollaborationEditParamsTypeKey"];
  [v5 encodeObject:self->_itemUUID forKey:@"ICCloudClientCollaborationEditParamsItemUUIDKey"];
  [v5 encodeObject:self->_itemPositionUUID forKey:@"ICCloudClientCollaborationEditParamsItemPositionUUIDKey"];
  [v5 encodeObject:self->_referencePositionUUID forKey:@"ICCloudClientCollaborationEditParamsReferencePositionUUIDKey"];
  [v5 encodeInt32:LODWORD(self->_positionType) forKey:@"ICCloudClientCollaborationEditParamsPositionTypeKey"];
  [v5 encodeInt64:self->_itemAdamID forKey:@"ICCloudClientCollaborationEditParamsItemAdamIDKey"];
  [v5 encodeObject:self->_reactionString forKey:@"ICCloudClientCollaborationEditParamsReactionStringKey"];
  [v5 encodeObject:self->_timestamp forKey:@"ICCloudClientCollaborationEditParamsTimestampKey"];
}

- (ICCloudClientCollaborationEditParams)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  v5->_type = [v4 decodeInt32ForKey:@"ICCloudClientCollaborationEditParamsTypeKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICCloudClientCollaborationEditParamsItemUUIDKey"];
  itemUUID = v5->_itemUUID;
  v5->_itemUUID = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICCloudClientCollaborationEditParamsItemPositionUUIDKey"];
  itemPositionUUID = v5->_itemPositionUUID;
  v5->_itemPositionUUID = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICCloudClientCollaborationEditParamsReferencePositionUUIDKey"];
  referencePositionUUID = v5->_referencePositionUUID;
  v5->_referencePositionUUID = v10;

  v5->_positionType = [v4 decodeInt32ForKey:@"ICCloudClientCollaborationEditParamsPositionTypeKey"];
  v5->_itemAdamID = [v4 decodeInt64ForKey:@"ICCloudClientCollaborationEditParamsItemAdamIDKey"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICCloudClientCollaborationEditParamsReactionStringKey"];
  reactionString = v5->_reactionString;
  v5->_reactionString = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICCloudClientCollaborationEditParamsTimestampKey"];

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

+ (id)descriptionForPositionType:(int64_t)a3
{
  v3 = @"Uknown";
  if (a3 == 2)
  {
    v3 = @"End";
  }

  if (a3 == 1)
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
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  v4 = [v3 lowercaseString];

  return v4;
}

+ (id)paramsForUnsettingReaction:(id)a3 onTrackWithItemUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  itemUUID = v7->_itemUUID;
  v7->_type = 5;
  v7->_itemUUID = v6;
  v9 = v6;

  reactionString = v7->_reactionString;
  v7->_reactionString = v5;

  return v7;
}

+ (id)paramsForSettingReaction:(id)a3 onTrackWithItemUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  itemUUID = v7->_itemUUID;
  v7->_type = 4;
  v7->_itemUUID = v6;
  v9 = v6;

  reactionString = v7->_reactionString;
  v7->_reactionString = v5;
  v11 = v5;

  v12 = [MEMORY[0x1E695DF00] date];
  timestamp = v7->_timestamp;
  v7->_timestamp = v12;

  return v7;
}

+ (id)paramsForMovingTrackWithItemUUID:(id)a3 withNewItemPositionUUID:(id)a4 toPosition:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  itemUUID = v9->_itemUUID;
  v9->_type = 3;
  v9->_itemUUID = v7;
  v11 = v7;

  itemPositionUUID = v9->_itemPositionUUID;
  v9->_itemPositionUUID = v8;

  v9->_positionType = a5;

  return v9;
}

+ (id)paramsForMovingTrackWithItemUUID:(id)a3 withNewItemPositionUUID:(id)a4 afterReferencePositionUUD:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  itemUUID = v10->_itemUUID;
  v10->_type = 3;
  v10->_itemUUID = v7;
  v12 = v7;

  itemPositionUUID = v10->_itemPositionUUID;
  v10->_itemPositionUUID = v8;
  v14 = v8;

  referencePositionUUID = v10->_referencePositionUUID;
  v10->_referencePositionUUID = v9;

  return v10;
}

+ (id)paramsForRemovingTrackWithItemUUID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  itemUUID = v4->_itemUUID;
  v4->_type = 2;
  v4->_itemUUID = v3;

  return v4;
}

+ (id)paramsForAddingTrackWithAdamID:(unint64_t)a3 itemUUID:(id)a4 itemPositionUUID:(id)a5 atPosition:(int64_t)a6
{
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  v11->_itemAdamID = a3;
  itemUUID = v11->_itemUUID;
  v11->_type = 1;
  v11->_itemUUID = v9;
  v13 = v9;

  itemPositionUUID = v11->_itemPositionUUID;
  v11->_itemPositionUUID = v10;

  v11->_positionType = a6;

  return v11;
}

+ (id)paramsForAddingTrackWithAdamID:(unint64_t)a3 itemUUID:(id)a4 itemPositionUUID:(id)a5 afterReferencePositionUUD:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(ICCloudClientCollaborationEditParams);
  v12->_itemAdamID = a3;
  itemUUID = v12->_itemUUID;
  v12->_type = 1;
  v12->_itemUUID = v9;
  v14 = v9;

  itemPositionUUID = v12->_itemPositionUUID;
  v12->_itemPositionUUID = v10;
  v16 = v10;

  referencePositionUUID = v12->_referencePositionUUID;
  v12->_referencePositionUUID = v11;

  return v12;
}

@end