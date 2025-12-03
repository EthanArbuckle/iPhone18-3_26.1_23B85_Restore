@interface SFProxyText
- (BOOL)isEqual:(id)equal;
- (SFProxyText)initWithCoder:(id)coder;
- (SFProxyText)initWithSlotIdentifier:(unsigned int)identifier;
- (SFProxyText)initWithText:(id)text;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFProxyText

- (SFProxyText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  v6 = [coderCopy decodeInt32ForKey:@"slotIdentifier"];
  [coderCopy decodeDoubleForKey:@"slotTextHeight"];
  v8 = v7;

  if (v5)
  {
    v9 = [(SFProxyText *)self initWithText:v5];
  }

  else
  {
    v9 = [(SFProxyText *)self initWithSlotIdentifier:v6 slotTextHeight:v8];
  }

  v10 = v9;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeInt32:self->_slotIdentifier forKey:@"slotIdentifier"];
  [coderCopy encodeDouble:@"slotTextHeight" forKey:self->_slotTextHeight];
}

- (SFProxyText)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = SFProxyText;
  v5 = [(SFProxyText *)&v9 init];
  if (v5)
  {
    v6 = [textCopy copy];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

- (SFProxyText)initWithSlotIdentifier:(unsigned int)identifier
{
  v5.receiver = self;
  v5.super_class = SFProxyText;
  result = [(SFProxyText *)&v5 init];
  if (result)
  {
    result->_slotIdentifier = identifier;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = SFProxyText;
  v4 = [(SFProxyText *)&v10 description];
  text = [(SFProxyText *)self text];
  slotIdentifier = [(SFProxyText *)self slotIdentifier];
  [(SFProxyText *)self slotTextHeight];
  v8 = [v3 stringWithFormat:@"<%@: text:%@ slotIdentifier:%u slotTextHeight:%f>", v4, text, slotIdentifier, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];

  text = [(SFProxyText *)self text];
  if (text)
  {
    text2 = [(SFProxyText *)self text];
    slotIdentifier = [text2 hash];
  }

  else
  {
    slotIdentifier = [(SFProxyText *)self slotIdentifier];
  }

  return slotIdentifier ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      text = [(SFProxyText *)self text];
      text2 = [(SFProxyText *)v5 text];
      v8 = text;
      v9 = text2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {

          goto LABEL_13;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_13;
        }
      }

      slotIdentifier = [(SFProxyText *)self slotIdentifier];
      if (slotIdentifier == [(SFProxyText *)v5 slotIdentifier])
      {
        [(SFProxyText *)self slotTextHeight];
        v15 = v14;
        [(SFProxyText *)v5 slotTextHeight];
        v12 = v15 == v16;
LABEL_14:

        goto LABEL_15;
      }

LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

    v12 = 0;
  }

LABEL_15:

  return v12;
}

@end