@interface TSUStreamDataCompression
- (BOOL)handleData:(id)data isDone:(BOOL)done;
- (void)setHandler:(id)handler;
@end

@implementation TSUStreamDataCompression

- (BOOL)handleData:(id)data isDone:(BOOL)done
{
  concat = dispatch_data_create_concat(self->_outputData, data);
  outputData = self->_outputData;
  self->_outputData = concat;

  return 1;
}

- (void)setHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AF0FC;
  v6[3] = &unk_1001CEDD8;
  handlerCopy = handler;
  v5.receiver = self;
  v5.super_class = TSUStreamDataCompression;
  v4 = handlerCopy;
  [(TSUStreamCompression *)&v5 setHandler:v6];
}

@end