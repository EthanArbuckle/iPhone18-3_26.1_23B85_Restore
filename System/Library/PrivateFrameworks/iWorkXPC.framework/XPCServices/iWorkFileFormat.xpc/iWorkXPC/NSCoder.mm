@interface NSCoder
- (id)tsu_decodeColorSpaceForKey:(id)a3;
- (void)tsu_encodeColorSpace:(CGColorSpace *)a3 forKey:(id)a4;
@end

@implementation NSCoder

- (void)tsu_encodeColorSpace:(CGColorSpace *)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = CGColorSpaceCopyPropertyList(a3);
  v7 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:0];
  [(NSCoder *)self encodeObject:v7 forKey:v6];
}

- (id)tsu_decodeColorSpaceForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSCoder *)self decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:0];
    v7 = CGColorSpaceCreateWithPropertyList(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end