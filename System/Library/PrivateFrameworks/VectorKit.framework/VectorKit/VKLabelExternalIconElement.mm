@interface VKLabelExternalIconElement
- (VKLabelExternalIconElement)initWithCoder:(id)coder;
- (VKLabelExternalIconElement)initWithIconElement:(const void *)element;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VKLabelExternalIconElement

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 12) = 1;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  *&v5 = self->_element.size._e[0];
  v9 = coderCopy;
  [coderCopy encodeFloat:@"sizeX" forKey:v5];
  *&v6 = self->_element.size._e[1];
  [v9 encodeFloat:@"sizeY" forKey:v6];
  *&v7 = self->_element.anchorPoint._e[0];
  [v9 encodeFloat:@"anchorPointX" forKey:v7];
  *&v8 = self->_element.anchorPoint._e[1];
  [v9 encodeFloat:@"anchorPointY" forKey:v8];
  [v9 encodeBool:self->_element.isRound forKey:@"isRound"];
  [v9 encodeInt32:self->_element.minZoom forKey:@"minZoom"];
}

- (VKLabelExternalIconElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = VKLabelExternalIconElement;
  v5 = [(VKLabelExternalIconElement *)&v11 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"sizeX"];
    v5->_element.size._e[0] = v6;
    [coderCopy decodeFloatForKey:@"sizeY"];
    v5->_element.size._e[1] = v7;
    [coderCopy decodeFloatForKey:@"anchorPointX"];
    v5->_element.anchorPoint._e[0] = v8;
    [coderCopy decodeFloatForKey:@"anchorPointY"];
    v5->_element.anchorPoint._e[1] = v9;
    v5->_element.isRound = [coderCopy decodeBoolForKey:@"isRound"];
    v5->_element.minZoom = [coderCopy decodeInt32ForKey:@"minZoom"];
  }

  return v5;
}

- (VKLabelExternalIconElement)initWithIconElement:(const void *)element
{
  v5.receiver = self;
  v5.super_class = VKLabelExternalIconElement;
  result = [(VKLabelExternalIconElement *)&v5 init];
  if (result)
  {
    result->_element.size._e[0] = *element;
    result->_element.size._e[1] = *(element + 1);
    result->_element.anchorPoint._e[0] = *(element + 2);
    result->_element.anchorPoint._e[1] = *(element + 3);
    *&result->_element.isRound = *(element + 8);
  }

  return result;
}

@end