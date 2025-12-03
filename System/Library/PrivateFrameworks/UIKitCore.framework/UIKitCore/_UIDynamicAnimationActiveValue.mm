@interface _UIDynamicAnimationActiveValue
+ (id)activeValue:(double)value ofType:(int)type;
+ (id)lowerBoundary:(double)boundary ofType:(int)type;
+ (id)upperBoundary:(double)boundary ofType:(int)type;
- (_UIDynamicAnimationActiveValue)init;
- (id)_applier;
- (id)description;
- (void)_appendDescriptionToString:(id)string atLevel:(int)level;
- (void)dealloc;
- (void)setMaximumActiveValue:(double)value;
- (void)setMinimumActiveValue:(double)value;
- (void)setType:(int)type;
- (void)setValue:(double)value;
@end

@implementation _UIDynamicAnimationActiveValue

+ (id)lowerBoundary:(double)boundary ofType:(int)type
{
  result = [objc_opt_class() activeValue:*&type ofType:boundary];
  *(result + 56) |= 1u;
  *(result + 3) = boundary;
  return result;
}

+ (id)upperBoundary:(double)boundary ofType:(int)type
{
  result = [objc_opt_class() activeValue:*&type ofType:boundary];
  *(result + 56) |= 2u;
  *(result + 2) = boundary;
  return result;
}

+ (id)activeValue:(double)value ofType:(int)type
{
  v6 = objc_alloc_init(self);
  if (v6)
  {
    v6[1] = value;
    *(v6 + 8) = type;
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

- (void)setValue:(double)value
{
  if (self->_value != value)
  {
    self->_value = value;
    v3 = *(self + 56);
    if ((v3 & 2) != 0)
    {
      self->_minimumActiveValue = value;
    }

    if (v3)
    {
      self->_maximumActiveValue = value;
    }
  }
}

- (void)setMinimumActiveValue:(double)value
{
  if ((*(self + 56) & 3) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"The minimum active value for a boundary is based on the target value and can not be changed"];
  }

  self->_minimumActiveValue = value;
}

- (void)setMaximumActiveValue:(double)value
{
  if ((*(self + 56) & 3) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"The maximum active value for a boundary is based on the target value and can not be changed"];
  }

  self->_maximumActiveValue = value;
}

- (void)setType:(int)type
{
  if (self->_type != type)
  {
    [(_UIDynamicAnimationActiveValue *)self willChangeValueForKey:@"type"];
    self->_type = type;

    self->_applier = 0;

    [(_UIDynamicAnimationActiveValue *)self didChangeValueForKey:@"type"];
  }
}

- (void)_appendDescriptionToString:(id)string atLevel:(int)level
{
  v13 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([string length])
  {
    [string appendString:@"\n"];
  }

  if (level)
  {
    v7 = 1;
    do
    {
      [string appendString:@"    "];
      ++v7;
    }

    while (v7 <= level);
  }

  [string appendFormat:@"<%@: %p", objc_opt_class(), self];
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
    [string appendFormat:@"; baseClass = %@", NSStringFromClass(i)];
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

  [string appendFormat:@"; type = %@", v11];
  [string appendFormat:@"; value = %f", *&self->_value];
  v12 = *(self + 56);
  if (v12)
  {
    [string appendString:@"; lower boundary"];
    v12 = *(self + 56);
  }

  if ((v12 & 2) != 0)
  {
    [string appendString:@"; upper boundary"];
  }

  if (self->_minimumActiveValue != -1.79769313e308 && (*(self + 56) & 2) == 0)
  {
    [string appendFormat:@"; min = %f", *&self->_minimumActiveValue];
  }

  if (self->_maximumActiveValue != 1.79769313e308 && (*(self + 56) & 1) == 0)
  {
    [string appendFormat:@"; min = %f", *&self->_maximumActiveValue];
  }

  if (self->_boundaryPull != 0.12)
  {
    [string appendFormat:@"; pull = %f", *&self->_boundaryPull];
  }

  [string appendFormat:@">"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [(_UIDynamicAnimationActiveValue *)self _appendDescriptionToString:string atLevel:0];
  return string;
}

@end