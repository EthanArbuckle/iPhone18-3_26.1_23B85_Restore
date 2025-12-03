@interface VUIMediaEntityAssetControllerState
- (BOOL)isEqual:(id)equal;
- (VUIMediaEntityAssetControllerState)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIMediaEntityAssetControllerState

- (VUIMediaEntityAssetControllerState)init
{
  v3.receiver = self;
  v3.super_class = VUIMediaEntityAssetControllerState;
  result = [(VUIMediaEntityAssetControllerState *)&v3 init];
  if (result)
  {
    result->_status = 0;
    result->_downloadProgress = -1.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VUIMediaEntityAssetControllerState);
  v4->_status = self->_status;
  v4->_downloadProgress = self->_downloadProgress;
  v4->_bytesDownloaded = self->_bytesDownloaded;
  v4->_bytesToDownload = self->_bytesToDownload;
  v4->_supportsCancellation = self->_supportsCancellation;
  v4->_supportsPausing = self->_supportsPausing;
  v4->_renewsOfflineKeysAutomatically = self->_renewsOfflineKeysAutomatically;
  objc_storeStrong(&v4->_downloadExpirationDate, self->_downloadExpirationDate);
  objc_storeStrong(&v4->_availabilityEndDate, self->_availabilityEndDate);
  v4->_allowsCellular = self->_allowsCellular;
  v4->_downloadFailedDueToError = self->_downloadFailedDueToError;
  return v4;
}

