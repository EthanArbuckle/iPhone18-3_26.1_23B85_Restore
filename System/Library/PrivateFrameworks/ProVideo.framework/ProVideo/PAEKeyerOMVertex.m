@interface PAEKeyerOMVertex
- (PAEKeyerOMVertex)init;
- (PAEKeyerOMVertex)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setBx:(id)a3;
- (void)setBy:(id)a3;
- (void)setLx:(id)a3;
- (void)setLy:(id)a3;
- (void)setMx:(id)a3;
- (void)setMy:(id)a3;
- (void)setRx:(id)a3;
- (void)setRy:(id)a3;
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

- (PAEKeyerOMVertex)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PAEKeyerOMVertex;
  v4 = [(PAEKeyerOMVertex *)&v6 init];
  if (v4)
  {
    -[PAEKeyerOMVertex setLx:](v4, "setLx:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"lx"]);
    -[PAEKeyerOMVertex setMx:](v4, "setMx:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"mx"]);
    -[PAEKeyerOMVertex setRx:](v4, "setRx:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"rx"]);
    -[PAEKeyerOMVertex setBx:](v4, "setBx:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bx"]);
    -[PAEKeyerOMVertex setLy:](v4, "setLy:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"ly"]);
    -[PAEKeyerOMVertex setMy:](v4, "setMy:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"my"]);
    -[PAEKeyerOMVertex setRy:](v4, "setRy:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"ry"]);
    -[PAEKeyerOMVertex setBy:](v4, "setBy:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"by"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_lx forKey:@"lx"];
  [a3 encodeObject:self->_mx forKey:@"mx"];
  [a3 encodeObject:self->_rx forKey:@"rx"];
  [a3 encodeObject:self->_bx forKey:@"bx"];
  [a3 encodeObject:self->_ly forKey:@"ly"];
  [a3 encodeObject:self->_my forKey:@"my"];
  [a3 encodeObject:self->_ry forKey:@"ry"];
  by = self->_by;

  [a3 encodeObject:by forKey:@"by"];
}

- (void)setLx:(id)a3
{
  v5 = a3;

  self->_lx = a3;
}

- (void)setMx:(id)a3
{
  v5 = a3;

  self->_mx = a3;
}

- (void)setRx:(id)a3
{
  v5 = a3;

  self->_rx = a3;
}

- (void)setBx:(id)a3
{
  v5 = a3;

  self->_bx = a3;
}

- (void)setLy:(id)a3
{
  v5 = a3;

  self->_ly = a3;
}

- (void)setMy:(id)a3
{
  v5 = a3;

  self->_my = a3;
}

- (void)setRy:(id)a3
{
  v5 = a3;

  self->_ry = a3;
}

- (void)setBy:(id)a3
{
  v5 = a3;

  self->_by = a3;
}

@end