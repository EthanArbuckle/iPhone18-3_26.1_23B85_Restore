@interface BRFieldXattrBlob
+ (BOOL)loadXattrsFromURL:(id)l structuralBlob:(id *)blob contentBlob:(id *)contentBlob localBlob:(id *)localBlob withMaximumSize:(unint64_t)size error:(id *)error;
+ (void)loadXattrsFromDictionary:(id)dictionary structuralBlob:(id *)blob contentBlob:(id *)contentBlob;
- (BOOL)applyToFileDescriptor:(int)descriptor error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)shortDescription;
- (void)addXattrs:(id)xattrs;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BRFieldXattrBlob

+ (void)loadXattrsFromDictionary:(id)dictionary structuralBlob:(id *)blob contentBlob:(id *)contentBlob
{
  v34 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v28 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = dictionaryCopy;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      contentBlobCopy = contentBlob;
      blobCopy = blob;
      v25 = dictionaryCopy;
      v26 = 0;
      v27 = 0;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          if (([v13 isEqualToString:{@"com.apple.fpfs.fileid", contentBlobCopy}] & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"com.apple.clouddocs.private.share-bookmark#B") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"com.apple.clouddocs.private.trash-parent-bookmark#B") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"com.apple.finder.copy.preserveinbackups.com.apple.clouddocs.private.share-bookmark#N") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"com.apple.finder.copy.preserveinbackups.com.apple.clouddocs.private.trash-parent-bookmark#N") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"com.apple.fileprovider.trash-put-back#PN") & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"com.apple.clouddocs.local.fpfs.ct.version.identifier#CB") & 1) == 0)
          {
            [v28 setName:v13];
            v14 = [v8 objectForKeyedSubscript:v13];
            [v28 setValue:v14];

            v15 = objc_alloc_init(MEMORY[0x277D43178]);
            [v28 writeTo:v15];
            if ((brc_xattr_flags_from_name([v13 cStringUsingEncoding:4]) & 2) != 0)
            {
              v16 = v26;
              if (!v26)
              {
                v16 = objc_alloc_init(MEMORY[0x277D43178]);
                v26 = v16;
              }
            }

            else
            {
              v16 = v27;
              if (!v27)
              {
                v16 = objc_alloc_init(MEMORY[0x277D43178]);
                v27 = v16;
              }
            }

            data = [v15 data];
            [v16 writeData:data forTag:1];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);

      if (v26)
      {
        data2 = [v26 data];
        v19 = *contentBlobCopy;
        *contentBlobCopy = data2;
      }

      dictionaryCopy = v25;
      if (!v27)
      {
        v27 = 0;
        v21 = v26;
        goto LABEL_29;
      }

      data3 = [v27 data];
      v8 = *blobCopy;
      *blobCopy = data3;
      v21 = v26;
    }

    else
    {
      v21 = 0;
      v27 = 0;
    }

LABEL_29:
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (BOOL)loadXattrsFromURL:(id)l structuralBlob:(id *)blob contentBlob:(id *)contentBlob localBlob:(id *)localBlob withMaximumSize:(unint64_t)size error:(id *)error
{
  lCopy = l;
  v15 = openat(-1, [lCopy fileSystemRepresentation], 33028, 0);
  if ((v15 & 0x80000000) != 0)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      [BRFieldXattrBlob(BRCStageAdditions) loadXattrsFromURL:lCopy structuralBlob:v18 contentBlob:v19 localBlob:? withMaximumSize:? error:?];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] br_errorFromErrno];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v16 = v15;
    v17 = [self loadXattrsFromFD:v15 structuralBlob:blob contentBlob:contentBlob localBlob:localBlob withMaximumSize:size error:error];
    close(v16);
  }

  return v17;
}

- (BOOL)applyToFileDescriptor:(int)descriptor error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_xattrs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        value = [v11 value];
        name = [v11 name];
        fileSystemRepresentation = [name fileSystemRepresentation];

        v15 = brc_bread_crumbs();
        v16 = brc_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [value length];
          *buf = 136315650;
          v32 = fileSystemRepresentation;
          v33 = 2048;
          v34 = v17;
          v35 = 2112;
          v36 = v15;
          _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] added xattr %s (%lld bytes)%@", buf, 0x20u);
        }

        if (fsetxattr(descriptor, fileSystemRepresentation, [value bytes], objc_msgSend(value, "length"), 0, 0) < 0)
        {
          br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
          if (br_errorFromErrno)
          {
            v20 = brc_bread_crumbs();
            v21 = brc_default_log();
            if (os_log_type_enabled(v21, 0x90u))
            {
              v25 = "(passed to caller)";
              *buf = 136315906;
              v32 = "[BRFieldXattrBlob(BRCStageAdditions) applyToFileDescriptor:error:]";
              v33 = 2080;
              if (!errorCopy)
              {
                v25 = "(ignored by caller)";
              }

              v34 = v25;
              v35 = 2112;
              v36 = br_errorFromErrno;
              v37 = 2112;
              v38 = v20;
              _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
            }
          }

          if (errorCopy)
          {
            v22 = br_errorFromErrno;
            *errorCopy = br_errorFromErrno;
          }

          v18 = 0;
          goto LABEL_18;
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)shortDescription
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [@"{" mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_xattrs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = "";
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v3 length] >= 0x21)
        {
          [v3 appendString:{@", ..."}];
          goto LABEL_13;
        }

        name = [v10 name];
        v12 = [name length];
        v13 = [v3 length] + v12;

        if (v13 >= 0x21)
        {
          v15 = 32 - [v3 length];
          name2 = [v10 name];
          v17 = [name2 substringToIndex:v15];
          [v3 appendFormat:@"%s%@...", v8, v17, v20];

          goto LABEL_13;
        }

        name3 = [v10 name];
        [v3 appendFormat:@"%s%@", v8, name3, v20];

        v8 = ", ";
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v8 = ", ";
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [v3 appendString:@"}"];
  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)addXattrs:(id)xattrs
{
  xattrsCopy = xattrs;
  xattrs = self->_xattrs;
  v8 = xattrsCopy;
  if (!xattrs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_xattrs;
    self->_xattrs = v6;

    xattrsCopy = v8;
    xattrs = self->_xattrs;
  }

  [(NSMutableArray *)xattrs addObject:xattrsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRFieldXattrBlob;
  v4 = [(BRFieldXattrBlob *)&v8 description];
  dictionaryRepresentation = [(BRFieldXattrBlob *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_xattrs count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_xattrs, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_xattrs;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"xattrs"];
  }

  v11 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_xattrs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(BRFieldXattrBlob *)self xattrsCount])
  {
    [toCopy clearXattrs];
    xattrsCount = [(BRFieldXattrBlob *)self xattrsCount];
    if (xattrsCount)
    {
      v5 = xattrsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BRFieldXattrBlob *)self xattrsAtIndex:i];
        [toCopy addXattrs:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_xattrs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
        [v5 addXattrs:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    xattrs = self->_xattrs;
    if (xattrs | equalCopy[1])
    {
      v6 = [(NSMutableArray *)xattrs isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(BRFieldXattrBlob *)self addXattrs:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end