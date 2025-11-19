@interface TSCHMultiDataAnimatingFrameLayer
- (CGPoint)presentationPosition;
- (CGRect)currentFrame;
- (CGRect)presentationBounds;
- (TSCHMultiDataAnimatingFrameLayer)init;
- (TSCHMultiDataAnimatingFrameLayer)initWithLayer:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPosition:(CGPoint)a3;
@end

@implementation TSCHMultiDataAnimatingFrameLayer

- (TSCHMultiDataAnimatingFrameLayer)init
{
  v4.receiver = self;
  v4.super_class = TSCHMultiDataAnimatingFrameLayer;
  result = [(TSCHMultiDataAnimatingFrameLayer *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    result->_presentationBounds.origin = *MEMORY[0x277CBF3A0];
    result->_presentationBounds.size = v3;
    result->_presentationPosition = *MEMORY[0x277CBF348];
  }

  return result;
}

- (TSCHMultiDataAnimatingFrameLayer)initWithLayer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSCHMultiDataAnimatingFrameLayer;
  v5 = [(TSCHMultiDataAnimatingFrameLayer *)&v9 initWithLayer:v4];
  if (v5)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      v5->_presentationPosition = v6[5];
      v7 = v6[4];
      v5->_presentationBounds.origin = v6[3];
      v5->_presentationBounds.size = v7;
    }
  }

  return v5;
}

- (void)setFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = TSCHMultiDataAnimatingFrameLayer;
  [(TSCHMultiDataAnimatingFrameLayer *)&v20 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_msgSend_bounds(self, v4, v5, v6, v7);
  objc_msgSend_setPresentationBounds_(self, v8, v9, v10, v11);
  objc_msgSend_position(self, v12, v13, v14, v15);
  objc_msgSend_setPresentationPosition_(self, v16, v17, v18, v19);
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = TSCHMultiDataAnimatingFrameLayer;
  [(TSCHMultiDataAnimatingFrameLayer *)&v9 setBounds:?];
  objc_msgSend_setPresentationBounds_(self, v8, x, y, width, height);
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v8.receiver = self;
  v8.super_class = TSCHMultiDataAnimatingFrameLayer;
  [(TSCHMultiDataAnimatingFrameLayer *)&v8 setPosition:?];
  objc_msgSend_setPresentationPosition_(self, v6, x, y, v7);
}

- (CGRect)currentFrame
{
  v6 = objc_msgSend_presentationLayer(self, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    objc_msgSend_presentationBounds(v6, v7, v8, v9, v10);
    v13 = v12;
    v15 = v14;
    objc_msgSend_presentationPosition(v11, v16, v17, v18, v12);
    v20 = v19;
    v22 = v21;
    objc_msgSend_anchorPoint(self, v23, v19, v21, v24);
    v26 = v20 - v13 * v25;
    v28 = v22 - v15 * v27;
  }

  else
  {
    objc_msgSend_frame(self, v7, v8, v9, v10);
    v26 = v29;
    v28 = v30;
    v13 = v31;
    v15 = v32;
  }

  v33 = v26;
  v34 = v28;
  v35 = v13;
  v36 = v15;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (CGRect)presentationBounds
{
  x = self->_presentationBounds.origin.x;
  y = self->_presentationBounds.origin.y;
  width = self->_presentationBounds.size.width;
  height = self->_presentationBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)presentationPosition
{
  x = self->_presentationPosition.x;
  y = self->_presentationPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end