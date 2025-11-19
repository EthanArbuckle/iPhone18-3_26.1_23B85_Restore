@interface MicroPaymentDownload
+ (id)downloadEntityFromContext:(id)a3;
- (id)copySKDownload;
- (void)awakeFromInsert;
- (void)setValuesWithAssetDictionary:(id)a3;
@end

@implementation MicroPaymentDownload

+ (id)downloadEntityFromContext:(id)a3
{
  v3 = [objc_msgSend(objc_msgSend(a3 "persistentStoreCoordinator")];

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
  v6 = [(MicroPaymentDownload *)self localURL];
  if (v6)
  {
    v6 = [NSURL URLWithString:v6];
  }

  [v3 _setContentURL:v6];
  v7 = [(MicroPaymentDownload *)self error];
  if (v7)
  {
    v8 = sub_1001FA204(v7);
  }

  else
  {
    v8 = 0;
  }

  [v3 _setError:v8];
  return v3;
}

- (void)setValuesWithAssetDictionary:(id)a3
{
  v5 = [a3 objectForKey:@"downloadKey"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(MicroPaymentDownload *)self setDownloadKey:v5];
  }

  v6 = [a3 objectForKey:@"file-size"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPaymentDownload *)self setContentLength:v6];
  }

  v7 = [a3 objectForKey:@"chunks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [a3 objectForKey:@"md5"];
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
    v12 = self;
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
  v12 = self;
LABEL_18:
  [(MicroPaymentDownload *)v12 setHashArrayData:v11];
LABEL_19:
  v14 = [a3 objectForKey:@"sinfs"];
  if (!v14)
  {
    v18 = self;
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
      v18 = self;
LABEL_24:
      [(MicroPaymentDownload *)v18 setSinfs:v17];
    }
  }

  v19 = [a3 objectForKey:@"URL"];
  if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(MicroPaymentDownload *)self setRemoteURL:v19];
  }

  v20 = [a3 objectForKey:@"version"];
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