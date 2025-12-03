@interface PBFDataStoreArchiveMetadata
- (BOOL)isEqual:(id)equal;
- (PBFDataStoreArchiveMetadata)initWithURL:(id)l;
@end

@implementation PBFDataStoreArchiveMetadata

- (PBFDataStoreArchiveMetadata)initWithURL:(id)l
{
  lCopy = l;
  v21.receiver = self;
  v21.super_class = PBFDataStoreArchiveMetadata;
  v5 = [(PBFDataStoreArchiveMetadata *)&v21 init];
  if (v5)
  {
    v6 = [lCopy copy];
    archiveURL = v5->_archiveURL;
    v5->_archiveURL = v6;

    lastPathComponent = [lCopy lastPathComponent];
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v9 = _PBFDistillFileNameIntoArchiveComponents(lastPathComponent, &v20, &v19, &v18);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(NSURL *)equalCopy->_archiveURL isEqual:self->_archiveURL];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end