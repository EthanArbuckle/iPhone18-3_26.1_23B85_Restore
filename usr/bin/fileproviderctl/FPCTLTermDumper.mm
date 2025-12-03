@interface FPCTLTermDumper
- (id)dateFormatter;
- (id)providerNameForProviderIdentifier:(id)identifier;
- (id)thumbnailQueue;
- (void)dumpItem:(id)item verbose:(int)verbose hasItemsFromMultipleProviders:(BOOL)providers showThumbnails:(BOOL)thumbnails;
- (void)dumpProgress:(id)progress prefix:(id)prefix error:(id)error;
@end

@implementation FPCTLTermDumper

- (void)dumpProgress:(id)progress prefix:(id)prefix error:(id)error
{
  progressCopy = progress;
  errorCopy = error;
  [(FPCTLTermDumper *)self write:@"%@ ", prefix];
  if (progressCopy)
  {
    if ([progressCopy isIndeterminate])
    {
      v9 = @"(indeterminate) ";
    }

    else
    {
      [progressCopy fractionCompleted];
      v16 = v10 * 100.0;
      v9 = @"%.01f%% ";
    }

    [(FPCTLTermDumper *)self write:v9, *&v16];
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    v12 = [domain isEqualToString:NSFileProviderErrorDomain];

    if (v12)
    {
      code = [errorCopy code];
      if (code == -1000)
      {
        v14 = @"(not authenticated) ";
      }

      else if (code == -1003)
      {
        v14 = @"(insufficient quota) ";
      }

      else if (code == -1004)
      {
        v14 = @"(offline) ";
      }

      else
      {
        v14 = @"(fp error) ";
      }

      [(FPCTLTermDumper *)self write:v14];
    }

    else
    {
      domain2 = [errorCopy domain];
      -[FPCTLTermDumper write:](self, "write:", @"(%@:%d) ", domain2, [errorCopy code]);
    }
  }
}

- (id)providerNameForProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_getAssociatedObject(self, &unk_100021470);
  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
    objc_setAssociatedObject(self, &unk_100021470, v5, 0x301);
    [v5 setObject:@"🍏 " forKeyedSubscript:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
    [v5 setObject:@"🏢 " forKeyedSubscript:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
    [v5 setObject:@"📍 " forKeyedSubscript:@"com.apple.FileProvider.LocalStorage"];
    [v5 setObject:@"🚧 " forKeyedSubscript:@"com.apple.FileProvider.TestingHarness.TestFileProvider"];
    [v5 setObject:@"🍍 " forKeyedSubscript:@"com.apple.BerryBox.BerryPickerFileProvider"];
    [v5 setObject:@"💾 " forKeyedSubscript:@"com.apple.filesystems.UserFS.FileProvider"];
    [v5 setObject:@"📠 " forKeyedSubscript:@"com.apple.SMBClientProvider.FileProvider"];
  }

  v6 = [v5 objectForKeyedSubscript:identifierCopy];
  if (!v6)
  {
    v7 = qword_100021490;
    v8 = [&off_10001F2A0 count];
    v9 = [&off_10001F2A0 objectAtIndex:{qword_100021490 % objc_msgSend(&off_10001F2A0, "count")}];
    v10 = v9;
    if (v7 <= v8)
    {
      [NSString stringWithFormat:@"%@ ", v9, v13];
    }

    else
    {
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@  - %i", v9, qword_100021490 / [&off_10001F2A0 count]);
    }
    v6 = ;

    [v5 setObject:v6 forKeyedSubscript:identifierCopy];
    ++qword_100021490;
  }

  v11 = v6;

  return v11;
}

- (id)thumbnailQueue
{
  v3 = objc_getAssociatedObject(self, &unk_100021478);
  if (!v3)
  {
    v3 = objc_opt_new();
    objc_setAssociatedObject(self, &unk_100021478, v3, 0x301);
  }

  return v3;
}

