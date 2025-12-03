@interface SUDownload
- (BOOL)matchesScanResults:(id)results;
- (SUDownload)init;
- (SUDownload)initWithCoder:(id)coder;
- (SUDownloadMetadata)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)totalSpaceConsumed;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUDownload

- (BOOL)matchesScanResults:(id)results
{
  resultsCopy = results;
  descriptor = [(SUDownload *)self descriptor];
  preferredDescriptor = [resultsCopy preferredDescriptor];
  v35 = 0;
  v7 = [descriptor matchesDescriptor:preferredDescriptor comparisonFlags:2 reason:&v35];
  v8 = v35;

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    humanReadableUpdateName = [descriptor humanReadableUpdateName];
    preferredDescriptor2 = [resultsCopy preferredDescriptor];
    humanReadableUpdateName2 = [preferredDescriptor2 humanReadableUpdateName];
    SULogInfo(@"%@ (download) doesn't match %@ (preferred): %@", v12, v13, v14, v15, v16, v17, v18, humanReadableUpdateName);

    alternateDescriptor = [resultsCopy alternateDescriptor];
    v34 = v8;
    v20 = [descriptor matchesDescriptor:alternateDescriptor comparisonFlags:2 reason:&v34];
    v21 = v34;

    if (v20)
    {
      v9 = 1;
    }

    else
    {
      humanReadableUpdateName3 = [descriptor humanReadableUpdateName];
      preferredDescriptor3 = [resultsCopy preferredDescriptor];
      humanReadableUpdateName4 = [preferredDescriptor3 humanReadableUpdateName];
      SULogInfo(@"%@ (download) doesn't match %@ (alternate): %@", v24, v25, v26, v27, v28, v29, v30, humanReadableUpdateName3);

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
  activeDownloadPolicy = [(SUDownloadOptions *)self->_downloadOptions activeDownloadPolicy];
  [(SUMutableDownloadMetadata *)v3 applyDownloadPolicy:activeDownloadPolicy];

  return v3;
}

- (SUDownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SUDownload *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    [(SUDownload *)v5 setProgress:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    [(SUDownload *)v5 setDescriptor:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadOptions"];
    [(SUDownload *)v5 setDownloadOptions:v8];

    -[SUDownload setPromoted:](v5, "setPromoted:", [coderCopy decodeBoolForKey:@"promoted"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  progress = [(SUDownload *)self progress];
  [coderCopy encodeObject:progress forKey:@"progress"];

  descriptor = [(SUDownload *)self descriptor];
  [coderCopy encodeObject:descriptor forKey:@"descriptor"];

  downloadOptions = [(SUDownload *)self downloadOptions];
  [coderCopy encodeObject:downloadOptions forKey:@"downloadOptions"];

  [coderCopy encodeBool:-[SUDownload isPromoted](self forKey:{"isPromoted"), @"promoted"}];
}

- (id)copyWithZone:(_NSZone *)zone
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
    phase = [(SUOperationProgress *)self->_progress phase];
    descriptor = self->_descriptor;
    if (self->_progress)
    {
      v5 = phase == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      totalRequiredFreeSpace = [(SUDescriptor *)descriptor totalRequiredFreeSpace];
    }

    else
    {
      _isStreamingZipCapable = [(SUDescriptor *)descriptor _isStreamingZipCapable];
      if ([phase isEqualToString:@"SUDownloadPhasePreparingForInstallation"])
      {
        _unarchiveSize = [(SUDescriptor *)self->_descriptor _unarchiveSize];
        _msuPrepareSize = [(SUDescriptor *)self->_descriptor _msuPrepareSize];
LABEL_12:
        v11 = _msuPrepareSize;
        [(SUOperationProgress *)self->_progress percentComplete];
        v13 = fmaxf(fminf(v12, 1.0), 0.0);
        v14 = _unarchiveSize;
LABEL_13:
        v7 = (v14 + (v11 * v13));
        goto LABEL_14;
      }

      if ([phase isEqualToString:@"SUDownloadPhaseExtracting"])
      {
        v16 = self->_descriptor;
        if (!_isStreamingZipCapable)
        {
          _unarchiveSize = [(SUDescriptor *)v16 downloadSize];
          _msuPrepareSize = [(SUDescriptor *)self->_descriptor _unarchiveSize];
          goto LABEL_12;
        }
      }

      else
      {
        if (![phase isEqualToString:@"SUDownloadPhaseVerifying"])
        {
          if (!SUDownloadPhaseIsFetchingUpdate(phase, v17))
          {
            v7 = 0;
            goto LABEL_14;
          }

          v18 = self->_descriptor;
          if (_isStreamingZipCapable)
          {
            _unarchiveSize2 = [(SUDescriptor *)v18 _unarchiveSize];
          }

          else
          {
            _unarchiveSize2 = [(SUDescriptor *)v18 downloadSize];
          }

          v11 = _unarchiveSize2;
          [(SUOperationProgress *)self->_progress percentComplete];
          v14 = 0.0;
          v13 = fmaxf(fminf(v20, 1.0), 0.0);
          goto LABEL_13;
        }

        v16 = self->_descriptor;
        if (!_isStreamingZipCapable)
        {
          totalRequiredFreeSpace = [(SUDescriptor *)v16 downloadSize];
          goto LABEL_8;
        }
      }

      totalRequiredFreeSpace = [(SUDescriptor *)v16 _unarchiveSize];
    }

LABEL_8:
    v7 = totalRequiredFreeSpace;
LABEL_14:

    return v7;
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  descriptor = [(SUDownload *)self descriptor];
  downloadOptions = [(SUDownload *)self downloadOptions];
  progress = [(SUDownload *)self progress];
  isPromoted = [(SUDownload *)self isPromoted];
  v8 = @"NO";
  if (isPromoted)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"\n            Descriptor: %@\n            DownloadOptions: %@\n            Progress: %@\n            isPromoted: %@", descriptor, downloadOptions, progress, v8];

  return v9;
}

@end