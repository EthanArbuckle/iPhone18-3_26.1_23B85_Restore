@interface _UIHyperpoint
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIHyperpoint)initWithCoder:(id)coder;
- (_UIHyperpoint)initWithDimensions:(unint64_t)dimensions;
- (_UIHyperpoint)initWithValue:(const double *)value dimensions:(unint64_t)dimensions;
- (_UIHyperpoint)initWithValue:(const double *)value objCType:(const char *)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_copyValue:(const double *)value;
- (void)_mutateValue:(id)value;
- (void)dealloc;
@end

@implementation _UIHyperpoint

- (_UIHyperpoint)initWithValue:(const double *)value objCType:(const char *)type
{
  sizep = 0;
  NSGetSizeAndAlignment(type, &sizep, 0);
  return [(_UIHyperpoint *)self initWithValue:value dimensions:sizep >> 3];
}

- (_UIHyperpoint)initWithValue:(const double *)value dimensions:(unint64_t)dimensions
{
  v4 = [(_UIHyperpoint *)self initWithDimensions:dimensions];
  if (v4)
  {
    cblas_dcopy_NEWLAPACK();
  }

  return v4;
}

- (_UIHyperpoint)initWithDimensions:(unint64_t)dimensions
{
  v6.receiver = self;
  v6.super_class = _UIHyperpoint;
  v4 = [(_UIHyperpoint *)&v6 init];
  if (v4)
  {
    v4->__value = malloc_type_calloc(dimensions, 8uLL, 0x100004000313F17uLL);
    v4->__dimensions = dimensions;
  }

  return v4;
}

- (void)dealloc
{
  free(self->__value);
  v3.receiver = self;
  v3.super_class = _UIHyperpoint;
  [(_UIHyperpoint *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = _UIVectorDescription(self->__value, self->__dimensions);
  v6 = [v3 stringWithFormat:@"<%@: %p value = %@>", v4, self, v5];;

  return v6;
}

- (void)_mutateValue:(id)value
{
  valueCopy = value;
  [(_UIHyperpoint *)self willChangeValueForKey:@"_value"];
  valueCopy[2](valueCopy, self->__value);

  [(_UIHyperpoint *)self didChangeValueForKey:@"_value"];
}

- (void)_copyValue:(const double *)value
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28___UIHyperpoint__copyValue___block_invoke;
  v3[3] = &unk_1E70F59D8;
  v3[4] = self;
  v3[5] = value;
  [(_UIHyperpoint *)self _mutateValue:v3];
}

- (_UIHyperpoint)initWithCoder:(id)coder
{
  v7 = 0;
  v4 = [coder _ui_decodeVectorForKey:@"_value" returnedCount:&v7];
  v5 = [(_UIHyperpoint *)self initWithDimensions:v7];
  [(_UIHyperpoint *)v5 _mutateValue:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIHyperpoint alloc];
  _value = [(_UIHyperpoint *)self _value];
  _dimensions = [(_UIHyperpoint *)self _dimensions];

  return [(_UIHyperpoint *)v4 initWithValue:_value dimensions:_dimensions];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIHyperpoint *)self _dimensions];
    v7 = _dimensions == [v5 _dimensions] && memcmp(-[_UIHyperpoint _value](self, "_value"), objc_msgSend(v5, "_value"), 8 * -[_UIHyperpoint _dimensions](self, "_dimensions")) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end