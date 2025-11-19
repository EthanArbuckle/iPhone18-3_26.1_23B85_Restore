@interface DownloadSessionProperties
- (BOOL)isEqual:(id)a3;
- (DownloadSessionProperties)initWithClientIdentifier:(id)a3 handlerIdentifier:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation DownloadSessionProperties

- (DownloadSessionProperties)initWithClientIdentifier:(id)a3 handlerIdentifier:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = DownloadSessionProperties;
  v6 = [(DownloadSessionProperties *)&v8 init];
  if (v6)
  {
    v6->_clientIdentifier = [a3 copy];
    v6->_handlerIdentifier = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadSessionProperties;
  [(DownloadSessionProperties *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_assetID;
  v5[2] = self->_authenticationChallenge;
  v5[3] = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  v5[4] = self->_downloadID;
  v5[5] = [(NSString *)self->_downloadPhase copyWithZone:a3];
  v5[6] = [(NSNumber *)self->_duetBudget copyWithZone:a3];
  v5[7] = self->_handlerIdentifier;
  *(v5 + 64) = self->_storeDownload;
  *(v5 + 65) = self->_shouldSupressErrorDialogs;
  return v5;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = DownloadSessionProperties;
  return [NSString stringWithFormat:@"%@: [A: %lld, D: %lld, H: %lld, P: %@]", [(DownloadSessionProperties *)&v3 description], self->_assetID, self->_downloadID, self->_handlerIdentifier, self->_downloadPhase];
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v6 = -[DownloadSessionProperties downloadIdentifier](self, "downloadIdentifier"), v6 == [a3 downloadIdentifier]) && (v7 = -[DownloadSessionProperties assetIdentifier](self, "assetIdentifier"), v7 == objc_msgSend(a3, "assetIdentifier")) && (v8 = -[DownloadSessionProperties handlerIdentifier](self, "handlerIdentifier"), v8 == objc_msgSend(a3, "handlerIdentifier")))
  {
    v9 = [(DownloadSessionProperties *)self downloadPhase];
    if (v9 == [a3 downloadPhase] || (v10 = -[NSString isEqual:](-[DownloadSessionProperties downloadPhase](self, "downloadPhase"), "isEqual:", objc_msgSend(a3, "downloadPhase"))) != 0)
    {
      v11 = [(DownloadSessionProperties *)self authenticationChallenge];
      if (v11 == [a3 authenticationChallenge])
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        v12 = [(DownloadSessionProperties *)self authenticationChallenge];
        v13 = [a3 authenticationChallenge];

        LOBYTE(v10) = [(NSURLAuthenticationChallenge *)v12 isEqual:v13];
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

@end