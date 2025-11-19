@interface VKLabelExternalIconElement
- (VKLabelExternalIconElement)initWithCoder:(id)a3;
- (VKLabelExternalIconElement)initWithIconElement:(const void *)a3;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VKLabelExternalIconElement

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 12) = 1;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  *&v5 = self->_element.size._e[0];
  v9 = v4;
  [v4 encodeFloat:@"sizeX" forKey:v5];
  *&v6 = self->_element.size._e[1];
  [v9 encodeFloat:@"sizeY" forKey:v6];
  *&v7 = self->_element.anchorPoint._e[0];
  [v9 encodeFloat:@"anchorPointX" forKey:v7];
  *&v8 = self->_element.anchorPoint._e[1];
  [v9 encodeFloat:@"anchorPointY" forKey:v8];
  [v9 encodeBool:self->_element.isRound forKey:@"isRound"];
  [v9 encodeInt32:self->_element.minZoom forKey:@"minZoom"];
}

- (VKLabelExternalIconElement)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VKLabelExternalIconElement;
  v5 = [(VKLabelExternalIconElement *)&v11 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"sizeX"];
    v5->_element.size._e[0] = v6;
    [v4 decodeFloatForKey:@"sizeY"];
    v5->_element.size._e[1] = v7;
    [v4 decodeFloatForKey:@"anchorPointX"];
    v5->_element.anchorPoint._e[0] = v8;
    [v4 decodeFloatForKey:@"anchorPointY"];
    v5->_element.anchorPoint._e[1] = v9;
    v5->_element.isRound = [v4 decodeBoolForKey:@"isRound"];
    v5->_element.minZoom = [v4 decodeInt32ForKey:@"minZoom"];
  }

  return v5;
}

- (VKLabelExternalIconElement)initWithIconElement:(const void *)a3
{
  v5.receiver = self;
  v5.super_class = VKLabelExternalIconElement;
  result = [(VKLabelExternalIconElement *)&v5 init];
  if (result)
  {
    result->_element.size._e[0] = *a3;
    result->_element.size._e[1] = *(a3 + 1);
    result->_element.anchorPoint._e[0] = *(a3 + 2);
    result->_element.anchorPoint._e[1] = *(a3 + 3);
    *&result->_element.isRound = *(a3 + 8);
  }

  return result;
}

@end