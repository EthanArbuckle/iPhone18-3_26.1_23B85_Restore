@interface PTAssetFSDNetworkInputFrame
- (PTAssetFSDNetworkInputFrame)initWithRef:(__CVBuffer *)a3 aux:(__CVBuffer *)a4 unrectifyData:(id)a5 index:(unint64_t)a6;
- (void)setTime:(id *)a3;
@end

@implementation PTAssetFSDNetworkInputFrame

- (PTAssetFSDNetworkInputFrame)initWithRef:(__CVBuffer *)a3 aux:(__CVBuffer *)a4 unrectifyData:(id)a5 index:(unint64_t)a6
{
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PTAssetFSDNetworkInputFrame;
  v11 = [(PTAssetFSDNetworkInputFrame *)&v14 init];
  v11->_refImageBuffer = a3;
  v11->_auxImageBuffer = a4;
  unrectifyData = v11->_unrectifyData;
  v11->_unrectifyData = v10;

  v11->_index = a6;
  return v11;
}

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

@end