- (unint64_t)hash
{
  status = [(VUIMediaEntityAssetControllerState *)self status];
  [(VUIMediaEntityAssetControllerState *)self downloadProgress];
  v5 = (v4 * 100.0);
  bytesToDownload = [(VUIMediaEntityAssetControllerState *)self bytesToDownload];
  v7 = status ^ (4 * bytesToDownload) ^ (2 * v5) ^ (8 * [(VUIMediaEntityAssetControllerState *)self bytesDownloaded]);
  [(VUIMediaEntityAssetControllerState *)self supportsCancellation];
  [(VUIMediaEntityAssetControllerState *)self supportsPausing];
  [(VUIMediaEntityAssetControllerState *)self renewsOfflineKeysAutomatically];
  allowsCellular = [(VUIMediaEntityAssetControllerState *)self allowsCellular];
  v9 = 128;
  if (!allowsCellular)
  {
    v9 = 0;
  }

  v10 = v9 & v7;
  downloadFailedDueToError = [(VUIMediaEntityAssetControllerState *)self downloadFailedDueToError];
  v12 = 256;
  if (!downloadFailedDueToError)
  {
    v12 = 0;
  }

  v13 = v10 | v12;
  downloadExpirationDate = [(VUIMediaEntityAssetControllerState *)self downloadExpirationDate];
  v15 = [downloadExpirationDate hash];

  availabilityEndDate = [(VUIMediaEntityAssetControllerState *)self availabilityEndDate];
  v17 = v15 ^ [availabilityEndDate hash];

  return v17 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v21) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    downloadExpirationDate = [(VUIMediaEntityAssetControllerState *)self downloadExpirationDate];
    downloadExpirationDate2 = [(VUIMediaEntityAssetControllerState *)v6 downloadExpirationDate];
    availabilityEndDate = [(VUIMediaEntityAssetControllerState *)self availabilityEndDate];
    availabilityEndDate2 = [(VUIMediaEntityAssetControllerState *)v6 availabilityEndDate];
    status = [(VUIMediaEntityAssetControllerState *)self status];
    if (status == -[VUIMediaEntityAssetControllerState status](v6, "status") && (-[VUIMediaEntityAssetControllerState downloadProgress](self, "downloadProgress"), v13 = v12, -[VUIMediaEntityAssetControllerState downloadProgress](v6, "downloadProgress"), v13 == v14) && (v15 = -[VUIMediaEntityAssetControllerState bytesToDownload](self, "bytesToDownload"), v15 == -[VUIMediaEntityAssetControllerState bytesToDownload](v6, "bytesToDownload")) && (v16 = -[VUIMediaEntityAssetControllerState bytesDownloaded](self, "bytesDownloaded"), v16 == -[VUIMediaEntityAssetControllerState bytesDownloaded](v6, "bytesDownloaded")) && (v17 = -[VUIMediaEntityAssetControllerState supportsCancellation](self, "supportsCancellation"), v17 == -[VUIMediaEntityAssetControllerState supportsCancellation](v6, "supportsCancellation")) && (v18 = -[VUIMediaEntityAssetControllerState supportsPausing](self, "supportsPausing"), v18 == -[VUIMediaEntityAssetControllerState supportsPausing](v6, "supportsPausing")) && (v19 = -[VUIMediaEntityAssetControllerState renewsOfflineKeysAutomatically](self, "renewsOfflineKeysAutomatically"), v19 == -[VUIMediaEntityAssetControllerState renewsOfflineKeysAutomatically](v6, "renewsOfflineKeysAutomatically")) && (v20 = -[VUIMediaEntityAssetControllerState allowsCellular](self, "allowsCellular"), v20 == -[VUIMediaEntityAssetControllerState allowsCellular](v6, "allowsCellular")) && (!(downloadExpirationDate | downloadExpirationDate2) || [downloadExpirationDate isEqualToDate:downloadExpirationDate2]) && (!(availabilityEndDate | availabilityEndDate2) || objc_msgSend(availabilityEndDate, "isEqualToDate:", availabilityEndDate2)))
    {
      downloadFailedDueToError = [(VUIMediaEntityAssetControllerState *)self downloadFailedDueToError];
      v21 = downloadFailedDueToError ^ [(VUIMediaEntityAssetControllerState *)v6 downloadFailedDueToError]^ 1;
    }

    else
    {
      LOBYTE(v21) = 0;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46.receiver = self;
  v46.super_class = VUIMediaEntityAssetControllerState;
  v4 = [(VUIMediaEntityAssetControllerState *)&v46 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = VUIMediaEntityAssetControllerStatusLogString([(VUIMediaEntityAssetControllerState *)self status]);
  v7 = [v5 stringWithFormat:@"%@=%@", @"status", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = MEMORY[0x1E696AD98];
  [(VUIMediaEntityAssetControllerState *)self downloadProgress];
  v10 = [v9 numberWithDouble:?];
  v11 = [v8 stringWithFormat:@"%@=%@", @"downloadProgress", v10];
  [v3 addObject:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMediaEntityAssetControllerState bytesToDownload](self, "bytesToDownload")}];
  v14 = [v12 stringWithFormat:@"%@=%@", @"bytesToDownload", v13];
  [v3 addObject:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMediaEntityAssetControllerState bytesDownloaded](self, "bytesDownloaded")}];
  v17 = [v15 stringWithFormat:@"%@=%@", @"bytesDownloaded", v16];
  [v3 addObject:v17];

  v18 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityAssetControllerState *)self isDownloadInProgress];
  v19 = VUIBoolLogString();
  v20 = [v18 stringWithFormat:@"%@=%@", @"isDownloadInProgress", v19];
  [v3 addObject:v20];

  v21 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityAssetControllerState *)self supportsCancellation];
  v22 = VUIBoolLogString();
  v23 = [v21 stringWithFormat:@"%@=%@", @"supportsCancellation", v22];
  [v3 addObject:v23];

  v24 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityAssetControllerState *)self supportsPausing];
  v25 = VUIBoolLogString();
  v26 = [v24 stringWithFormat:@"%@=%@", @"supportsPausing", v25];
  [v3 addObject:v26];

  v27 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityAssetControllerState *)self renewsOfflineKeysAutomatically];
  v28 = VUIBoolLogString();
  v29 = [v27 stringWithFormat:@"%@=%@", @"renewsOfflineKeysAutomatically", v28];
  [v3 addObject:v29];

  v30 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityAssetControllerState *)self allowsCellular];
  v31 = VUIBoolLogString();
  v32 = [v30 stringWithFormat:@"%@=%@", @"allowsCellular", v31];
  [v3 addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  downloadExpirationDate = [(VUIMediaEntityAssetControllerState *)self downloadExpirationDate];
  v35 = [v33 stringWithFormat:@"%@=%@", @"downloadExpirationDate", downloadExpirationDate];
  [v3 addObject:v35];

  v36 = MEMORY[0x1E696AEC0];
  availabilityEndDate = [(VUIMediaEntityAssetControllerState *)self availabilityEndDate];
  v38 = [v36 stringWithFormat:@"%@=%@", @"availabilityEndDate", availabilityEndDate];
  [v3 addObject:v38];

  v39 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityAssetControllerState *)self downloadFailedDueToError];
  v40 = VUIBoolLogString();
  v41 = [v39 stringWithFormat:@"%@=%@", @"downloadFailedDueToError", v40];
  [v3 addObject:v41];

  v42 = MEMORY[0x1E696AEC0];
  v43 = [v3 componentsJoinedByString:{@", "}];
  v44 = [v42 stringWithFormat:@"<%@>", v43];

  return v44;
}

@end