@interface PEResourceLoadRequest
- (CGSize)targetSize;
- (PEResourceLoaderDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_assertWorkVersionResolved;
- (void)_resolveVersionIfNeededWithWorkVersion:(int64_t)version;
@end

@implementation PEResourceLoadRequest

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PEResourceLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_assertWorkVersionResolved
{
  if (![(PEResourceLoadRequest *)self _isWorkVersionResolved])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEResourceLoader.m" lineNumber:106 description:@"Can't fetch media without knowing the version to request"];
  }
}

- (void)_resolveVersionIfNeededWithWorkVersion:(int64_t)version
{
  if (![(PEResourceLoadRequest *)self _isWorkVersionResolved])
  {

    [(PEResourceLoadRequest *)self _setResolvedVersion:version];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setRequireLocalResources:{-[PEResourceLoadRequest requireLocalResources](self, "requireLocalResources")}];
  [v4 setRequireAdjustments:{-[PEResourceLoadRequest requireAdjustments](self, "requireAdjustments")}];
  delegate = [(PEResourceLoadRequest *)self delegate];
  [v4 setDelegate:delegate];

  [v4 setVersion:{-[PEResourceLoadRequest version](self, "version")}];
  [(PEResourceLoadRequest *)self targetSize];
  [v4 setTargetSize:?];
  [v4 setRequireOriginalsDownloaded:{-[PEResourceLoadRequest requireOriginalsDownloaded](self, "requireOriginalsDownloaded")}];
  return v4;
}

@end