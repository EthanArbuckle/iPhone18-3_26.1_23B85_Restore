@interface _NSTextElementLocation
- (_NSTextElementLocation)initWithTextElement:(id)a3 baseLocation:(id)a4 offset:(int64_t)a5;
- (int64_t)compare:(id)a3;
- (void)dealloc;
- (void)updateBaseLocation;
@end

@implementation _NSTextElementLocation

- (_NSTextElementLocation)initWithTextElement:(id)a3 baseLocation:(id)a4 offset:(int64_t)a5
{
  v9 = [a3 textContentManager];
  if (v9 && (v10 = v9, ([objc_msgSend(a3 "elementRange")] & 1) != 0))
  {
    v14.receiver = self;
    v14.super_class = _NSTextElementLocation;
    v11 = -[NSCountableTextLocation initWithIndex:](&v14, sel_initWithIndex_, [v10 offsetFromLocation:objc_msgSend(objc_msgSend(v10 toLocation:{"documentRange"), "location"), a4}]);
    v12 = v11;
    if (v11)
    {
      v11->_textElement = a3;
      v11->_baseLocation = a4;
      v12->_offset = a5;
    }
  }

  else
  {

    return 0;
  }

  return v12;
}

- (void)dealloc
{
  self->_textElement = 0;

  self->_baseLocation = 0;
  v3.receiver = self;
  v3.super_class = _NSTextElementLocation;
  [(_NSTextElementLocation *)&v3 dealloc];
}

- (void)updateBaseLocation
{
  v3 = [(NSTextRange *)[(NSTextElement *)self->_textElement elementRange] location];
  if (([(NSTextLocation *)self->_baseLocation isEqual:v3]& 1) == 0)
  {
    v4 = [(NSTextElement *)self->_textElement textContentManager];
    if (v4)
    {
      [(NSCountableTextLocation *)self setCharacterIndex:[(NSTextContentManager *)v4 offsetFromLocation:[(NSTextRange *)[(NSTextContentManager *)v4 documentRange] location] toLocation:v3]];
    }

    self->_baseLocation = v3;
  }
}

- (int64_t)compare:(id)a3
{
  v10.receiver = self;
  v10.super_class = _NSTextElementLocation;
  v5 = [(NSCountableTextLocation *)&v10 compare:?];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a3 + 4);
    }

    else
    {
      v6 = 0;
    }

    offset = self->_offset;
    v8 = -1;
    if (offset >= v6)
    {
      v8 = 1;
    }

    if (v6 != offset)
    {
      return v8;
    }
  }

  return v5;
}

@end