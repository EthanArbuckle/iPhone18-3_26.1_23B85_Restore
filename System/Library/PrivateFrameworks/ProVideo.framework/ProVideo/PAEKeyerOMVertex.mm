@interface PAEKeyerOMVertex
- (PAEKeyerOMVertex)init;
- (PAEKeyerOMVertex)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setBx:(id)bx;
- (void)setBy:(id)by;
- (void)setLx:(id)lx;
- (void)setLy:(id)ly;
- (void)setMx:(id)mx;
- (void)setMy:(id)my;
- (void)setRx:(id)rx;
- (void)setRy:(id)ry;
@end

@implementation PAEKeyerOMVertex

- (PAEKeyerOMVertex)init
{
  v5.receiver = self;
  v5.super_class = PAEKeyerOMVertex;
  v2 = [(PAEKeyerOMVertex *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    v2->_lx = v3;
    v2->_mx = v3;
    v2->_rx = v3;
    v2->_bx = v3;
    v2->_ly = v3;
    v2->_my = v3;
    v2->_ry = v3;
    v2->_by = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PAEKeyerOMVertex;
  [(PAEKeyerOMVertex *)&v3 dealloc];
}

- (PAEKeyerOMVertex)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PAEKeyerOMVertex;
  v4 = [(PAEKeyerOMVertex *)&v6 init];
  if (v4)
  {
    -[PAEKeyerOMVertex setLx:](v4, "setLx:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"lx"]);
    -[PAEKeyerOMVertex setMx:](v4, "setMx:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"mx"]);
    -[PAEKeyerOMVertex setRx:](v4, "setRx:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"rx"]);
    -[PAEKeyerOMVertex setBx:](v4, "setBx:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"bx"]);
    -[PAEKeyerOMVertex setLy:](v4, "setLy:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"ly"]);
    -[PAEKeyerOMVertex setMy:](v4, "setMy:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"my"]);
    -[PAEKeyerOMVertex setRy:](v4, "setRy:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"ry"]);
    -[PAEKeyerOMVertex setBy:](v4, "setBy:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"by"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_lx forKey:@"lx"];
  [coder encodeObject:self->_mx forKey:@"mx"];
  [coder encodeObject:self->_rx forKey:@"rx"];
  [coder encodeObject:self->_bx forKey:@"bx"];
  [coder encodeObject:self->_ly forKey:@"ly"];
  [coder encodeObject:self->_my forKey:@"my"];
  [coder encodeObject:self->_ry forKey:@"ry"];
  by = self->_by;

  [coder encodeObject:by forKey:@"by"];
}

- (void)setLx:(id)lx
{
  lxCopy = lx;

  self->_lx = lx;
}

- (void)setMx:(id)mx
{
  mxCopy = mx;

  self->_mx = mx;
}

- (void)setRx:(id)rx
{
  rxCopy = rx;

  self->_rx = rx;
}

- (void)setBx:(id)bx
{
  bxCopy = bx;

  self->_bx = bx;
}

- (void)setLy:(id)ly
{
  lyCopy = ly;

  self->_ly = ly;
}

- (void)setMy:(id)my
{
  myCopy = my;

  self->_my = my;
}

- (void)setRy:(id)ry
{
  ryCopy = ry;

  self->_ry = ry;
}

- (void)setBy:(id)by
{
  byCopy = by;

  self->_by = by;
}

@end