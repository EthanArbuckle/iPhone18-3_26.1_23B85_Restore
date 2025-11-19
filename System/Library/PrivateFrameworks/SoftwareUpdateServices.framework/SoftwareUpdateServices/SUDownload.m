@interface SUDownload
- (BOOL)matchesScanResults:(id)a3;
- (SUDownload)init;
- (SUDownload)initWithCoder:(id)a3;
- (SUDownloadMetadata)metadata;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)totalSpaceConsumed;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUDownload

- (BOOL)matchesScanResults:(id)a3
{
  v4 = a3;
  v5 = [(SUDownload *)self descriptor];
  v6 = [v4 preferredDescriptor];
  v35 = 0;
  v7 = [v5 matchesDescriptor:v6 comparisonFlags:2 reason:&v35];
  v8 = v35;

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v5 humanReadableUpdateName];
    v11 = [v4 preferredDescriptor];
    v32 = [v11 humanReadableUpdateName];
    SULogInfo(@"%@ (download) doesn't match %@ (preferred): %@", v12, v13, v14, v15, v16, v17, v18, v10);

    v19 = [v4 alternateDescriptor];
    v34 = v8;
    v20 = [v5 matchesDescriptor:v19 comparisonFlags:2 reason:&v34];
    v21 = v34;

    if (v20)
    {
      v9 = 1;
    }

    else
    {
      v22 = [v5 humanReadableUpdateName];
      v23 = [v4 preferredDescriptor];
      v33 = [v23 humanReadableUpdateName];
      SULogInfo(@"%@ (download) doesn't match %@ (alternate): %@", v24, v25, v26, v27, v28, v29, v30, v22);

      v9 = 0;
    }

    v8 = v21;
  }

  return v9;
}

- (SUDownload)init
{
  v8.receiver = self;
  v8.super_class = SUDownload;
  v2 = [(SUDownload *)&v8 init];
  v3 = v2;
  if (v2)
  {
    progress = v2->_progress;
    v2->_progress = 0;

    descriptor = v3->_descriptor;
    v3->_descriptor = 0;

    downloadOptions = v3->_downloadOptions;
    v3->_downloadOptions = 0;

    v3->_promoted = 0;
  }

  return v3;
}

- (SUDownloadMetadata)metadata
{
  v3 = objc_alloc_init(SUMutableDownloadMetadata);
  [(SUDownloadMetadata *)v3 setAutoDownload:[(SUDownloadOptions *)self->_downloadOptions isAutoDownload]];
  [(SUDownloadMetadata *)v3 setDownloadOnly:[(SUDownloadOptions *)self->_downloadOptions isDownloadOnly]];
  [(SUDownloadMetadata *)v3 setDownloadFeeAgreementStatus:[(SUDownloadOptions *)self->_downloadOptions downloadFeeAgreementStatus]];
  [(SUDownloadMetadata *)v3 setTermsAndConditionsAgreementStatus:[(SUDownloadOptions *)self->_downloadOptions termsAndConditionsAgreementStatus]];
  v4 = [(SUDownloadOptions *)self->_downloadOptions activeDownloadPolicy];
  [(SUMutableDownloadMetadata *)v3 applyDownloadPolicy:v4];

  return v3;
}

- (SUDownload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUDownload *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    [(SUDownload *)v5 setProgress:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    [(SUDownload *)v5 setDescriptor:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadOptions"];
    [(SUDownload *)v5 setDownloadOptions:v8];

    -[SUDownload setPromoted:](v5, "setPromoted:", [v4 decodeBoolForKey:@"promoted"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(SUDownload *)self progress];
  [v7 encodeObject:v4 forKey:@"progress"];

  v5 = [(SUDownload *)self descriptor];
  [v7 encodeObject:v5 forKey:@"descriptor"];

  v6 = [(SUDownload *)self downloadOptions];
  [v7 encodeObject:v6 forKey:@"downloadOptions"];

  [v7 encodeBool:-[SUDownload isPromoted](self forKey:{"isPromoted"), @"promoted"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(SUOperationProgress *)self->_progress copy];
  [v4 setProgress:v5];

  v6 = [(SUDescriptor *)self->_descriptor copy];
  [v4 setDescriptor:v6];

  v7 = [(SUDownloadOptions *)self->_downloadOptions copy];
  [v4 setDownloadOptions:v7];

  [v4 setPromoted:self->_promoted];
  return v4;
}

- (unint64_t)totalSpaceConsumed
{
  if (self->_descriptor)
  {
    v3 = [(SUOperationProgress *)self->_progress phase];
    descriptor = self->_descriptor;
    if (self->_progress)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = [(SUDescriptor *)descriptor totalRequiredFreeSpace];
    }

    else
    {
      v8 = [(SUDescriptor *)descriptor _isStreamingZipCapable];
      if ([v3 isEqualToString:@"SUDownloadPhasePreparingForInstallation"])
      {
        v9 = [(SUDescriptor *)self->_descriptor _unarchiveSize];
        v10 = [(SUDescriptor *)self->_descriptor _msuPrepareSize];
LABEL_12:
        v11 = v10;
        [(SUOperationProgress *)self->_progress percentComplete];
        v13 = fmaxf(fminf(v12, 1.0), 0.0);
        v14 = v9;
LABEL_13:
        v7 = (v14 + (v11 * v13));
        goto LABEL_14;
      }

      if ([v3 isEqualToString:@"SUDownloadPhaseExtracting"])
      {
        v16 = self->_descriptor;
        if (!v8)
        {
          v9 = [(SUDescriptor *)v16 downloadSize];
          v10 = [(SUDescriptor *)self->_descriptor _unarchiveSize];
          goto LABEL_12;
        }
      }

      else
      {
        if (![v3 isEqualToString:@"SUDownloadPhaseVerifying"])
        {
          if (!SUDownloadPhaseIsFetchingUpdate(v3, v17))
          {
            v7 = 0;
            goto LABEL_14;
          }

          v18 = self->_descriptor;
          if (v8)
          {
            v19 = [(SUDescriptor *)v18 _unarchiveSize];
          }

          else
          {
            v19 = [(SUDescriptor *)v18 downloadSize];
          }

          v11 = v19;
          [(SUOperationProgress *)self->_progress percentComplete];
          v14 = 0.0;
          v13 = fmaxf(fminf(v20, 1.0), 0.0);
          goto LABEL_13;
        }

        v16 = self->_descriptor;
        if (!v8)
        {
          v6 = [(SUDescriptor *)v16 downloadSize];
          goto LABEL_8;
        }
      }

      v6 = [(SUDescriptor *)v16 _unarchiveSize];
    }

LABEL_8:
    v7 = v6;
LABEL_14:

    return v7;
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUDownload *)self descriptor];
  v5 = [(SUDownload *)self downloadOptions];
  v6 = [(SUDownload *)self progress];
  v7 = [(SUDownload *)self isPromoted];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"\n            Descriptor: %@\n            DownloadOptions: %@\n            Progress: %@\n            isPromoted: %@", v4, v5, v6, v8];

  return v9;
}

@end