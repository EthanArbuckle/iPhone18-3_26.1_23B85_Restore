@interface SKTaskLineParser
+ (NSData)lineData;
- (SKTaskLineParser)initWithCallback:(id)callback;
- (void)parseData:(id)data;
@end

@implementation SKTaskLineParser

+ (NSData)lineData
{
  if (onceToken != -1)
  {
    +[SKTaskLineParser lineData];
  }

  v3 = _lineData;

  return v3;
}

uint64_t __28__SKTaskLineParser_lineData__block_invoke()
{
  _lineData = [@"\n" dataUsingEncoding:4];

  return MEMORY[0x2821F96F8]();
}

- (SKTaskLineParser)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v8.receiver = self;
  v8.super_class = SKTaskLineParser;
  v5 = [(SKTaskLineParser *)&v8 init];
  if (v5)
  {
    data = [MEMORY[0x277CBEB28] data];
    [(SKTaskLineParser *)v5 setBuffer:data];

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
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
      (callback)[2](callback, v18);

      buffer9 = [(SKTaskLineParser *)self buffer];
      v20 = [buffer9 length];
    }

    while (v20);
  }
}

@end