@interface DownloadSessionProperties
- (BOOL)isEqual:(id)equal;
- (DownloadSessionProperties)initWithClientIdentifier:(id)identifier handlerIdentifier:(int64_t)handlerIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation DownloadSessionProperties

- (DownloadSessionProperties)initWithClientIdentifier:(id)identifier handlerIdentifier:(int64_t)handlerIdentifier
{
  v8.receiver = self;
  v8.super_class = DownloadSessionProperties;
  v6 = [(DownloadSessionProperties *)&v8 init];
  if (v6)
  {
    v6->_clientIdentifier = [identifier copy];
    v6->_handlerIdentifier = handlerIdentifier;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadSessionProperties;
  [(DownloadSessionProperties *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_assetID;
  v5[2] = self->_authenticationChallenge;
  v5[3] = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  v5[4] = self->_downloadID;
  v5[5] = [(NSString *)self->_downloadPhase copyWithZone:zone];
  v5[6] = [(NSNumber *)self->_duetBudget copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v6 = -[DownloadSessionProperties downloadIdentifier](self, "downloadIdentifier"), v6 == [equal downloadIdentifier]) && (v7 = -[DownloadSessionProperties assetIdentifier](self, "assetIdentifier"), v7 == objc_msgSend(equal, "assetIdentifier")) && (v8 = -[DownloadSessionProperties handlerIdentifier](self, "handlerIdentifier"), v8 == objc_msgSend(equal, "handlerIdentifier")))
  {
    downloadPhase = [(DownloadSessionProperties *)self downloadPhase];
    if (downloadPhase == [equal downloadPhase] || (v10 = -[NSString isEqual:](-[DownloadSessionProperties downloadPhase](self, "downloadPhase"), "isEqual:", objc_msgSend(equal, "downloadPhase"))) != 0)
    {
      authenticationChallenge = [(DownloadSessionProperties *)self authenticationChallenge];
      if (authenticationChallenge == [equal authenticationChallenge])
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        authenticationChallenge2 = [(DownloadSessionProperties *)self authenticationChallenge];
        authenticationChallenge3 = [equal authenticationChallenge];

        LOBYTE(v10) = [(NSURLAuthenticationChallenge *)authenticationChallenge2 isEqual:authenticationChallenge3];
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