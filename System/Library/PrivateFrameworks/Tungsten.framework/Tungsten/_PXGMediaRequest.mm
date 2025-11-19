@interface _PXGMediaRequest
- (CGSize)bestReceivedSize;
- (_PXGMediaRequest)initWithAsset:(id)a3 observer:(id)a4 postProcessOptions:(unint64_t)a5;
@end

@implementation _PXGMediaRequest

- (CGSize)bestReceivedSize
{
  width = self->_bestReceivedSize.width;
  height = self->_bestReceivedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_PXGMediaRequest)initWithAsset:(id)a3 observer:(id)a4 postProcessOptions:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _PXGMediaRequest;
  v11 = [(_PXGMediaRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, a3);
    objc_storeStrong(&v12->_observer, a4);
    v12->_postProcessOptions = a5;
    v12->_bestReceivedSize = *MEMORY[0x277CBF3A8];
  }

  return v12;
}

@end