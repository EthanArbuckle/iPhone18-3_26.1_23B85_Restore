@interface TSDPropertySourceForModifyPrototypeChange
- (BOOL)containsProperty:(int)property;
- (TSDPropertySourceForModifyPrototypeChange)initWithPrototypeChange:(id)change afterChange:(BOOL)afterChange;
- (double)CGFloatValueForProperty:(int)property;
- (double)doubleValueForProperty:(int)property;
- (float)floatValueForProperty:(int)property;
- (id)boxedObjectForProperty:(int)property;
- (id)objectForProperty:(int)property;
- (id)p_propertyMap;
- (int)intValueForProperty:(int)property;
@end

@implementation TSDPropertySourceForModifyPrototypeChange

- (TSDPropertySourceForModifyPrototypeChange)initWithPrototypeChange:(id)change afterChange:(BOOL)afterChange
{
  v7.receiver = self;
  v7.super_class = TSDPropertySourceForModifyPrototypeChange;
  result = [(TSDPropertySourceForModifyPrototypeChange *)&v7 init];
  if (result)
  {
    result->mChange = change;
    result->mAfterChange = afterChange;
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

- (BOOL)containsProperty:(int)property
{
  v3 = *&property;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&property])
  {
    return 1;
  }

  prototype = [(TSDModifyPrototypeChange *)self->mChange prototype];

  return [prototype containsProperty:v3];
}

- (id)boxedObjectForProperty:(int)property
{
  v3 = *&property;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&property])
  {
    p_propertyMap = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    p_propertyMap = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  return [p_propertyMap boxedObjectForProperty:v3];
}

- (id)objectForProperty:(int)property
{
  v3 = *&property;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&property])
  {
    p_propertyMap = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    p_propertyMap = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  return [p_propertyMap objectForProperty:v3];
}

- (int)intValueForProperty:(int)property
{
  v3 = *&property;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&property])
  {
    p_propertyMap = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    p_propertyMap = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  return [p_propertyMap intValueForProperty:v3];
}

- (float)floatValueForProperty:(int)property
{
  v3 = *&property;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&property])
  {
    p_propertyMap = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    p_propertyMap = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  [p_propertyMap floatValueForProperty:v3];
  return result;
}

- (double)doubleValueForProperty:(int)property
{
  v3 = *&property;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&property])
  {
    p_propertyMap = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    p_propertyMap = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  [p_propertyMap doubleValueForProperty:v3];
  return result;
}

- (double)CGFloatValueForProperty:(int)property
{
  v3 = *&property;
  if ([(TSSPropertySet *)[(TSDModifyPrototypeChange *)self->mChange changedPropertySet] containsProperty:*&property])
  {
    p_propertyMap = [(TSDPropertySourceForModifyPrototypeChange *)self p_propertyMap];
  }

  else
  {
    p_propertyMap = [(TSDModifyPrototypeChange *)self->mChange prototype];
  }

  [p_propertyMap CGFloatValueForProperty:v3];
  return result;
}

@end