@interface FPCTLTermDumper
- (id)dateFormatter;
- (id)providerNameForProviderIdentifier:(id)a3;
- (id)thumbnailQueue;
- (void)dumpItem:(id)a3 verbose:(int)a4 hasItemsFromMultipleProviders:(BOOL)a5 showThumbnails:(BOOL)a6;
- (void)dumpProgress:(id)a3 prefix:(id)a4 error:(id)a5;
@end

@implementation FPCTLTermDumper

- (void)dumpProgress:(id)a3 prefix:(id)a4 error:(id)a5
{
  v17 = a3;
  v8 = a5;
  [(FPCTLTermDumper *)self write:@"%@ ", a4];
  if (v17)
  {
    if ([v17 isIndeterminate])
    {
      v9 = @"(indeterminate) ";
    }

    else
    {
      [v17 fractionCompleted];
      v16 = v10 * 100.0;
      v9 = @"%.01f%% ";
    }

    [(FPCTLTermDumper *)self write:v9, *&v16];
  }

  if (v8)
  {
    v11 = [v8 domain];
    v12 = [v11 isEqualToString:NSFileProviderErrorDomain];

    if (v12)
    {
      v13 = [v8 code];
      if (v13 == -1000)
      {
        v14 = @"(not authenticated) ";
      }

      else if (v13 == -1003)
      {
        v14 = @"(insufficient quota) ";
      }

      else if (v13 == -1004)
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
      v15 = [v8 domain];
      -[FPCTLTermDumper write:](self, "write:", @"(%@:%d) ", v15, [v8 code]);
    }
  }
}

- (id)providerNameForProviderIdentifier:(id)a3
{
  v4 = a3;
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

  v6 = [v5 objectForKeyedSubscript:v4];
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

    [v5 setObject:v6 forKeyedSubscript:v4];
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

- (void)dumpItem:(id)a3 verbose:(int)a4 hasItemsFromMultipleProviders:(BOOL)a5 showThumbnails:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = v10;
  if (v7)
  {
    v12 = [v10 providerID];
    v13 = [(FPCTLTermDumper *)self providerNameForProviderIdentifier:v12];
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
    v15 = [v11 contentType];
    v16 = [v15 conformsToType:UTTypeSymbolicLink];

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
  if (v6)
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
    v20 = [(FPCTLTermDumper *)self thumbnailQueue];
    [v20 addOperation:v19];

    [v19 waitUntilFinished];
  }

  if (a4)
  {
    if (a4 >= 2)
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
  v22 = [v11 displayName];
  v23 = [v22 description];
  [(FPCTLTermDumper *)self write:@"%@ ", v23];

  [(FPCTLTermDumper *)self reset];
  if (([v11 fileSystemFlags] & 8) != 0)
  {
    [(FPCTLTermDumper *)self write:@"(hidden) "];
  }

  [(FPCTLTermDumper *)self startAttributes:0];
  v24 = [v11 itemIdentifier];
  v25 = [v24 description];
  [(FPCTLTermDumper *)self write:@"id:%@ ", v25];

  [(FPCTLTermDumper *)self reset];
  v26 = [v11 documentSize];

  if (v26)
  {
    [(FPCTLTermDumper *)self startAttributes:0];
    v27 = [v11 documentSize];
    -[FPCTLTermDumper write:](self, "write:", @"size:%lu ", [v27 integerValue]);

    [(FPCTLTermDumper *)self reset];
  }

  if ([v11 isCloudItem])
  {
    if ([v11 isDownloading])
    {
      v28 = [v11 downloadingProgress];
      v29 = [v11 downloadingError];
      [(FPCTLTermDumper *)self dumpProgress:v28 prefix:@"⬇ " error:v29];
    }

    if ([v11 isUploading])
    {
      v30 = [v11 uploadingProgress];
      v31 = [v11 uploadingError];
      [(FPCTLTermDumper *)self dumpProgress:v30 prefix:@"⬆ " error:v31];
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

  v33 = [v11 fileURL];

  if (!v33)
  {
    [(FPCTLTermDumper *)self write:@"(no url) "];
  }

  v34 = [v11 lastUsedDate];

  if (v34)
  {
    [(FPCTLTermDumper *)self startAttributes:0];
    v35 = [(FPCTLTermDumper *)self dateFormatter];
    v36 = [v11 lastUsedDate];
    v37 = [v35 stringFromDate:v36];
    [(FPCTLTermDumper *)self write:@" %@ (used)", v37];
LABEL_51:

    [(FPCTLTermDumper *)self reset];
    goto LABEL_52;
  }

  v38 = [v11 contentModificationDate];

  if (v38)
  {
    [(FPCTLTermDumper *)self startAttributes:0];
    v35 = [(FPCTLTermDumper *)self dateFormatter];
    v36 = [v11 contentModificationDate];
    v37 = [v35 stringFromDate:v36];
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
  v39 = [v11 tags];
  v40 = sub_10000680C(v39);

  if ([v40 length])
  {
    [(FPCTLTermDumper *)self startAttributes:0];
    v41 = [v40 description];
    [(FPCTLTermDumper *)self write:@" [%@]", v41];

    [(FPCTLTermDumper *)self reset];
  }

  v42 = [v11 itemDecorations];
  v43 = v42;
  if (v42)
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000075F8;
    v45[3] = &unk_10001D038;
    v46 = v42;
    v47 = self;
    v48 = v11;
    v49 = a4;
    v44 = objc_retainBlock(v45);
    (v44[2])(v44, FPItemDecorationTypeSharing, 7, 0);
    (v44[2])(v44, FPItemDecorationTypeBadge, 4, 1);
    (v44[2])(v44, FPItemDecorationTypeFolderBadge, 4, 1);
    [(FPCTLTermDumper *)self reset];
  }
}

@end