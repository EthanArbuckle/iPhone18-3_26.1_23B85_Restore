@interface TMLTypes
+ (id)convertOffset:(UIOffset)a3;
+ (id)convertPoint:(CGPoint)a3;
+ (id)convertRange:(_NSRange)a3;
+ (id)convertRect:(CGRect)a3;
+ (id)convertSize:(CGSize)a3;
@end

@implementation TMLTypes

+ (id)convertSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [TMLValue alloc];
  v7 = objc_msgSend_valueWithCGSize_(MEMORY[0x277CCAE60], v6, width, height);
  v10 = objc_msgSend_initWithValue_valueType_(v5, v8, v9, v7, 8);
  v13 = objc_msgSend_convertTmlValue_(TMLJSEnvironment, v11, v12, v10);

  return v13;
}

+ (id)convertPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [TMLValue alloc];
  v7 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v6, x, y);
  v10 = objc_msgSend_initWithValue_valueType_(v5, v8, v9, v7, 10);
  v13 = objc_msgSend_convertTmlValue_(TMLJSEnvironment, v11, v12, v10);

  return v13;
}

+ (id)convertRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [TMLValue alloc];
  v8 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v6, v7, location, length);
  v11 = objc_msgSend_initWithValue_valueType_(v5, v9, v10, v8, 14);
  v14 = objc_msgSend_convertTmlValue_(TMLJSEnvironment, v12, v13, v11);

  return v14;
}

+ (id)convertRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [TMLValue alloc];
  v9 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v8, x, y, width, height);
  v12 = objc_msgSend_initWithValue_valueType_(v7, v10, v11, v9, 9);
  v15 = objc_msgSend_convertTmlValue_(TMLJSEnvironment, v13, v14, v12);

  return v15;
}

+ (id)convertOffset:(UIOffset)a3
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  v5 = [TMLValue alloc];
  v7 = objc_msgSend_valueWithUIOffset_(MEMORY[0x277CCAE60], v6, horizontal, vertical);
  v10 = objc_msgSend_initWithValue_valueType_(v5, v8, v9, v7, 29);
  v13 = objc_msgSend_convertTmlValue_(TMLJSEnvironment, v11, v12, v10);

  return v13;
}

@end