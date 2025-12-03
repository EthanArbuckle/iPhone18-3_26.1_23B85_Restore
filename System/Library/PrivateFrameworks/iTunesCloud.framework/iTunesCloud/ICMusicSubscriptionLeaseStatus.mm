@interface ICMusicSubscriptionLeaseStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICMusicSubscriptionLeaseStatus

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    v4[2] = self->_leaseState;
    *(v4 + 11) = self->_hasPendingLeaseAcquisition;
    *(v4 + 12) = self->_hasInflightLeaseAcquisition;
    *(v4 + 9) = self->_hasOnlinePlaybackKeys;
    *(v4 + 10) = self->_hasOfflinePlaybackKeys;
    *(v4 + 13) = self->_takenDueToLeasePrevention;
    *(v4 + 8) = self->_shouldPlaybackRequireOnlineKeys;
    objc_storeStrong(v4 + 3, self->_stateReasonDialog);
    objc_storeStrong(v5 + 4, self->_stateReasonDialogMetricsDictionary);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  shouldPlaybackRequireOnlineKeys = self->_shouldPlaybackRequireOnlineKeys;
  if (shouldPlaybackRequireOnlineKeys != [(ICMusicSubscriptionLeaseStatus *)equalCopy shouldPlaybackRequireOnlineKeys])
  {
    goto LABEL_12;
  }

  hasOnlinePlaybackKeys = self->_hasOnlinePlaybackKeys;
  if (hasOnlinePlaybackKeys != [(ICMusicSubscriptionLeaseStatus *)equalCopy hasOnlinePlaybackKeys])
  {
    goto LABEL_12;
  }

  hasOfflinePlaybackKeys = self->_hasOfflinePlaybackKeys;
  if (hasOfflinePlaybackKeys != [(ICMusicSubscriptionLeaseStatus *)equalCopy hasOfflinePlaybackKeys])
  {
    goto LABEL_12;
  }

  hasPendingLeaseAcquisition = self->_hasPendingLeaseAcquisition;
  if (hasPendingLeaseAcquisition != [(ICMusicSubscriptionLeaseStatus *)equalCopy hasPendingLeaseAcquisition])
  {
    goto LABEL_12;
  }

  hasInflightLeaseAcquisition = self->_hasInflightLeaseAcquisition;
  if (hasInflightLeaseAcquisition != [(ICMusicSubscriptionLeaseStatus *)equalCopy hasInflightLeaseAcquisition])
  {
    goto LABEL_12;
  }

  takenDueToLeasePrevention = self->_takenDueToLeasePrevention;
  if (takenDueToLeasePrevention != [(ICMusicSubscriptionLeaseStatus *)equalCopy isTakenDueToLeasePrevention])
  {
    goto LABEL_12;
  }

  leaseState = self->_leaseState;
  if (leaseState != [(ICMusicSubscriptionLeaseStatus *)equalCopy leaseState])
  {
    goto LABEL_12;
  }

  stateReasonDialog = self->_stateReasonDialog;
  stateReasonDialog = [(ICMusicSubscriptionLeaseStatus *)equalCopy stateReasonDialog];
  v14 = stateReasonDialog;
  if (stateReasonDialog == stateReasonDialog)
  {
  }

  else
  {
    v15 = self->_stateReasonDialog;
    stateReasonDialog2 = [(ICMusicSubscriptionLeaseStatus *)equalCopy stateReasonDialog];
    LODWORD(v15) = [(ICStoreDialogResponse *)v15 isEqual:stateReasonDialog2];

    if (!v15)
    {
LABEL_12:
      v17 = 0;
      goto LABEL_14;
    }
  }

  stateReasonDialogMetricsDictionary = self->_stateReasonDialogMetricsDictionary;
  stateReasonDialogMetricsDictionary = [(ICMusicSubscriptionLeaseStatus *)equalCopy stateReasonDialogMetricsDictionary];
  if (stateReasonDialogMetricsDictionary == stateReasonDialogMetricsDictionary)
  {
    v17 = 1;
  }

  else
  {
    v21 = self->_stateReasonDialogMetricsDictionary;
    stateReasonDialogMetricsDictionary2 = [(ICMusicSubscriptionLeaseStatus *)equalCopy stateReasonDialogMetricsDictionary];
    v17 = [(NSDictionary *)v21 isEqualToDictionary:stateReasonDialogMetricsDictionary2];
  }

LABEL_14:
  return v17;
}

- (unint64_t)hash
{
  v3 = 2;
  if (!self->_hasOnlinePlaybackKeys)
  {
    v3 = 0;
  }

  v4 = v3 | self->_shouldPlaybackRequireOnlineKeys;
  v5 = 4;
  if (!self->_hasOfflinePlaybackKeys)
  {
    v5 = 0;
  }

  v6 = 8;
  if (!self->_hasPendingLeaseAcquisition)
  {
    v6 = 0;
  }

  v7 = v4 | v5 | v6;
  v8 = 16;
  if (!self->_hasInflightLeaseAcquisition)
  {
    v8 = 0;
  }

  v9 = 32;
  if (!self->_takenDueToLeasePrevention)
  {
    v9 = 0;
  }

  v10 = v7 | v8 | v9;
  leaseState = self->_leaseState;
  v12 = leaseState ^ [(ICStoreDialogResponse *)self->_stateReasonDialog hash];
  return v10 ^ v12 ^ [(NSDictionary *)self->_stateReasonDialogMetricsDictionary hash];
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  if (self->_shouldPlaybackRequireOnlineKeys)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_hasOnlinePlaybackKeys)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_hasOfflinePlaybackKeys)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_hasPendingLeaseAcquisition)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_hasInflightLeaseAcquisition)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_takenDueToLeasePrevention)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  leaseState = self->_leaseState;
  if (leaseState > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = off_1E7BF4A30[leaseState];
  }

  if (self->_stateReasonDialog)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self->_stateReasonDialog];
    v15 = [v17 stringWithFormat:@"<%@ %p shouldPlaybackRequireOnlineKeys: %@ hasOnlinePlaybackKeys: %@; hasOfflinePlaybackKeys: %@; hasPendingLeaseAcquisition: %@, hasInflightLeaseAcquisition: %@, isTakenDueToLeasePrevention:%@, leaseState: %@; stateReasonDialog: %@>", v5, self, v6, v7, v8, v9, v10, v11, v13, v14];;
  }

  else
  {
    v15 = [v17 stringWithFormat:@"<%@ %p shouldPlaybackRequireOnlineKeys: %@ hasOnlinePlaybackKeys: %@; hasOfflinePlaybackKeys: %@; hasPendingLeaseAcquisition: %@, hasInflightLeaseAcquisition: %@, isTakenDueToLeasePrevention:%@, leaseState: %@; stateReasonDialog: %@>", v4, self, v6, v7, v8, v9, v10, v11, v13, 0];;
  }

  return v15;
}

@end