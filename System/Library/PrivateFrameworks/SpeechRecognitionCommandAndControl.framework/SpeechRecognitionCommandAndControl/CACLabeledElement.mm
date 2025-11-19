@interface CACLabeledElement
- (BOOL)_rect:(CGRect)a3 rouglyEqualTo:(CGRect)a4;
- (BOOL)isIdenticalTo:(id)a3;
- (CACLabeledElement)initWithElement:(id)a3 recognitionStrings:(id)a4 rectangle:(CGRect)a5;
- (CGPoint)quantizedPosition;
- (CGRect)frame;
- (CGRect)interfaceOrientedRectangle;
- (CGRect)labelRectangle;
- (CGRect)rectangle;
- (CGSize)elementLabelContainerSize;
- (NSString)fullLabel;
- (NSString)numberedLabel;
- (NSString)numberedLabelForRecognition;
- (NSString)unfilteredRecognitionLabel;
- (NSString)valueLabel;
- (id)description;
- (int64_t)quantizedPositionCompare:(id)a3;
- (unint64_t)traits;
@end

@implementation CACLabeledElement

- (NSString)unfilteredRecognitionLabel
{
  v2 = [(CACLabeledElement *)self element];
  v3 = [v2 speechInputLabel];

  return v3;
}

- (NSString)fullLabel
{
  v2 = [(CACLabeledElement *)self element];
  v3 = [v2 label];

  return v3;
}

- (NSString)valueLabel
{
  v2 = [(CACLabeledElement *)self element];
  v3 = [v2 value];

  return v3;
}

- (unint64_t)traits
{
  v2 = [(CACLabeledElement *)self element];
  v3 = [v2 traits];

  return v3;
}

- (CGRect)frame
{
  v2 = [(CACLabeledElement *)self element];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CACLabeledElement)initWithElement:(id)a3 recognitionStrings:(id)a4 rectangle:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v39.receiver = self;
  v39.super_class = CACLabeledElement;
  v13 = [(CACLabeledElement *)&v39 init];
  v14 = v13;
  if (v13)
  {
    [(CACLabeledElement *)v13 setElement:v11];
    [(CACLabeledElement *)v14 setRecognitionStrings:v12];
    [(CACLabeledElement *)v14 setRectangle:x, y, width, height];
    v15 = [v11 uiElement];
    v16 = [v15 stringWithAXAttribute:5019];
    [(CACLabeledElement *)v14 setAxIdentifier:v16];

    v14->_displayID = [v11 windowDisplayId];
    v17 = +[CACDisplayManager sharedManager];
    v18 = [v17 overlayViewForDisplayID:v14->_displayID];

    v19 = +[CACDisplayManager sharedManager];
    v20 = [v19 carPlayConnected];

    v21 = [MEMORY[0x277CE6BA0] systemWideElement];
    v22 = v21;
    if (v20)
    {
      v23 = [v21 elementsForAttribute:1009];
      v24 = [v23 firstObject];

      v22 = v24;
    }

    [(CACLabeledElement *)v14 rectangle];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [v18 window];
    [v22 convertRect:objc_msgSend(v33 toContextId:"_contextId") displayId:{v14->_displayID, v26, v28, v30, v32}];
    v14->_interfaceRectangle.origin.x = v34;
    v14->_interfaceRectangle.origin.y = v35;
    v14->_interfaceRectangle.size.width = v36;
    v14->_interfaceRectangle.size.height = v37;
  }

  return v14;
}

- (CGPoint)quantizedPosition
{
  v2.f64[0] = self->_rectangle.origin.x;
  v2.f64[1] = self->_rectangle.origin.y + self->_rectangle.size.height;
  __asm { FMOV            V1.2D, #10.0 }

  v8 = vcvtq_f64_f32(vrnd_f32(vcvt_f32_f64(vdivq_f64(v2, _Q1))));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (int64_t)quantizedPositionCompare:(id)a3
{
  v4 = a3;
  [(CACLabeledElement *)self quantizedPosition];
  v6 = v5;
  [(CACLabeledElement *)self quantizedPosition];
  v8 = v6 + v7 / 1000.0;
  [v4 quantizedPosition];
  v10 = v9;
  [v4 quantizedPosition];
  v12 = v11;

  if (v8 >= v10 + v12 / 1000.0)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (CGRect)interfaceOrientedRectangle
{
  x = self->_interfaceRectangle.origin.x;
  y = self->_interfaceRectangle.origin.y;
  width = self->_interfaceRectangle.size.width;
  height = self->_interfaceRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  recognitionStrings = self->_recognitionStrings;
  v5 = [(CACLabeledElement *)self numberedLabel];
  v6 = [v3 stringWithFormat:@"Labeled element: %@, %@, label:(%f, %f, %f, %f), elmt:(%f, %f, %f, %f), %@", recognitionStrings, v5, *&self->_labelRectangle.origin.x, *&self->_labelRectangle.origin.y, *&self->_labelRectangle.size.width, *&self->_labelRectangle.size.height, *&self->_rectangle.origin.x, *&self->_rectangle.origin.y, *&self->_rectangle.size.width, *&self->_rectangle.size.height, self->_element];

  return v6;
}

- (NSString)numberedLabel
{
  v3 = [(CACLabeledElement *)self number];
  if (v3)
  {
    v3 = [CACLocaleUtilities displayStringForOverlayNumber:[(CACLabeledElement *)self number]];
  }

  return v3;
}

- (NSString)numberedLabelForRecognition
{
  v3 = [(CACLabeledElement *)self number];
  if (v3)
  {
    v3 = [CACLocaleUtilities recognitionStringForOverlayNumber:[(CACLabeledElement *)self number]];
  }

  return v3;
}

- (CGRect)rectangle
{
  x = self->_rectangle.origin.x;
  y = self->_rectangle.origin.y;
  width = self->_rectangle.size.width;
  height = self->_rectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)labelRectangle
{
  x = self->_labelRectangle.origin.x;
  y = self->_labelRectangle.origin.y;
  width = self->_labelRectangle.size.width;
  height = self->_labelRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)elementLabelContainerSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)_rect:(CGRect)a3 rouglyEqualTo:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if (CGRectEqualToRect(a3, a4))
  {
    return 1;
  }

  v13 = vabdd_f64(v9 * v8, width * height) < 1.0;
  v14 = vabdd_f64(v10, y);
  if (vabdd_f64(v11, x) >= 1.0)
  {
    v13 = 0;
  }

  return v14 < 1.0 && v13;
}

- (BOOL)isIdenticalTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CACLabeledElement *)self element];
    v7 = [v5 element];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
LABEL_3:
      v9 = 1;
LABEL_9:

      goto LABEL_10;
    }

    v10 = [(CACLabeledElement *)self label];
    v11 = [v5 label];
    if ([v10 compare:v11 options:129])
    {
    }

    else
    {
      [(CACLabeledElement *)self frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v5 frame];
      v24 = [(CACLabeledElement *)self _rect:v13 rouglyEqualTo:v15, v17, v19, v20, v21, v22, v23];

      if (v24)
      {
        goto LABEL_3;
      }
    }

    v9 = 0;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

@end