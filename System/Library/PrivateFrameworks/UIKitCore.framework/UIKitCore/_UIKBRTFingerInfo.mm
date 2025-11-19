@interface _UIKBRTFingerInfo
- (BOOL)isEqual:(id)a3;
- (CGPoint)location;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _UIKBRTFingerInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_UIKBRTFingerInfo);
  [(_UIKBRTFingerInfo *)v4 setLocation:self->_location.x, self->_location.y];
  [(_UIKBRTFingerInfo *)v4 setRadius:self->_radius];
  [(_UIKBRTFingerInfo *)v4 setIdentity:self->_identity];
  [(_UIKBRTFingerInfo *)v4 setUnknownSeen:self->_unknownSeen];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    v9 = (objc_opt_isKindOfClass() & 1) != 0 && (([(_UIKBRTFingerInfo *)v4 location], v6 == self->_location.x) ? (v7 = v5 == self->_location.y) : (v7 = 0), v7 && ([(_UIKBRTFingerInfo *)v4 radius], v8 == self->_radius)) && [(_UIKBRTFingerInfo *)v4 identity]== self->_identity;
  }

  return v9;
}

- (id)description
{
  if (qword_1ED499CA0 != -1)
  {
    dispatch_once(&qword_1ED499CA0, &__block_literal_global_172);
  }

  v3 = _MergedGlobals_9_6;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_identity];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_UIKBRTFingerID(%d)", self->_identity];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@: %p, location={%.1f, %.1f}, radius=%.1f, id=%@>", v8, self, *&self->_location.x, *&self->_location.y, *&self->_radius, v5];

  return v9;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end