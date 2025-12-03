@interface SYNotesActivationRequest
- (NSArray)imageFileURLs;
- (NSArray)imagesData;
- (NSArray)urls;
- (SYNotesActivationRequest)init;
- (void)addImageData:(id)data;
- (void)addImageFileURL:(id)l;
- (void)addImageFileURLs:(id)ls;
- (void)addImagesData:(id)data;
- (void)addURL:(id)l;
- (void)addURLs:(id)ls;
@end

@implementation SYNotesActivationRequest

- (SYNotesActivationRequest)init
{
  v10.receiver = self;
  v10.super_class = SYNotesActivationRequest;
  v2 = [(SYNotesActivationRequest *)&v10 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    urls = v2->__urls;
    v2->__urls = array;

    array2 = [MEMORY[0x277CBEB18] array];
    imagesData = v2->__imagesData;
    v2->__imagesData = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    imageFileURLs = v2->__imageFileURLs;
    v2->__imageFileURLs = array3;
  }

  return v2;
}

- (NSArray)urls
{
  _urls = [(SYNotesActivationRequest *)self _urls];
  v3 = [_urls copy];

  return v3;
}

- (void)addURL:(id)l
{
  lCopy = l;
  _urls = [(SYNotesActivationRequest *)self _urls];
  [_urls addObject:lCopy];
}

- (void)addURLs:(id)ls
{
  lsCopy = ls;
  _urls = [(SYNotesActivationRequest *)self _urls];
  [_urls addObjectsFromArray:lsCopy];
}

- (NSArray)imagesData
{
  _imagesData = [(SYNotesActivationRequest *)self _imagesData];
  v3 = [_imagesData copy];

  return v3;
}

- (void)addImageData:(id)data
{
  dataCopy = data;
  _imagesData = [(SYNotesActivationRequest *)self _imagesData];
  [_imagesData addObject:dataCopy];
}

- (void)addImagesData:(id)data
{
  dataCopy = data;
  _imagesData = [(SYNotesActivationRequest *)self _imagesData];
  [_imagesData addObjectsFromArray:dataCopy];
}

- (NSArray)imageFileURLs
{
  _imageFileURLs = [(SYNotesActivationRequest *)self _imageFileURLs];
  v3 = [_imageFileURLs copy];

  return v3;
}

- (void)addImageFileURL:(id)l
{
  lCopy = l;
  _imageFileURLs = [(SYNotesActivationRequest *)self _imageFileURLs];
  [_imageFileURLs addObject:lCopy];
}

- (void)addImageFileURLs:(id)ls
{
  lsCopy = ls;
  _imageFileURLs = [(SYNotesActivationRequest *)self _imageFileURLs];
  [_imageFileURLs addObjectsFromArray:lsCopy];
}

@end