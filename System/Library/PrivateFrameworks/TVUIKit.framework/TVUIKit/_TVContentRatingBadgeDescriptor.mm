@interface _TVContentRatingBadgeDescriptor
- (_TVContentRatingBadgeDescriptor)initWithResourceName:(id)a3 isTemplatedImage:(BOOL)a4;
@end

@implementation _TVContentRatingBadgeDescriptor

- (_TVContentRatingBadgeDescriptor)initWithResourceName:(id)a3 isTemplatedImage:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _TVContentRatingBadgeDescriptor;
  v7 = [(_TVContentRatingBadgeDescriptor *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    resourceName = v7->_resourceName;
    v7->_resourceName = v8;

    v7->_templatedImage = a4;
  }

  return v7;
}

@end