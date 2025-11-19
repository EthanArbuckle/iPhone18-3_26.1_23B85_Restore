@interface WFOnScreenContent
- (WFOnScreenContent)initWithCoder:(id)a3;
- (WFOnScreenContent)initWithURL:(id)a3 file:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFOnScreenContent

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFOnScreenContent *)self URL];
  [v4 encodeObject:v5 forKey:@"URL"];

  v6 = [(WFOnScreenContent *)self file];
  [v4 encodeObject:v6 forKey:@"file"];
}

- (WFOnScreenContent)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFOnScreenContent;
  v5 = [(WFOnScreenContent *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file"];
    file = v5->_file;
    v5->_file = v8;

    v10 = v5;
  }

  return v5;
}

- (WFOnScreenContent)initWithURL:(id)a3 file:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!(v8 | v9))
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFOnScreenContent.m" lineNumber:18 description:@"WFOnScreenContent must be initialized with a URL or a file"];
  }

  v15.receiver = self;
  v15.super_class = WFOnScreenContent;
  v10 = [(WFOnScreenContent *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_URL, a3);
    objc_storeStrong(&v11->_file, a4);
    v12 = v11;
  }

  return v11;
}

@end