@interface PBFPosterGalleryLayoutPersistence
- (BOOL)saveGalleryLayout:(id)layout returningPersistenceDate:(id *)date error:(id *)error;
- (PBFPosterGalleryLayoutPersistence)initWithURL:(id)l;
- (id)loadNewestUsableGalleryLayoutReturningPersistenceDate:(id *)date purgeableGalleryLayoutURLs:(id *)ls error:(id *)error;
@end

@implementation PBFPosterGalleryLayoutPersistence

- (PBFPosterGalleryLayoutPersistence)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PBFPosterGalleryLayoutPersistence;
  v5 = [(PBFPosterGalleryLayoutPersistence *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (id)loadNewestUsableGalleryLayoutReturningPersistenceDate:(id *)date purgeableGalleryLayoutURLs:(id *)ls error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  url = self->_url;
  v52 = 0;
  v11 = [defaultManager contentsOfDirectoryAtURL:url includingPropertiesForKeys:0 options:5 error:&v52];
  v12 = v52;

  if (v12)
  {
    if (error)
    {
      v13 = v12;
      date = 0;
      *error = v12;
    }

    else
    {
      date = 0;
    }

    goto LABEL_39;
  }

  lsCopy = ls;
  [v11 sortedArrayUsingComparator:&__block_literal_global_19];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = v51 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
  v44 = v14;
  if (!v15)
  {

    if (date)
    {
      dateCopy2 = date;
      v17 = 0;
      date = 0;
      v28 = 0;
      v29 = 0;
      goto LABEL_26;
    }

    v17 = 0;
    v28 = 0;
LABEL_33:
    if (lsCopy)
    {
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v16 = v15;
  errorCopy = error;
  dateCopy2 = date;
  v40 = v11;
  v17 = 0;
  v18 = *v49;
LABEL_6:
  v19 = 0;
  while (1)
  {
    if (*v49 != v18)
    {
      objc_enumerationMutation(v14);
    }

    v20 = *(*(&v48 + 1) + 8 * v19);

    v47 = 0;
    v21 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v20 options:1 error:&v47];
    v17 = v47;
    if (!v21)
    {
      goto LABEL_13;
    }

    v22 = MEMORY[0x277CCAAC8];
    v23 = objc_opt_class();
    v46 = v17;
    date = [v22 unarchivedObjectOfClass:v23 fromData:v21 error:&v46];
    v24 = v46;

    if (date)
    {
      goto LABEL_21;
    }

    v25 = MEMORY[0x277CCAAC8];
    v26 = objc_opt_class();
    v45 = v24;
    v27 = [v25 unarchivedObjectOfClass:v26 fromData:v21 error:&v45];
    v17 = v45;

    date = [v27 posterBoardRepresentation];

    if (date)
    {
      break;
    }

    v14 = v44;
LABEL_13:
    if (v16 == ++v19)
    {
      v16 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v16)
      {
        goto LABEL_6;
      }

      error = errorCopy;
      if (dateCopy2)
      {
        date = 0;
        v28 = 0;
        v29 = 0;
        v11 = v40;
        goto LABEL_26;
      }

      date = 0;
      v28 = 0;
      v11 = v40;
      goto LABEL_33;
    }
  }

  v24 = v17;
  v14 = v44;
LABEL_21:
  v28 = v20;

  v11 = v40;
  error = errorCopy;
  if (!dateCopy2)
  {
    goto LABEL_27;
  }

  if (v28)
  {
    lastPathComponent = [v28 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    [stringByDeletingPathExtension doubleValue];
    v33 = v32;

    v14 = v44;
    v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v33];
  }

  else
  {
    v29 = 0;
  }

  v17 = v24;
LABEL_26:
  v34 = v29;
  *dateCopy2 = v34;

  v24 = v17;
LABEL_27:
  if (lsCopy)
  {
    if (v28)
    {
      v35 = [v14 mutableCopy];
      [v35 removeObject:v28];
      v36 = [v35 copy];

      v14 = v44;
      v17 = v24;
      goto LABEL_35;
    }

    v17 = v24;
LABEL_34:
    v36 = v14;
    v28 = 0;
LABEL_35:
    v37 = v36;
    *lsCopy = v36;
  }

  else
  {
    v17 = v24;
  }

LABEL_36:
  if (error)
  {
    v38 = v17;
    *error = v17;
  }

LABEL_39:

  return date;
}

uint64_t __124__PBFPosterGalleryLayoutPersistence_loadNewestUsableGalleryLayoutReturningPersistenceDate_purgeableGalleryLayoutURLs_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];

  v7 = [v4 lastPathComponent];

  v8 = [v7 stringByDeletingPathExtension];

  v9 = [v8 compare:v6 options:64];
  return v9;
}

- (BOOL)saveGalleryLayout:(id)layout returningPersistenceDate:(id *)date error:(id *)error
{
  v24 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:layout requiringSecureCoding:1 error:&v24];
  v9 = v24;
  v10 = v9;
  if (v8)
  {
    date = [MEMORY[0x277CBEAA8] date];
    url = self->_url;
    v13 = MEMORY[0x277CCACA8];
    [date timeIntervalSince1970];
    v15 = [v13 stringWithFormat:@"%f", v14];
    v16 = [(NSURL *)url URLByAppendingPathComponent:v15];
    v17 = [v16 URLByAppendingPathExtension:@"plist"];

    v23 = 0;
    v18 = [v8 writeToURL:v17 options:268435457 error:&v23];
    v19 = v23;
    v20 = v19;
    if (v18)
    {
      v19 = date;
      error = date;
      if (!date)
      {
        goto LABEL_9;
      }
    }

    else if (!error)
    {
LABEL_9:

      goto LABEL_10;
    }

    *error = v19;
    goto LABEL_9;
  }

  if (error)
  {
    v21 = v9;
    v18 = 0;
    *error = v10;
  }

  else
  {
    v18 = 0;
  }

LABEL_10:

  return v18;
}

@end