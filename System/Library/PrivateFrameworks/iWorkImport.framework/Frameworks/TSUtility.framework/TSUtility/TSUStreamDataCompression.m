@interface TSUStreamDataCompression
- (BOOL)handleData:(id)a3 isDone:(BOOL)a4;
- (TSUStreamDataCompression)initWithAlgorithm:(int)a3 operation:(int)a4;
- (void)setHandler:(id)a3;
@end

@implementation TSUStreamDataCompression

- (TSUStreamDataCompression)initWithAlgorithm:(int)a3 operation:(int)a4
{
  v8.receiver = self;
  v8.super_class = TSUStreamDataCompression;
  v4 = [(TSUStreamCompression *)&v8 initWithAlgorithm:*&a3 operation:*&a4];
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

- (BOOL)handleData:(id)a3 isDone:(BOOL)a4
{
  concat = dispatch_data_create_concat(self->_outputData, a3);
  outputData = self->_outputData;
  self->_outputData = concat;

  return 1;
}

- (void)setHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770F387C;
  v7[3] = &unk_27A703918;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = TSUStreamDataCompression;
  v5 = v4;
  [(TSUStreamCompression *)&v6 setHandler:v7];
}

@end