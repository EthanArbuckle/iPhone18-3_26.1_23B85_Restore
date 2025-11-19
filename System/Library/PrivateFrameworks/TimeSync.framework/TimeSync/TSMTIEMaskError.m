@interface TSMTIEMaskError
- (id)description;
@end

@implementation TSMTIEMaskError

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSMTIEMaskError *)self observationInterval];
  v7 = v6;
  [(TSMTIEMaskError *)self mask];
  v9 = v8;
  [(TSMTIEMaskError *)self mtie];
  v11 = [v3 stringWithFormat:@"<%@: %p: {%.9f, %.9f, %0.9f}>", v5, self, v7, v9, v10];

  return v11;
}

@end