@interface PBFDataStoreArchiveMetadata
- (BOOL)isEqual:(id)a3;
- (PBFDataStoreArchiveMetadata)initWithURL:(id)a3;
@end

@implementation PBFDataStoreArchiveMetadata

- (PBFDataStoreArchiveMetadata)initWithURL:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PBFDataStoreArchiveMetadata;
  v5 = [(PBFDataStoreArchiveMetadata *)&v21 init];
  if (v5)
  {
    v6 = [v4 copy];
    archiveURL = v5->_archiveURL;
    v5->_archiveURL = v6;

    v8 = [v4 lastPathComponent];
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v9 = _PBFDistillFileNameIntoArchiveComponents(v8, &v20, &v19, &v18);
    v10 = v19;
    v11 = v18;
    if (!v9)
    {

      v16 = 0;
      goto LABEL_6;
    }

    archiveName = v5->_archiveName;
    v5->_archiveName = v11;
    v13 = v11;

    v5->_version = v20;
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;
    v15 = v10;
  }

  v16 = v5;
LABEL_6:

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(NSURL *)v4->_archiveURL isEqual:self->_archiveURL];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end