@interface WFOnScreenContent
- (WFOnScreenContent)initWithCoder:(id)coder;
- (WFOnScreenContent)initWithURL:(id)l file:(id)file;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFOnScreenContent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFOnScreenContent *)self URL];
  [coderCopy encodeObject:v5 forKey:@"URL"];

  file = [(WFOnScreenContent *)self file];
  [coderCopy encodeObject:file forKey:@"file"];
}

- (WFOnScreenContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFOnScreenContent;
  v5 = [(WFOnScreenContent *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"file"];
    file = v5->_file;
    v5->_file = v8;

    v10 = v5;
  }

  return v5;
}

- (WFOnScreenContent)initWithURL:(id)l file:(id)file
{
  lCopy = l;
  fileCopy = file;
  if (!(lCopy | fileCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFOnScreenContent.m" lineNumber:18 description:@"WFOnScreenContent must be initialized with a URL or a file"];
  }

  v15.receiver = self;
  v15.super_class = WFOnScreenContent;
  v10 = [(WFOnScreenContent *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_URL, l);
    objc_storeStrong(&v11->_file, file);
    v12 = v11;
  }

  return v11;
}

@end