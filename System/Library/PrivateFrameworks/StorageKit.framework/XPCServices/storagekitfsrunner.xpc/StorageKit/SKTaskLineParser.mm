@interface SKTaskLineParser
+ (NSData)lineData;
- (SKTaskLineParser)initWithCallback:(id)a3;
- (void)parseData:(id)a3;
@end

@implementation SKTaskLineParser

+ (NSData)lineData
{
  if (qword_10000DA10 != -1)
  {
    sub_100004888();
  }

  v3 = qword_10000DA08;

  return v3;
}

- (SKTaskLineParser)initWithCallback:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKTaskLineParser;
  v5 = [(SKTaskLineParser *)&v8 init];
  if (v5)
  {
    v6 = +[NSMutableData data];
    [(SKTaskLineParser *)v5 setBuffer:v6];

    [(SKTaskLineParser *)v5 setCallback:v4];
  }

  return v5;
}

- (void)parseData:(id)a3
{
  v21 = a3;
  v4 = [(SKTaskLineParser *)self buffer];
  [v4 appendData:v21];

  v5 = [(SKTaskLineParser *)self buffer];
  v6 = [v5 length];

  if (v6)
  {
    do
    {
      v7 = [(SKTaskLineParser *)self buffer];
      v8 = [objc_opt_class() lineData];
      v9 = [(SKTaskLineParser *)self buffer];
      v10 = [v7 rangeOfData:v8 options:0 range:{0, objc_msgSend(v9, "length")}];

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v11 = [(SKTaskLineParser *)self buffer];
      v12 = [v11 subdataWithRange:{0, v10}];

      v13 = [(SKTaskLineParser *)self buffer];
      v14 = [(SKTaskLineParser *)self buffer];
      v15 = [(SKTaskLineParser *)self buffer];
      v16 = [v14 subdataWithRange:{v10 + 1, objc_msgSend(v15, "length") + ~objc_msgSend(v12, "length")}];
      [v13 setData:v16];

      v17 = [(SKTaskLineParser *)self callback];
      v18 = [[NSString alloc] initWithData:v12 encoding:4];
      (v17)[2](v17, v18);

      v19 = [(SKTaskLineParser *)self buffer];
      v20 = [v19 length];
    }

    while (v20);
  }
}

@end