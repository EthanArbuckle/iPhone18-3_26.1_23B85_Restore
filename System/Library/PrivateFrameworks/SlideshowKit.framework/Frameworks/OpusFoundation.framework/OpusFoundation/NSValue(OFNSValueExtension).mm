@interface NSValue(OFNSValueExtension)
+ (uint64_t)valueWithCLLocationCoordinate2D:()OFNSValueExtension;
+ (uint64_t)valueWithMKCoordinateRegion:()OFNSValueExtension;
- (double)CLLocationCoordinate2DValue;
- (double)MKCoordinateRegionValue;
@end

@implementation NSValue(OFNSValueExtension)

+ (uint64_t)valueWithCLLocationCoordinate2D:()OFNSValueExtension
{
  *v3 = a1;
  *&v3[1] = a2;
  return [MEMORY[0x277CCAE60] value:v3 withObjCType:"{CLLocationCoordinate2D=dd}"];
}

+ (uint64_t)valueWithMKCoordinateRegion:()OFNSValueExtension
{
  *v5 = a1;
  *&v5[1] = a2;
  *&v5[2] = a3;
  *&v5[3] = a4;
  return [MEMORY[0x277CCAE60] value:v5 withObjCType:"{?={CLLocationCoordinate2D=dd}{?=dd}}"];
}

- (double)CLLocationCoordinate2DValue
{
  v2 = *MEMORY[0x277CE4278];
  [a1 getValue:&v2 size:16];
  return *&v2;
}

- (double)MKCoordinateRegionValue
{
  v2 = *MEMORY[0x277CE4278];
  v3 = 0;
  v4 = 0;
  [a1 getValue:&v2 size:32];
  return *&v2;
}

@end