@interface SFAirDropTransferItem
- (BOOL)isEqual:(id)a3;
- (SFAirDropTransferItem)initWithCoder:(id)a3;
- (SFAirDropTransferItem)initWithType:(id)a3 subtype:(id)a4 isFile:(BOOL)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAirDropTransferItem

- (SFAirDropTransferItem)initWithType:(id)a3 subtype:(id)a4 isFile:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = SFAirDropTransferItem;
  v10 = [(SFAirDropTransferItem *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    type = v10->_type;
    v10->_type = v11;

    v13 = [v9 copy];
    subtype = v10->_subtype;
    v10->_subtype = v13;

    v10->_count = 1;
    v10->_isFile = a5;
  }

  return v10;
}

- (SFAirDropTransferItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFAirDropTransferItem *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v7 = [v6 copy];
    type = v5->_type;
    v5->_type = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtype"];
    v10 = [v9 copy];
    subtype = v5->_subtype;
    v5->_subtype = v10;

    v5->_count = [v4 decodeIntegerForKey:@"count"];
    v5->_isFile = [v4 decodeBoolForKey:@"isFile"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeObject:type forKey:@"type"];
  [v5 encodeObject:self->_subtype forKey:@"subtype"];
  [v5 encodeInteger:self->_count forKey:@"count"];
  [v5 encodeBool:self->_isFile forKey:@"isFile"];
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
  v3 = [(SFAirDropTransferItem *)self type];
  v4 = [v3 hash];
  v5 = [(SFAirDropTransferItem *)self count]^ v4;
  v6 = [(SFAirDropTransferItem *)self isFile];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFAirDropTransferItem *)v5 subtype];
      v7 = [(SFAirDropTransferItem *)self subtype];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(SFAirDropTransferItem *)v5 subtype];
        v9 = [(SFAirDropTransferItem *)self subtype];
        v10 = [v8 isEqual:v9];
      }

      v12 = [(SFAirDropTransferItem *)self type];
      v13 = [(SFAirDropTransferItem *)v5 type];
      LOBYTE(v11) = 0;
      if ([v12 isEqual:v13] && v10)
      {
        v14 = [(SFAirDropTransferItem *)self count];
        if (v14 == [(SFAirDropTransferItem *)v5 count])
        {
          v15 = [(SFAirDropTransferItem *)self isFile];
          v11 = v15 ^ [(SFAirDropTransferItem *)v5 isFile]^ 1;
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