@interface Multipart
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMultipart:(id)a3;
- (id)copyWithIndex:(unsigned __int8)a3;
@end

@implementation Multipart

- (BOOL)isEqualToMultipart:(id)a3
{
  v4 = a3;
  v5 = v4[1] == self->identifier && *(v4 + 17) == self->partCount && *(v4 + 16) == self->partIndex;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(Multipart *)self isEqualToMultipart:v4];

  return v5;
}

- (id)copyWithIndex:(unsigned __int8)a3
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 1) = self->identifier;
  *(result + 16) = a3;
  *(result + 17) = self->partCount;
  return result;
}

@end