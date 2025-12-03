@interface _DUIPreviewAndImageComponentUpdate
- (BOOL)isEqual:(id)equal;
- (_DUIPreviewAndImageComponentUpdate)initWithCoder:(id)coder;
- (_DUIPreviewAndImageComponentUpdate)initWithPreviewAndImageComponent:(id)component isFromSource:(BOOL)source;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DUIPreviewAndImageComponentUpdate

- (_DUIPreviewAndImageComponentUpdate)initWithPreviewAndImageComponent:(id)component isFromSource:(BOOL)source
{
  v6.receiver = self;
  v6.super_class = _DUIPreviewAndImageComponentUpdate;
  result = [(_DUIPreviewAndImageComponent *)&v6 initWithPreviewAndImageComponent:component];
  if (result)
  {
    result->_isFromSource = source;
  }

  return result;
}

- (_DUIPreviewAndImageComponentUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _DUIPreviewAndImageComponentUpdate;
  v5 = [(_DUIPreviewAndImageComponent *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_isFromSource = [coderCopy decodeBoolForKey:@"isFromSource"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _DUIPreviewAndImageComponentUpdate;
  coderCopy = coder;
  [(_DUIPreviewAndImageComponent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_isFromSource forKey:{@"isFromSource", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_isFromSource == equalCopy[32])
  {
    v7.receiver = self;
    v7.super_class = _DUIPreviewAndImageComponentUpdate;
    v5 = [(_DUIPreviewAndImageComponent *)&v7 isEqual:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  isFromSource = self->_isFromSource;
  v4.receiver = self;
  v4.super_class = _DUIPreviewAndImageComponentUpdate;
  return [(_DUIPreviewAndImageComponent *)&v4 hash]^ isFromSource;
}

@end