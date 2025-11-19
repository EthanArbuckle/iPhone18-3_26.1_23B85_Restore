@interface PEResourceLoadRequest
- (CGSize)targetSize;
- (PEResourceLoaderDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_assertWorkVersionResolved;
- (void)_resolveVersionIfNeededWithWorkVersion:(int64_t)a3;
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
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PEResourceLoader.m" lineNumber:106 description:@"Can't fetch media without knowing the version to request"];
  }
}

- (void)_resolveVersionIfNeededWithWorkVersion:(int64_t)a3
{
  if (![(PEResourceLoadRequest *)self _isWorkVersionResolved])
  {

    [(PEResourceLoadRequest *)self _setResolvedVersion:a3];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setRequireLocalResources:{-[PEResourceLoadRequest requireLocalResources](self, "requireLocalResources")}];
  [v4 setRequireAdjustments:{-[PEResourceLoadRequest requireAdjustments](self, "requireAdjustments")}];
  v5 = [(PEResourceLoadRequest *)self delegate];
  [v4 setDelegate:v5];

  [v4 setVersion:{-[PEResourceLoadRequest version](self, "version")}];
  [(PEResourceLoadRequest *)self targetSize];
  [v4 setTargetSize:?];
  [v4 setRequireOriginalsDownloaded:{-[PEResourceLoadRequest requireOriginalsDownloaded](self, "requireOriginalsDownloaded")}];
  return v4;
}

@end