@interface NSString
- (id)vtkAssertName;
@end

@implementation NSString

- (id)vtkAssertName
{
  v2 = [(NSString *)self copy];

  return v2;
}

@end