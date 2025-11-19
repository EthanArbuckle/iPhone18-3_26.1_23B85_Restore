@interface VIScenenetAnnotation
- (BOOL)isEqual:(id)a3;
- (VIScenenetAnnotation)initWithAnnotations:(id)a3 revision:(unint64_t)a4;
@end

@implementation VIScenenetAnnotation

- (VIScenenetAnnotation)initWithAnnotations:(id)a3 revision:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = VIScenenetAnnotation;
  v7 = [(VIScenenetAnnotation *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    annotations = v7->_annotations;
    v7->_annotations = v8;

    v7->_revision = a4;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    revision = self->_revision;
    if (revision == [(VIScenenetAnnotation *)v6 revision])
    {
      annotations = self->_annotations;
      v9 = [(VIScenenetAnnotation *)v6 annotations];
      IsEqual = VIObjectIsEqual(annotations, v9);
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

@end