- (id)dateFormatter
{
  v3 = objc_getAssociatedObject(self, &unk_100021480);
  if (!v3)
  {
    v3 = objc_opt_new();
    [v3 setDateStyle:1];
    [v3 setTimeStyle:1];
    [v3 setDoesRelativeDateFormatting:1];
    objc_setAssociatedObject(self, &unk_100021480, v3, 0x301);
  }

  return v3;
}

- (void)dumpItem:(id)item verbose:(int)verbose hasItemsFromMultipleProviders:(BOOL)providers showThumbnails:(BOOL)thumbnails
{
  thumbnailsCopy = thumbnails;
  providersCopy = providers;
  itemCopy = item;
  v11 = itemCopy;
  if (providersCopy)
  {
    providerID = [itemCopy providerID];
    v13 = [(FPCTLTermDumper *)self providerNameForProviderIdentifier:providerID];
    [(FPCTLTermDumper *)self write:@"%@", v13];
  }

  if ([v11 isContainer])
  {
    v14 = @"📚 ";
  }

  else if ([v11 isFolder])
  {
    v14 = @"📁 ";
  }

  else
  {
    contentType = [v11 contentType];
    v16 = [contentType conformsToType:UTTypeSymbolicLink];

    if (v16)
    {
      v14 = @"🔗 ";
    }

    else
    {
      v14 = @"   ";
    }
  }

  [(FPCTLTermDumper *)self write:v14];
  if (thumbnailsCopy)
  {
    v17 = +[FPItemManager defaultManager];
    v51 = v11;
    v18 = [NSArray arrayWithObjects:&v51 count:1];
    v19 = [v17 thumbnailsFetchOperationForItems:v18 withSize:16.0 scale:{16.0, 2.0}];

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10000758C;
    v50[3] = &unk_10001D010;
    v50[4] = self;
    [v19 setPerThumbnailCompletionBlock:v50];
    thumbnailQueue = [(FPCTLTermDumper *)self thumbnailQueue];
    [thumbnailQueue addOperation:v19];

    [v19 waitUntilFinished];
  }

  if (verbose)
  {
    if (verbose >= 2)
    {
      [(FPCTLTermDumper *)self write:@" %p", v11];
    }

    v21 = [v11 descriptionForFPCTL:1];
    [(FPCTLTermDumper *)self write:@" %@", v21];

    goto LABEL_56;
  }

  if ([v11 isDownloaded] && (objc_msgSend(v11, "isMostRecentVersionDownloaded") & 1) == 0)
  {
    [(FPCTLTermDumper *)self write:@"🔵 "];
  }

  -[FPCTLTermDumper startAttributes:](self, "startAttributes:", ~([v11 fileSystemFlags] >> 2) & 2);
  displayName = [v11 displayName];
  v23 = [displayName description];
  [(FPCTLTermDumper *)self write:@"%@ ", v23];

  [(FPCTLTermDumper *)self reset];
  if (([v11 fileSystemFlags] & 8) != 0)
  {
    [(FPCTLTermDumper *)self write:@"(hidden) "];
  }

  [(FPCTLTermDumper *)self startAttributes:0];
  itemIdentifier = [v11 itemIdentifier];
  v25 = [itemIdentifier description];
  [(FPCTLTermDumper *)self write:@"id:%@ ", v25];

  [(FPCTLTermDumper *)self reset];
  documentSize = [v11 documentSize];

  if (documentSize)
  {
    [(FPCTLTermDumper *)self startAttributes:0];
    documentSize2 = [v11 documentSize];
    -[FPCTLTermDumper write:](self, "write:", @"size:%lu ", [documentSize2 integerValue]);

    [(FPCTLTermDumper *)self reset];
  }

  if ([v11 isCloudItem])
  {
    if ([v11 isDownloading])
    {
      downloadingProgress = [v11 downloadingProgress];
      downloadingError = [v11 downloadingError];
      [(FPCTLTermDumper *)self dumpProgress:downloadingProgress prefix:@"⬇ " error:downloadingError];
    }

    if ([v11 isUploading])
    {
      uploadingProgress = [v11 uploadingProgress];
      uploadingError = [v11 uploadingError];
      [(FPCTLTermDumper *)self dumpProgress:uploadingProgress prefix:@"⬆ " error:uploadingError];
    }
  }

  if ([v11 isPinned])
  {
    v32 = @"📌 ";
LABEL_32:
    [(FPCTLTermDumper *)self write:v32];
    goto LABEL_33;
  }

  if ([v11 isInPinnedFolder])
  {
    v32 = @"📍 ";
    goto LABEL_32;
  }

LABEL_33:
  if (([v11 isDownloaded] & 1) != 0 || (objc_msgSend(v11, "isCloudItem") & 1) == 0)
  {
    if ([v11 isFolder] && objc_msgSend(v11, "isRecursivelyDownloaded"))
    {
      [(FPCTLTermDumper *)self write:@"🌳 "];
    }

    [(FPCTLTermDumper *)self write:@"📱 "];
    if ([v11 isExcludedFromSync])
    {
      [(FPCTLTermDumper *)self write:@"🚫 "];
    }
  }

  if ([v11 isTrashed])
  {
    [(FPCTLTermDumper *)self write:@"🗑 "];
  }

  if ([v11 isCloudItem] && objc_msgSend(v11, "isUploaded"))
  {
    [(FPCTLTermDumper *)self write:@"☁️ "];
  }

  fileURL = [v11 fileURL];

  if (!fileURL)
  {
    [(FPCTLTermDumper *)self write:@"(no url) "];
  }

  lastUsedDate = [v11 lastUsedDate];

  if (lastUsedDate)
  {
    [(FPCTLTermDumper *)self startAttributes:0];
    dateFormatter = [(FPCTLTermDumper *)self dateFormatter];
    lastUsedDate2 = [v11 lastUsedDate];
    v37 = [dateFormatter stringFromDate:lastUsedDate2];
    [(FPCTLTermDumper *)self write:@" %@ (used)", v37];
LABEL_51:

    [(FPCTLTermDumper *)self reset];
    goto LABEL_52;
  }

  contentModificationDate = [v11 contentModificationDate];

  if (contentModificationDate)
  {
    [(FPCTLTermDumper *)self startAttributes:0];
    dateFormatter = [(FPCTLTermDumper *)self dateFormatter];
    lastUsedDate2 = [v11 contentModificationDate];
    v37 = [dateFormatter stringFromDate:lastUsedDate2];
    [(FPCTLTermDumper *)self write:@" %@", v37];
    goto LABEL_51;
  }

LABEL_52:
  if ([v11 typeAndCreator])
  {
    -[FPCTLTermDumper write:](self, "write:", @"ostype:%x ", [v11 typeAndCreator]);
  }

  if ([v11 typeAndCreator] >> 32)
  {
    -[FPCTLTermDumper write:](self, "write:", @"creatorcode: %x ", [v11 typeAndCreator] >> 32);
  }

LABEL_56:
  tags = [v11 tags];
  v40 = sub_10000680C(tags);

  if ([v40 length])
  {
    [(FPCTLTermDumper *)self startAttributes:0];
    v41 = [v40 description];
    [(FPCTLTermDumper *)self write:@" [%@]", v41];

    [(FPCTLTermDumper *)self reset];
  }

  itemDecorations = [v11 itemDecorations];
  v43 = itemDecorations;
  if (itemDecorations)
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000075F8;
    v45[3] = &unk_10001D038;
    v46 = itemDecorations;
    selfCopy = self;
    v48 = v11;
    verboseCopy = verbose;
    v44 = objc_retainBlock(v45);
    (v44[2])(v44, FPItemDecorationTypeSharing, 7, 0);
    (v44[2])(v44, FPItemDecorationTypeBadge, 4, 1);
    (v44[2])(v44, FPItemDecorationTypeFolderBadge, 4, 1);
    [(FPCTLTermDumper *)self reset];
  }
}

@end