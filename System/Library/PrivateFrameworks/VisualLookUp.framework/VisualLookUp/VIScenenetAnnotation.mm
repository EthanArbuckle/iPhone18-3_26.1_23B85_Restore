@interface VIScenenetAnnotation
- (BOOL)isEqual:(id)equal;
- (VIScenenetAnnotation)initWithAnnotations:(id)annotations revision:(unint64_t)revision;
@end

@implementation VIScenenetAnnotation

- (VIScenenetAnnotation)initWithAnnotations:(id)annotations revision:(unint64_t)revision
{
  annotationsCopy = annotations;
  v11.receiver = self;
  v11.super_class = VIScenenetAnnotation;
  v7 = [(VIScenenetAnnotation *)&v11 init];
  if (v7)
  {
    v8 = [annotationsCopy copy];
    annotations = v7->_annotations;
    v7->_annotations = v8;

    v7->_revision = revision;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
      annotations = [(VIScenenetAnnotation *)v6 annotations];
      IsEqual = VIObjectIsEqual(annotations, annotations);
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

@end