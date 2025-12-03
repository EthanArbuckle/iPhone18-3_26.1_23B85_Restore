@interface SFAirDropTransferItem
- (BOOL)isEqual:(id)equal;
- (SFAirDropTransferItem)initWithCoder:(id)coder;
- (SFAirDropTransferItem)initWithType:(id)type subtype:(id)subtype isFile:(BOOL)file;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAirDropTransferItem

- (SFAirDropTransferItem)initWithType:(id)type subtype:(id)subtype isFile:(BOOL)file
{
  typeCopy = type;
  subtypeCopy = subtype;
  v16.receiver = self;
  v16.super_class = SFAirDropTransferItem;
  v10 = [(SFAirDropTransferItem *)&v16 init];
  if (v10)
  {
    v11 = [typeCopy copy];
    type = v10->_type;
    v10->_type = v11;

    v13 = [subtypeCopy copy];
    subtype = v10->_subtype;
    v10->_subtype = v13;

    v10->_count = 1;
    v10->_isFile = file;
  }

  return v10;
}

- (SFAirDropTransferItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFAirDropTransferItem *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v7 = [v6 copy];
    type = v5->_type;
    v5->_type = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtype"];
    v10 = [v9 copy];
    subtype = v5->_subtype;
    v5->_subtype = v10;

    v5->_count = [coderCopy decodeIntegerForKey:@"count"];
    v5->_isFile = [coderCopy decodeBoolForKey:@"isFile"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeObject:type forKey:@"type"];
  [coderCopy encodeObject:self->_subtype forKey:@"subtype"];
  [coderCopy encodeInteger:self->_count forKey:@"count"];
  [coderCopy encodeBool:self->_isFile forKey:@"isFile"];
}

- (id)description
{
  objc_opt_class();
  type = self->_type;
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  if (self->_subtype)
  {
    v13 = v3;
    subtype = self->_subtype;
    NSAppendPrintF();
    v5 = v13;

    v4 = v5;
  }

  count = self->_count;
  NSAppendPrintF();
  v6 = v4;

  self->_isFile;
  NSAppendPrintF();
  v7 = v6;

  NSAppendPrintF();
  v8 = v7;

  return v7;
}

- (unint64_t)hash
{
  type = [(SFAirDropTransferItem *)self type];
  v4 = [type hash];
  v5 = [(SFAirDropTransferItem *)self count]^ v4;
  isFile = [(SFAirDropTransferItem *)self isFile];

  return v5 ^ isFile;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      subtype = [(SFAirDropTransferItem *)v5 subtype];
      subtype2 = [(SFAirDropTransferItem *)self subtype];
      if (subtype == subtype2)
      {
        v10 = 1;
      }

      else
      {
        subtype3 = [(SFAirDropTransferItem *)v5 subtype];
        subtype4 = [(SFAirDropTransferItem *)self subtype];
        v10 = [subtype3 isEqual:subtype4];
      }

      type = [(SFAirDropTransferItem *)self type];
      type2 = [(SFAirDropTransferItem *)v5 type];
      LOBYTE(v11) = 0;
      if ([type isEqual:type2] && v10)
      {
        v14 = [(SFAirDropTransferItem *)self count];
        if (v14 == [(SFAirDropTransferItem *)v5 count])
        {
          isFile = [(SFAirDropTransferItem *)self isFile];
          v11 = isFile ^ [(SFAirDropTransferItem *)v5 isFile]^ 1;
        }

        else
        {
          LOBYTE(v11) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

@end