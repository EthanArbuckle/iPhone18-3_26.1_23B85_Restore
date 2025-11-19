@interface SFProxyText
- (BOOL)isEqual:(id)a3;
- (SFProxyText)initWithCoder:(id)a3;
- (SFProxyText)initWithSlotIdentifier:(unsigned int)a3;
- (SFProxyText)initWithText:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFProxyText

- (SFProxyText)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  v6 = [v4 decodeInt32ForKey:@"slotIdentifier"];
  [v4 decodeDoubleForKey:@"slotTextHeight"];
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

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeInt32:self->_slotIdentifier forKey:@"slotIdentifier"];
  [v5 encodeDouble:@"slotTextHeight" forKey:self->_slotTextHeight];
}

- (SFProxyText)initWithText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFProxyText;
  v5 = [(SFProxyText *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

- (SFProxyText)initWithSlotIdentifier:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = SFProxyText;
  result = [(SFProxyText *)&v5 init];
  if (result)
  {
    result->_slotIdentifier = a3;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = SFProxyText;
  v4 = [(SFProxyText *)&v10 description];
  v5 = [(SFProxyText *)self text];
  v6 = [(SFProxyText *)self slotIdentifier];
  [(SFProxyText *)self slotTextHeight];
  v8 = [v3 stringWithFormat:@"<%@: text:%@ slotIdentifier:%u slotTextHeight:%f>", v4, v5, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];

  v6 = [(SFProxyText *)self text];
  if (v6)
  {
    v7 = [(SFProxyText *)self text];
    v8 = [v7 hash];
  }

  else
  {
    v8 = [(SFProxyText *)self slotIdentifier];
  }

  return v8 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFProxyText *)self text];
      v7 = [(SFProxyText *)v5 text];
      v8 = v6;
      v9 = v7;
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

      v13 = [(SFProxyText *)self slotIdentifier];
      if (v13 == [(SFProxyText *)v5 slotIdentifier])
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