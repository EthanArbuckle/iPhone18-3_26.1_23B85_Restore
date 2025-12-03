@interface NSCoder
- (id)tsu_decodeColorSpaceForKey:(id)key;
- (void)tsu_encodeColorSpace:(CGColorSpace *)space forKey:(id)key;
@end

@implementation NSCoder

- (void)tsu_encodeColorSpace:(CGColorSpace *)space forKey:(id)key
{
  keyCopy = key;
  v8 = CGColorSpaceCopyPropertyList(space);
  v7 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:0];
  [(NSCoder *)self encodeObject:v7 forKey:keyCopy];
}

- (id)tsu_decodeColorSpaceForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSCoder *)self decodeObjectOfClass:objc_opt_class() forKey:keyCopy];

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