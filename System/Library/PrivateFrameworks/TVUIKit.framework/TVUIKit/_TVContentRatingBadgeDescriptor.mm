@interface _TVContentRatingBadgeDescriptor
- (_TVContentRatingBadgeDescriptor)initWithResourceName:(id)name isTemplatedImage:(BOOL)image;
@end

@implementation _TVContentRatingBadgeDescriptor

- (_TVContentRatingBadgeDescriptor)initWithResourceName:(id)name isTemplatedImage:(BOOL)image
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = _TVContentRatingBadgeDescriptor;
  v7 = [(_TVContentRatingBadgeDescriptor *)&v11 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    resourceName = v7->_resourceName;
    v7->_resourceName = v8;

    v7->_templatedImage = image;
  }

  return v7;
}

@end