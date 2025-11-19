@interface UIImageReader
+ (UIImageReader)defaultReader;
+ (UIImageReader)readerWithConfiguration:(UIImageReaderConfiguration *)configuration;
- (UIImage)imageWithContentsOfFileURL:(NSURL *)url;
- (UIImageReader)init;
- (UIImageReader)initWithConfiguration:(id)a3;
- (UIImageReaderConfiguration)configuration;
- (void)imageWithContentsOfFileURL:(NSURL *)url completion:(void *)completion;
@end

@implementation UIImageReader

+ (UIImageReader)defaultReader
{
  if (qword_1ED4A0A80 != -1)
  {
    dispatch_once(&qword_1ED4A0A80, &__block_literal_global_56_2);
  }

  v3 = qword_1ED4A0A78;

  return v3;
}

void __30__UIImageReader_defaultReader__block_invoke()
{
  v0 = objc_alloc_init(UIImageReader);
  v1 = qword_1ED4A0A78;
  qword_1ED4A0A78 = v0;
}

- (UIImageReader)initWithConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIImageReader;
  v5 = [(UIImageReader *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = [(UIImageReaderConfiguration *)*(v5 + 1) _imageOptions];
    v9 = *(v5 + 2);
    *(v5 + 2) = v8;
  }

  return v5;
}

- (UIImageReader)init
{
  v3 = objc_opt_new();
  v4 = [(UIImageReader *)self initWithConfiguration:v3];

  return v4;
}

+ (UIImageReader)readerWithConfiguration:(UIImageReaderConfiguration *)configuration
{
  v5 = configuration;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"UIImageReader.m" lineNumber:275 description:@"Client Error: configuration==nil"];
  }

  v6 = [[a1 alloc] initWithConfiguration:v5];

  return v6;
}

- (UIImageReaderConfiguration)configuration
{
  v2 = [(UIImageReaderConfiguration *)self->_configuration copy];

  return v2;
}

- (UIImage)imageWithContentsOfFileURL:(NSURL *)url
{
  configuration = self->_configuration;
  v5 = url;
  [(UIImageReaderConfiguration *)configuration _checkIsFileURL:v5];
  v6 = [(UIImageReaderConfiguration *)self->_configuration _imageFromURL:v5 orData:0 imageRequestOptions:self->_imageOptions];

  return v6;
}

- (void)imageWithContentsOfFileURL:(NSURL *)url completion:(void *)completion
{
  configuration = self->_configuration;
  v7 = completion;
  v8 = url;
  [(UIImageReaderConfiguration *)configuration _checkIsFileURL:v8];
  [(UIImageReaderConfiguration *)self->_configuration _asyncImageFromURL:v8 orData:0 imageRequestOptions:self->_imageOptions completion:v7];
}

@end