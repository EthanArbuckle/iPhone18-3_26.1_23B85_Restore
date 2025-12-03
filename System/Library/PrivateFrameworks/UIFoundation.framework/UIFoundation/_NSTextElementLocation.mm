@interface _NSTextElementLocation
- (_NSTextElementLocation)initWithTextElement:(id)element baseLocation:(id)location offset:(int64_t)offset;
- (int64_t)compare:(id)compare;
- (void)dealloc;
- (void)updateBaseLocation;
@end

@implementation _NSTextElementLocation

- (_NSTextElementLocation)initWithTextElement:(id)element baseLocation:(id)location offset:(int64_t)offset
{
  textContentManager = [element textContentManager];
  if (textContentManager && (v10 = textContentManager, ([objc_msgSend(element "elementRange")] & 1) != 0))
  {
    v14.receiver = self;
    v14.super_class = _NSTextElementLocation;
    v11 = -[NSCountableTextLocation initWithIndex:](&v14, sel_initWithIndex_, [v10 offsetFromLocation:objc_msgSend(objc_msgSend(v10 toLocation:{"documentRange"), "location"), location}]);
    v12 = v11;
    if (v11)
    {
      v11->_textElement = element;
      v11->_baseLocation = location;
      v12->_offset = offset;
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
  location = [(NSTextRange *)[(NSTextElement *)self->_textElement elementRange] location];
  if (([(NSTextLocation *)self->_baseLocation isEqual:location]& 1) == 0)
  {
    textContentManager = [(NSTextElement *)self->_textElement textContentManager];
    if (textContentManager)
    {
      [(NSCountableTextLocation *)self setCharacterIndex:[(NSTextContentManager *)textContentManager offsetFromLocation:[(NSTextRange *)[(NSTextContentManager *)textContentManager documentRange] location] toLocation:location]];
    }

    self->_baseLocation = location;
  }
}

- (int64_t)compare:(id)compare
{
  v10.receiver = self;
  v10.super_class = _NSTextElementLocation;
  v5 = [(NSCountableTextLocation *)&v10 compare:?];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(compare + 4);
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