@interface TSUStreamDataCompression
- (BOOL)handleData:(id)data isDone:(BOOL)done;
- (TSUStreamDataCompression)initWithAlgorithm:(int)algorithm operation:(int)operation;
- (void)setHandler:(id)handler;
@end

@implementation TSUStreamDataCompression

- (TSUStreamDataCompression)initWithAlgorithm:(int)algorithm operation:(int)operation
{
  v8.receiver = self;
  v8.super_class = TSUStreamDataCompression;
  v4 = [(TSUStreamCompression *)&v8 initWithAlgorithm:*&algorithm operation:*&operation];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_outputData, MEMORY[0x277D85CC8]);
    v7.receiver = v5;
    v7.super_class = TSUStreamDataCompression;
    [(TSUStreamCompression *)&v7 setHandler:&unk_28862B7E0];
  }

  return v5;
}

- (BOOL)handleData:(id)data isDone:(BOOL)done
{
  concat = dispatch_data_create_concat(self->_outputData, data);
  outputData = self->_outputData;
  self->_outputData = concat;

  return 1;
}

- (void)setHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770F387C;
  v7[3] = &unk_27A703918;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = TSUStreamDataCompression;
  v5 = handlerCopy;
  [(TSUStreamCompression *)&v6 setHandler:v7];
}

@end