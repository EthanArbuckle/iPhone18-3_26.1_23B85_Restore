@interface SSDownloadManagerOptions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SSDownloadManagerOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSArray *)self->_downloadKinds copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_filterExternalOriginatedDownloads;
  *(v5 + 48) = self->_ignoreDivertedDownloads;
  v8 = [(NSString *)self->_persistenceIdentifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSArray *)self->_prefetchedDownloadExternalProperties copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSArray *)self->_prefetchedDownloadProperties copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    shouldFilterExternalOriginatedDownloads = [(SSDownloadManagerOptions *)self shouldFilterExternalOriginatedDownloads];
    if (shouldFilterExternalOriginatedDownloads == [equalCopy shouldFilterExternalOriginatedDownloads])
    {
      ignoreDivertedDownloads = [(SSDownloadManagerOptions *)self ignoreDivertedDownloads];
      if (ignoreDivertedDownloads == [equalCopy ignoreDivertedDownloads])
      {
        persistenceIdentifier = [(SSDownloadManagerOptions *)self persistenceIdentifier];
        persistenceIdentifier2 = [equalCopy persistenceIdentifier];
        if (persistenceIdentifier != persistenceIdentifier2)
        {
          persistenceIdentifier3 = [(SSDownloadManagerOptions *)self persistenceIdentifier];
          persistenceIdentifier4 = [equalCopy persistenceIdentifier];
          v37 = persistenceIdentifier3;
          if (![persistenceIdentifier3 isEqual:persistenceIdentifier4])
          {
            v10 = 0;
            goto LABEL_26;
          }
        }

        downloadKinds = [(SSDownloadManagerOptions *)self downloadKinds];
        downloadKinds2 = [equalCopy downloadKinds];
        if (downloadKinds != downloadKinds2)
        {
          downloadKinds3 = [(SSDownloadManagerOptions *)self downloadKinds];
          downloadKinds4 = [equalCopy downloadKinds];
          if (![downloadKinds3 isEqualToArray:downloadKinds4])
          {
            v10 = 0;
LABEL_24:

LABEL_25:
            if (persistenceIdentifier == persistenceIdentifier2)
            {
LABEL_27:

              goto LABEL_5;
            }

LABEL_26:

            goto LABEL_27;
          }

          v35 = downloadKinds3;
        }

        prefetchedDownloadExternalProperties = [(SSDownloadManagerOptions *)self prefetchedDownloadExternalProperties];
        prefetchedDownloadExternalProperties2 = [equalCopy prefetchedDownloadExternalProperties];
        v36 = prefetchedDownloadExternalProperties;
        if (prefetchedDownloadExternalProperties == prefetchedDownloadExternalProperties2)
        {
          v33 = downloadKinds4;
          v34 = downloadKinds2;
        }

        else
        {
          prefetchedDownloadExternalProperties3 = [(SSDownloadManagerOptions *)self prefetchedDownloadExternalProperties];
          prefetchedDownloadExternalProperties4 = [equalCopy prefetchedDownloadExternalProperties];
          v32 = prefetchedDownloadExternalProperties3;
          if (![prefetchedDownloadExternalProperties3 isEqualToArray:?])
          {
            v10 = 0;
            v29 = v36;
            goto LABEL_22;
          }

          v33 = downloadKinds4;
          v34 = downloadKinds2;
        }

        prefetchedDownloadProperties = [(SSDownloadManagerOptions *)self prefetchedDownloadProperties];
        prefetchedDownloadProperties2 = [equalCopy prefetchedDownloadProperties];
        v23 = prefetchedDownloadProperties2;
        if (prefetchedDownloadProperties == prefetchedDownloadProperties2)
        {

          v10 = 1;
        }

        else
        {
          prefetchedDownloadProperties3 = [(SSDownloadManagerOptions *)self prefetchedDownloadProperties];
          [equalCopy prefetchedDownloadProperties];
          v30 = persistenceIdentifier2;
          v25 = persistenceIdentifier;
          v26 = downloadKinds;
          v28 = v27 = persistenceIdentifier4;
          v10 = [prefetchedDownloadProperties3 isEqualToArray:v28];

          persistenceIdentifier4 = v27;
          downloadKinds = v26;
          persistenceIdentifier = v25;
          persistenceIdentifier2 = v30;
        }

        v29 = v36;
        downloadKinds4 = v33;
        downloadKinds2 = v34;
        if (v36 == prefetchedDownloadExternalProperties2)
        {
LABEL_23:

          downloadKinds3 = v35;
          if (downloadKinds == downloadKinds2)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

LABEL_22:

        goto LABEL_23;
      }
    }
  }

  v10 = 0;
LABEL_5:

  return v10;
}

@end