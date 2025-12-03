@interface CACLabeledElement
- (BOOL)_rect:(CGRect)_rect rouglyEqualTo:(CGRect)to;
- (BOOL)isIdenticalTo:(id)to;
- (CACLabeledElement)initWithElement:(id)element recognitionStrings:(id)strings rectangle:(CGRect)rectangle;
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
- (int64_t)quantizedPositionCompare:(id)compare;
- (unint64_t)traits;
@end

@implementation CACLabeledElement

- (NSString)unfilteredRecognitionLabel
{
  element = [(CACLabeledElement *)self element];
  speechInputLabel = [element speechInputLabel];

  return speechInputLabel;
}

- (NSString)fullLabel
{
  element = [(CACLabeledElement *)self element];
  label = [element label];

  return label;
}

- (NSString)valueLabel
{
  element = [(CACLabeledElement *)self element];
  value = [element value];

  return value;
}

- (unint64_t)traits
{
  element = [(CACLabeledElement *)self element];
  traits = [element traits];

  return traits;
}

- (CGRect)frame
{
  element = [(CACLabeledElement *)self element];
  [element frame];
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

- (CACLabeledElement)initWithElement:(id)element recognitionStrings:(id)strings rectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  elementCopy = element;
  stringsCopy = strings;
  v39.receiver = self;
  v39.super_class = CACLabeledElement;
  v13 = [(CACLabeledElement *)&v39 init];
  v14 = v13;
  if (v13)
  {
    [(CACLabeledElement *)v13 setElement:elementCopy];
    [(CACLabeledElement *)v14 setRecognitionStrings:stringsCopy];
    [(CACLabeledElement *)v14 setRectangle:x, y, width, height];
    uiElement = [elementCopy uiElement];
    v16 = [uiElement stringWithAXAttribute:5019];
    [(CACLabeledElement *)v14 setAxIdentifier:v16];

    v14->_displayID = [elementCopy windowDisplayId];
    v17 = +[CACDisplayManager sharedManager];
    v18 = [v17 overlayViewForDisplayID:v14->_displayID];

    v19 = +[CACDisplayManager sharedManager];
    carPlayConnected = [v19 carPlayConnected];

    systemWideElement = [MEMORY[0x277CE6BA0] systemWideElement];
    v22 = systemWideElement;
    if (carPlayConnected)
    {
      v23 = [systemWideElement elementsForAttribute:1009];
      firstObject = [v23 firstObject];

      v22 = firstObject;
    }

    [(CACLabeledElement *)v14 rectangle];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    window = [v18 window];
    [v22 convertRect:objc_msgSend(window toContextId:"_contextId") displayId:{v14->_displayID, v26, v28, v30, v32}];
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

- (int64_t)quantizedPositionCompare:(id)compare
{
  compareCopy = compare;
  [(CACLabeledElement *)self quantizedPosition];
  v6 = v5;
  [(CACLabeledElement *)self quantizedPosition];
  v8 = v6 + v7 / 1000.0;
  [compareCopy quantizedPosition];
  v10 = v9;
  [compareCopy quantizedPosition];
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
  numberedLabel = [(CACLabeledElement *)self numberedLabel];
  v6 = [v3 stringWithFormat:@"Labeled element: %@, %@, label:(%f, %f, %f, %f), elmt:(%f, %f, %f, %f), %@", recognitionStrings, numberedLabel, *&self->_labelRectangle.origin.x, *&self->_labelRectangle.origin.y, *&self->_labelRectangle.size.width, *&self->_labelRectangle.size.height, *&self->_rectangle.origin.x, *&self->_rectangle.origin.y, *&self->_rectangle.size.width, *&self->_rectangle.size.height, self->_element];

  return v6;
}

- (NSString)numberedLabel
{
  number = [(CACLabeledElement *)self number];
  if (number)
  {
    number = [CACLocaleUtilities displayStringForOverlayNumber:[(CACLabeledElement *)self number]];
  }

  return number;
}

- (NSString)numberedLabelForRecognition
{
  number = [(CACLabeledElement *)self number];
  if (number)
  {
    number = [CACLocaleUtilities recognitionStringForOverlayNumber:[(CACLabeledElement *)self number]];
  }

  return number;
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

- (BOOL)_rect:(CGRect)_rect rouglyEqualTo:(CGRect)to
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  v8 = _rect.size.height;
  v9 = _rect.size.width;
  v10 = _rect.origin.y;
  v11 = _rect.origin.x;
  if (CGRectEqualToRect(_rect, to))
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

- (BOOL)isIdenticalTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = toCopy;
    element = [(CACLabeledElement *)self element];
    element2 = [v5 element];
    v8 = [element isEqual:element2];

    if (v8)
    {
LABEL_3:
      v9 = 1;
LABEL_9:

      goto LABEL_10;
    }

    label = [(CACLabeledElement *)self label];
    label2 = [v5 label];
    if ([label compare:label2 options:129])
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