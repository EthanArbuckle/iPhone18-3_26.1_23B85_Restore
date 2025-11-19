@interface SSDownloadManagerOptions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SSDownloadManagerOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSArray *)self->_downloadKinds copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_filterExternalOriginatedDownloads;
  *(v5 + 48) = self->_ignoreDivertedDownloads;
  v8 = [(NSString *)self->_persistenceIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSArray *)self->_prefetchedDownloadExternalProperties copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSArray *)self->_prefetchedDownloadProperties copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v8 = [(SSDownloadManagerOptions *)self shouldFilterExternalOriginatedDownloads];
    if (v8 == [v6 shouldFilterExternalOriginatedDownloads])
    {
      v9 = [(SSDownloadManagerOptions *)self ignoreDivertedDownloads];
      if (v9 == [v6 ignoreDivertedDownloads])
      {
        v12 = [(SSDownloadManagerOptions *)self persistenceIdentifier];
        v13 = [v6 persistenceIdentifier];
        if (v12 != v13)
        {
          v14 = [(SSDownloadManagerOptions *)self persistenceIdentifier];
          v3 = [v6 persistenceIdentifier];
          v37 = v14;
          if (![v14 isEqual:v3])
          {
            v10 = 0;
            goto LABEL_26;
          }
        }

        v15 = [(SSDownloadManagerOptions *)self downloadKinds];
        v16 = [v6 downloadKinds];
        if (v15 != v16)
        {
          v17 = [(SSDownloadManagerOptions *)self downloadKinds];
          v4 = [v6 downloadKinds];
          if (![v17 isEqualToArray:v4])
          {
            v10 = 0;
LABEL_24:

LABEL_25:
            if (v12 == v13)
            {
LABEL_27:

              goto LABEL_5;
            }

LABEL_26:

            goto LABEL_27;
          }

          v35 = v17;
        }

        v18 = [(SSDownloadManagerOptions *)self prefetchedDownloadExternalProperties];
        v19 = [v6 prefetchedDownloadExternalProperties];
        v36 = v18;
        if (v18 == v19)
        {
          v33 = v4;
          v34 = v16;
        }

        else
        {
          v20 = [(SSDownloadManagerOptions *)self prefetchedDownloadExternalProperties];
          v31 = [v6 prefetchedDownloadExternalProperties];
          v32 = v20;
          if (![v20 isEqualToArray:?])
          {
            v10 = 0;
            v29 = v36;
            goto LABEL_22;
          }

          v33 = v4;
          v34 = v16;
        }

        v21 = [(SSDownloadManagerOptions *)self prefetchedDownloadProperties];
        v22 = [v6 prefetchedDownloadProperties];
        v23 = v22;
        if (v21 == v22)
        {

          v10 = 1;
        }

        else
        {
          v24 = [(SSDownloadManagerOptions *)self prefetchedDownloadProperties];
          [v6 prefetchedDownloadProperties];
          v30 = v13;
          v25 = v12;
          v26 = v15;
          v28 = v27 = v3;
          v10 = [v24 isEqualToArray:v28];

          v3 = v27;
          v15 = v26;
          v12 = v25;
          v13 = v30;
        }

        v29 = v36;
        v4 = v33;
        v16 = v34;
        if (v36 == v19)
        {
LABEL_23:

          v17 = v35;
          if (v15 == v16)
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