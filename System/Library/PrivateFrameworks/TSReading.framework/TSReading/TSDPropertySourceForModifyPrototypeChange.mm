@interface TSDPropertySourceForModifyPrototypeChange
- (BOOL)containsProperty:(int)a3;
- (TSDPropertySourceForModifyPrototypeChange)initWithPrototypeChange:(id)a3 afterChange:(BOOL)a4;
- (double)CGFloatValueForProperty:(int)a3;
- (double)doubleValueForProperty:(int)a3;
- (float)floatValueForProperty:(int)a3;
- (id)boxedObjectForProperty:(int)a3;
- (id)objectForProperty:(int)a3;
- (id)p_propertyMap;
- (int)intValueForProperty:(int)a3;
@end

@implementation TSDPropertySourceForModifyPrototypeChange

- (TSDPropertySourceForModifyPrototypeChange)initWithPrototypeChange:(id)a3 afterChange:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = TSDPropertySourceForModifyPrototypeChange;
  result = [(TSDPropertySourceForModifyPrototypeChange *)&v7 init];
  if (result)
  {
    result->mChange = a3;
    result->mAfterChange = a4;
  }

  return result;
}

- (id)p_propertyMap
{
  mAfterChange = self->mAfterChange;
  mChange = self->mChange;
  if (mAfterChange)
  {
    return [(TSDModifyPrototypeChange *)mChange changedPropertyMapAfterChange];
  }

  else
  {
    return [(TSDModifyPrototypeChange *)mChange changedPropertyMapBeforeChange];
  }
}

- (BOOL)containsProperty:(int)a3
{
  v3 = *&a3;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&a3])
  {
    return 1;
  }

  v6 = [(TSDModifyPrototypeChange *)self->mChange prototype];

  return [v6 containsProperty:v3];
}

- (id)boxedObjectForProperty:(int)a3
{
  v3 = *&a3;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&a3])
  {
    v5 = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    v5 = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  return [v5 boxedObjectForProperty:v3];
}

- (id)objectForProperty:(int)a3
{
  v3 = *&a3;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&a3])
  {
    v5 = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    v5 = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  return [v5 objectForProperty:v3];
}

- (int)intValueForProperty:(int)a3
{
  v3 = *&a3;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&a3])
  {
    v5 = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    v5 = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  return [v5 intValueForProperty:v3];
}

- (float)floatValueForProperty:(int)a3
{
  v3 = *&a3;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&a3])
  {
    v5 = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    v5 = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  [v5 floatValueForProperty:v3];
  return result;
}

- (double)doubleValueForProperty:(int)a3
{
  v3 = *&a3;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&a3])
  {
    v5 = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    v5 = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  [v5 doubleValueForProperty:v3];
  return result;
}

- (double)CGFloatValueForProperty:(int)a3
{
  v3 = *&a3;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&a3])
  {
    v5 = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    v5 = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  [v5 CGFloatValueForProperty:v3];
  return result;
}

@end