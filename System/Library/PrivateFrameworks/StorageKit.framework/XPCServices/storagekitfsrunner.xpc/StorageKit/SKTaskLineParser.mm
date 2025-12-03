@interface SKTaskLineParser
+ (NSData)lineData;
- (SKTaskLineParser)initWithCallback:(id)callback;
- (void)parseData:(id)data;
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

- (SKTaskLineParser)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v8.receiver = self;
  v8.super_class = SKTaskLineParser;
  v5 = [(SKTaskLineParser *)&v8 init];
  if (v5)
  {
    v6 = +[NSMutableData data];
    [(SKTaskLineParser *)v5 setBuffer:v6];

    [(SKTaskLineParser *)v5 setCallback:callbackCopy];
  }

  return v5;
}

- (void)parseData:(id)data
{
  dataCopy = data;
  buffer = [(SKTaskLineParser *)self buffer];
  [buffer appendData:dataCopy];

  buffer2 = [(SKTaskLineParser *)self buffer];
  v6 = [buffer2 length];

  if (v6)
  {
    do
    {
      buffer3 = [(SKTaskLineParser *)self buffer];
      lineData = [objc_opt_class() lineData];
      buffer4 = [(SKTaskLineParser *)self buffer];
      v10 = [buffer3 rangeOfData:lineData options:0 range:{0, objc_msgSend(buffer4, "length")}];

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      buffer5 = [(SKTaskLineParser *)self buffer];
      v12 = [buffer5 subdataWithRange:{0, v10}];

      buffer6 = [(SKTaskLineParser *)self buffer];
      buffer7 = [(SKTaskLineParser *)self buffer];
      buffer8 = [(SKTaskLineParser *)self buffer];
      v16 = [buffer7 subdataWithRange:{v10 + 1, objc_msgSend(buffer8, "length") + ~objc_msgSend(v12, "length")}];
      [buffer6 setData:v16];

      callback = [(SKTaskLineParser *)self callback];
      v18 = [[NSString alloc] initWithData:v12 encoding:4];
      (callback)[2](callback, v18);

      buffer9 = [(SKTaskLineParser *)self buffer];
      v20 = [buffer9 length];
    }

    while (v20);
  }
}

@end