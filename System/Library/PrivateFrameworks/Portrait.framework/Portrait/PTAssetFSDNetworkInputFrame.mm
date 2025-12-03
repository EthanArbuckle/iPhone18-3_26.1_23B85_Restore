@interface PTAssetFSDNetworkInputFrame
- (PTAssetFSDNetworkInputFrame)initWithRef:(__CVBuffer *)ref aux:(__CVBuffer *)aux unrectifyData:(id)data index:(unint64_t)index;
- (void)setTime:(id *)time;
@end

@implementation PTAssetFSDNetworkInputFrame

- (PTAssetFSDNetworkInputFrame)initWithRef:(__CVBuffer *)ref aux:(__CVBuffer *)aux unrectifyData:(id)data index:(unint64_t)index
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = PTAssetFSDNetworkInputFrame;
  v11 = [(PTAssetFSDNetworkInputFrame *)&v14 init];
  v11->_refImageBuffer = ref;
  v11->_auxImageBuffer = aux;
  unrectifyData = v11->_unrectifyData;
  v11->_unrectifyData = dataCopy;

  v11->_index = index;
  return v11;
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

@end