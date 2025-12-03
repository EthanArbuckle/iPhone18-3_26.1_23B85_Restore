@interface _UIBoxedAutoreleasePoolMark
- (_UIBoxedAutoreleasePoolMark)initWithAutoreleasePoolMark:(void *)mark;
@end

@implementation _UIBoxedAutoreleasePoolMark

- (_UIBoxedAutoreleasePoolMark)initWithAutoreleasePoolMark:(void *)mark
{
  v5.receiver = self;
  v5.super_class = _UIBoxedAutoreleasePoolMark;
  result = [(_UIBoxedAutoreleasePoolMark *)&v5 init];
  if (result)
  {
    result->_mark = mark;
  }

  return result;
}

@end