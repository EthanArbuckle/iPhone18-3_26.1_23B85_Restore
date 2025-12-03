@interface Multipart
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMultipart:(id)multipart;
- (id)copyWithIndex:(unsigned __int8)index;
@end

@implementation Multipart

- (BOOL)isEqualToMultipart:(id)multipart
{
  multipartCopy = multipart;
  v5 = multipartCopy[1] == self->identifier && *(multipartCopy + 17) == self->partCount && *(multipartCopy + 16) == self->partIndex;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(Multipart *)self isEqualToMultipart:equalCopy];

  return v5;
}

- (id)copyWithIndex:(unsigned __int8)index
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 1) = self->identifier;
  *(result + 16) = index;
  *(result + 17) = self->partCount;
  return result;
}

@end