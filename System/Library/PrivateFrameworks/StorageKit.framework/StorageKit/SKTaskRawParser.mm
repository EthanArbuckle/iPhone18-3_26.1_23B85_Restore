@interface SKTaskRawParser
- (SKTaskRawParser)initWithCallback:(id)callback;
- (void)parseData:(id)data;
@end

@implementation SKTaskRawParser

- (SKTaskRawParser)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v8.receiver = self;
  v8.super_class = SKTaskRawParser;
  v5 = [(SKTaskRawParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKTaskRawParser *)v5 setCallback:callbackCopy];
  }

  return v6;
}

- (void)parseData:(id)data
{
  dataCopy = data;
  callback = [(SKTaskRawParser *)self callback];
  callback[2](callback, dataCopy);
}

@end