@interface MicroPaymentDownload
+ (id)downloadEntityFromContext:(id)context;
- (id)copySKDownload;
- (void)awakeFromInsert;
- (void)setValuesWithAssetDictionary:(id)dictionary;
@end

@implementation MicroPaymentDownload

+ (id)downloadEntityFromContext:(id)context
{
  v3 = [objc_msgSend(objc_msgSend(context "persistentStoreCoordinator")];

  return [v3 objectForKey:@"MicroPaymentDownload"];
}

- (id)copySKDownload
{
  v3 = objc_alloc_init(sub_1001FA21C());
  [v3 _setDownloadID:{-[MicroPaymentDownload downloadID](self, "downloadID")}];
  v4 = [-[MicroPaymentDownload state](self "state")];
  if ((v4 - 1) >= 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = 6 - v4;
  }

  [v3 _setDownloadState:v5];
  [v3 _setVersion:{-[MicroPaymentDownload version](self, "version")}];
  [v3 _setContentLength:{-[MicroPaymentDownload contentLength](self, "contentLength")}];
  localURL = [(MicroPaymentDownload *)self localURL];
  if (localURL)
  {
    localURL = [NSURL URLWithString:localURL];
  }

  [v3 _setContentURL:localURL];
  error = [(MicroPaymentDownload *)self error];
  if (error)
  {
    v8 = sub_1001FA204(error);
  }

  else
  {
    v8 = 0;
  }

  [v3 _setError:v8];
  return v3;
}

- (void)setValuesWithAssetDictionary:(id)dictionary
{
  v5 = [dictionary objectForKey:@"downloadKey"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(MicroPaymentDownload *)self setDownloadKey:v5];
  }

  v6 = [dictionary objectForKey:@"file-size"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPaymentDownload *)self setContentLength:v6];
  }

  v7 = [dictionary objectForKey:@"chunks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [dictionary objectForKey:@"md5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [NSArray arrayWithObject:v13];
    }

    else
    {
      v9 = 0;
    }

    v8 = 0;
LABEL_16:
    [(MicroPaymentDownload *)self setHashChunkSize:v8];
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_17:
    selfCopy2 = self;
    v11 = 0;
    goto LABEL_18;
  }

  v8 = [v7 objectForKey:@"chunkSize"];
  v9 = [v7 objectForKey:@"hashes"];
  if (!v8)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_10:
  v10 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:0];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  selfCopy2 = self;
LABEL_18:
  [(MicroPaymentDownload *)selfCopy2 setHashArrayData:v11];
LABEL_19:
  v14 = [dictionary objectForKey:@"sinfs"];
  if (!v14)
  {
    selfCopy4 = self;
    v17 = 0;
    goto LABEL_24;
  }

  v15 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [NSPropertyListSerialization dataWithPropertyList:v15 format:200 options:0 error:0];
    if (v16)
    {
      v17 = v16;
      selfCopy4 = self;
LABEL_24:
      [(MicroPaymentDownload *)selfCopy4 setSinfs:v17];
    }
  }

  v19 = [dictionary objectForKey:@"URL"];
  if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(MicroPaymentDownload *)self setRemoteURL:v19];
  }

  v20 = [dictionary objectForKey:@"version"];
  if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    [(MicroPaymentDownload *)self setVersion:v20];
  }
}

- (void)awakeFromInsert
{
  v5.receiver = self;
  v5.super_class = MicroPaymentDownload;
  [(MicroPaymentDownload *)&v5 awakeFromInsert];
  v3 = CFUUIDCreate(0);
  v4 = [[NSNumber alloc] initWithLongLong:*&CFUUIDGetUUIDBytes(v3)];
  [(MicroPaymentDownload *)self setDownloadID:v4];

  CFRelease(v3);
}

@end