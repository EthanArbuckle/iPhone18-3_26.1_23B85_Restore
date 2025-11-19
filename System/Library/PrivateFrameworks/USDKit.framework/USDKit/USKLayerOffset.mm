@interface USKLayerOffset
- (BOOL)isEqual:(id)a3;
- (SdfLayerOffset)sdfLayerOffset;
- (USKLayerOffset)init;
- (USKLayerOffset)initWithOffset:(double)a3 scale:(double)a4;
- (USKLayerOffset)initWithSdfLayerOffset:(SdfLayerOffset)a3;
@end

@implementation USKLayerOffset

- (SdfLayerOffset)sdfLayerOffset
{
  offset = self->_layerOffset._offset;
  scale = self->_layerOffset._scale;
  result._scale = scale;
  result._offset = offset;
  return result;
}

- (USKLayerOffset)init
{
  v6.receiver = self;
  v6.super_class = USKLayerOffset;
  v2 = [(USKLayerOffset *)&v6 init];
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v5, 0.0, 1.0);
    *(v2 + 8) = v5;
    v3 = v2;
  }

  return v2;
}

- (USKLayerOffset)initWithSdfLayerOffset:(SdfLayerOffset)a3
{
  scale = a3._scale;
  offset = a3._offset;
  v9.receiver = self;
  v9.super_class = USKLayerOffset;
  v5 = [(USKLayerOffset *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_layerOffset._offset = offset;
    v5->_layerOffset._scale = scale;
    v7 = v5;
  }

  return v6;
}

- (USKLayerOffset)initWithOffset:(double)a3 scale:(double)a4
{
  v10.receiver = self;
  v10.super_class = USKLayerOffset;
  v6 = [(USKLayerOffset *)&v10 init];
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v9, a3, a4);
    *(v6 + 8) = v9;
    v7 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend_sdfLayerOffset(v5, v6, v7, v8);
    v9 = pxrInternal__aapl__pxrReserved__::SdfLayerOffset::operator==();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end