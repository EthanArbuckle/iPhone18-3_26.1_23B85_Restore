@interface SYNotesActivationRequest
- (NSArray)imageFileURLs;
- (NSArray)imagesData;
- (NSArray)urls;
- (SYNotesActivationRequest)init;
- (void)addImageData:(id)a3;
- (void)addImageFileURL:(id)a3;
- (void)addImageFileURLs:(id)a3;
- (void)addImagesData:(id)a3;
- (void)addURL:(id)a3;
- (void)addURLs:(id)a3;
@end

@implementation SYNotesActivationRequest

- (SYNotesActivationRequest)init
{
  v10.receiver = self;
  v10.super_class = SYNotesActivationRequest;
  v2 = [(SYNotesActivationRequest *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    urls = v2->__urls;
    v2->__urls = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    imagesData = v2->__imagesData;
    v2->__imagesData = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    imageFileURLs = v2->__imageFileURLs;
    v2->__imageFileURLs = v7;
  }

  return v2;
}

- (NSArray)urls
{
  v2 = [(SYNotesActivationRequest *)self _urls];
  v3 = [v2 copy];

  return v3;
}

- (void)addURL:(id)a3
{
  v4 = a3;
  v5 = [(SYNotesActivationRequest *)self _urls];
  [v5 addObject:v4];
}

- (void)addURLs:(id)a3
{
  v4 = a3;
  v5 = [(SYNotesActivationRequest *)self _urls];
  [v5 addObjectsFromArray:v4];
}

- (NSArray)imagesData
{
  v2 = [(SYNotesActivationRequest *)self _imagesData];
  v3 = [v2 copy];

  return v3;
}

- (void)addImageData:(id)a3
{
  v4 = a3;
  v5 = [(SYNotesActivationRequest *)self _imagesData];
  [v5 addObject:v4];
}

- (void)addImagesData:(id)a3
{
  v4 = a3;
  v5 = [(SYNotesActivationRequest *)self _imagesData];
  [v5 addObjectsFromArray:v4];
}

- (NSArray)imageFileURLs
{
  v2 = [(SYNotesActivationRequest *)self _imageFileURLs];
  v3 = [v2 copy];

  return v3;
}

- (void)addImageFileURL:(id)a3
{
  v4 = a3;
  v5 = [(SYNotesActivationRequest *)self _imageFileURLs];
  [v5 addObject:v4];
}

- (void)addImageFileURLs:(id)a3
{
  v4 = a3;
  v5 = [(SYNotesActivationRequest *)self _imageFileURLs];
  [v5 addObjectsFromArray:v4];
}

@end