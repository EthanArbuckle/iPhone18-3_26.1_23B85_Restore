@interface TSDMutableReflection
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSDMutableReflection

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDReflection alloc];
  objc_msgSend_opacity(self, v5, v6);
  v8 = v7;
  objc_msgSend_fadeAcceleration(self, v9, v10);

  return objc_msgSend_initWithOpacity_fadeAcceleration_(v4, v11, v12, v8, v13);
}

@end