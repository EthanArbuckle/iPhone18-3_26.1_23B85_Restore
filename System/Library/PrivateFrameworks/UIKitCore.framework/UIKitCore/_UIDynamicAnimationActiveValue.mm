@interface _UIDynamicAnimationActiveValue
+ (id)activeValue:(double)a3 ofType:(int)a4;
+ (id)lowerBoundary:(double)a3 ofType:(int)a4;
+ (id)upperBoundary:(double)a3 ofType:(int)a4;
- (_UIDynamicAnimationActiveValue)init;
- (id)_applier;
- (id)description;
- (void)_appendDescriptionToString:(id)a3 atLevel:(int)a4;
- (void)dealloc;
- (void)setMaximumActiveValue:(double)a3;
- (void)setMinimumActiveValue:(double)a3;
- (void)setType:(int)a3;
- (void)setValue:(double)a3;
@end

@implementation _UIDynamicAnimationActiveValue

+ (id)lowerBoundary:(double)a3 ofType:(int)a4
{
  result = [objc_opt_class() activeValue:*&a4 ofType:a3];
  *(result + 56) |= 1u;
  *(result + 3) = a3;
  return result;
}

+ (id)upperBoundary:(double)a3 ofType:(int)a4
{
  result = [objc_opt_class() activeValue:*&a4 ofType:a3];
  *(result + 56) |= 2u;
  *(result + 2) = a3;
  return result;
}

+ (id)activeValue:(double)a3 ofType:(int)a4
{
  v6 = objc_alloc_init(a1);
  if (v6)
  {
    v6[1] = a3;
    *(v6 + 8) = a4;
  }

  return v6;
}

- (_UIDynamicAnimationActiveValue)init
{
  v3.receiver = self;
  v3.super_class = _UIDynamicAnimationActiveValue;
  result = [(_UIDynamicAnimationActiveValue *)&v3 init];
  if (result)
  {
    *&result->_minimumActiveValue = xmmword_18A677A60;
    result->_type = 0;
    result->_boundaryPull = 0.12;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIDynamicAnimationActiveValue;
  [(_UIDynamicAnimationActiveValue *)&v3 dealloc];
}

- (id)_applier
{
  result = self->_applier;
  if (!result)
  {
    type = self->_type;
    if (type > 3)
    {
      return 0;
    }

    else
    {
      result = [*(&off_1E70F5E20 + type) copy];
      self->_applier = result;
    }
  }

  return result;
}

- (void)setValue:(double)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
    v3 = *(self + 56);
    if ((v3 & 2) != 0)
    {
      self->_minimumActiveValue = a3;
    }

    if (v3)
    {
      self->_maximumActiveValue = a3;
    }
  }
}

- (void)setMinimumActiveValue:(double)a3
{
  if ((*(self + 56) & 3) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"The minimum active value for a boundary is based on the target value and can not be changed"];
  }

  self->_minimumActiveValue = a3;
}

- (void)setMaximumActiveValue:(double)a3
{
  if ((*(self + 56) & 3) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"The maximum active value for a boundary is based on the target value and can not be changed"];
  }

  self->_maximumActiveValue = a3;
}

- (void)setType:(int)a3
{
  if (self->_type != a3)
  {
    [(_UIDynamicAnimationActiveValue *)self willChangeValueForKey:@"type"];
    self->_type = a3;

    self->_applier = 0;

    [(_UIDynamicAnimationActiveValue *)self didChangeValueForKey:@"type"];
  }
}

- (void)_appendDescriptionToString:(id)a3 atLevel:(int)a4
{
  v13 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([a3 length])
  {
    [a3 appendString:@"\n"];
  }

  if (a4)
  {
    v7 = 1;
    do
    {
      [a3 appendString:@"    "];
      ++v7;
    }

    while (v7 <= a4);
  }

  [a3 appendFormat:@"<%@: %p", objc_opt_class(), self];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  for (i = objc_opt_class(); [MEMORY[0x1E696AAE8] bundleForClass:i] != v8; i = objc_msgSend(i, "superclass"))
  {
    if (i == objc_opt_class())
    {
      break;
    }
  }

  if (objc_opt_class() != i)
  {
    [a3 appendFormat:@"; baseClass = %@", NSStringFromClass(i)];
  }

  type = self->_type;
  if (type > 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E70F5E40[type];
  }

  [a3 appendFormat:@"; type = %@", v11];
  [a3 appendFormat:@"; value = %f", *&self->_value];
  v12 = *(self + 56);
  if (v12)
  {
    [a3 appendString:@"; lower boundary"];
    v12 = *(self + 56);
  }

  if ((v12 & 2) != 0)
  {
    [a3 appendString:@"; upper boundary"];
  }

  if (self->_minimumActiveValue != -1.79769313e308 && (*(self + 56) & 2) == 0)
  {
    [a3 appendFormat:@"; min = %f", *&self->_minimumActiveValue];
  }

  if (self->_maximumActiveValue != 1.79769313e308 && (*(self + 56) & 1) == 0)
  {
    [a3 appendFormat:@"; min = %f", *&self->_maximumActiveValue];
  }

  if (self->_boundaryPull != 0.12)
  {
    [a3 appendFormat:@"; pull = %f", *&self->_boundaryPull];
  }

  [a3 appendFormat:@">"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(_UIDynamicAnimationActiveValue *)self _appendDescriptionToString:v3 atLevel:0];
  return v3;
}

@end