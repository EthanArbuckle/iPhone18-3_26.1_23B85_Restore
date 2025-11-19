@interface TSUStreamDataCompression
- (BOOL)handleData:(id)a3 isDone:(BOOL)a4;
- (void)setHandler:(id)a3;
@end

@implementation TSUStreamDataCompression

- (BOOL)handleData:(id)a3 isDone:(BOOL)a4
{
  concat = dispatch_data_create_concat(self->_outputData, a3);
  outputData = self->_outputData;
  self->_outputData = concat;

  return 1;
}

- (void)setHandler:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AF0FC;
  v6[3] = &unk_1001CEDD8;
  v7 = a3;
  v5.receiver = self;
  v5.super_class = TSUStreamDataCompression;
  v4 = v7;
  [(TSUStreamCompression *)&v5 setHandler:v6];
}

@end