@interface _UIHyperpoint
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIHyperpoint)initWithCoder:(id)a3;
- (_UIHyperpoint)initWithDimensions:(unint64_t)a3;
- (_UIHyperpoint)initWithValue:(const double *)a3 dimensions:(unint64_t)a4;
- (_UIHyperpoint)initWithValue:(const double *)a3 objCType:(const char *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_copyValue:(const double *)a3;
- (void)_mutateValue:(id)a3;
- (void)dealloc;
@end

@implementation _UIHyperpoint

- (_UIHyperpoint)initWithValue:(const double *)a3 objCType:(const char *)a4
{
  sizep = 0;
  NSGetSizeAndAlignment(a4, &sizep, 0);
  return [(_UIHyperpoint *)self initWithValue:a3 dimensions:sizep >> 3];
}

- (_UIHyperpoint)initWithValue:(const double *)a3 dimensions:(unint64_t)a4
{
  v4 = [(_UIHyperpoint *)self initWithDimensions:a4];
  if (v4)
  {
    cblas_dcopy_NEWLAPACK();
  }

  return v4;
}

- (_UIHyperpoint)initWithDimensions:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = _UIHyperpoint;
  v4 = [(_UIHyperpoint *)&v6 init];
  if (v4)
  {
    v4->__value = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
    v4->__dimensions = a3;
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

- (void)_mutateValue:(id)a3
{
  v4 = a3;
  [(_UIHyperpoint *)self willChangeValueForKey:@"_value"];
  v4[2](v4, self->__value);

  [(_UIHyperpoint *)self didChangeValueForKey:@"_value"];
}

- (void)_copyValue:(const double *)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28___UIHyperpoint__copyValue___block_invoke;
  v3[3] = &unk_1E70F59D8;
  v3[4] = self;
  v3[5] = a3;
  [(_UIHyperpoint *)self _mutateValue:v3];
}

- (_UIHyperpoint)initWithCoder:(id)a3
{
  v7 = 0;
  v4 = [a3 _ui_decodeVectorForKey:@"_value" returnedCount:&v7];
  v5 = [(_UIHyperpoint *)self initWithDimensions:v7];
  [(_UIHyperpoint *)v5 _mutateValue:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIHyperpoint alloc];
  v5 = [(_UIHyperpoint *)self _value];
  v6 = [(_UIHyperpoint *)self _dimensions];

  return [(_UIHyperpoint *)v4 initWithValue:v5 dimensions:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UIHyperpoint *)self _dimensions];
    v7 = v6 == [v5 _dimensions] && memcmp(-[_UIHyperpoint _value](self, "_value"), objc_msgSend(v5, "_value"), 8 * -[_UIHyperpoint _dimensions](self, "_dimensions")) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end