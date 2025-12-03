@interface VUIDurationValueTransformer
+ (void)initialize;
- (VUIDurationValueTransformer)init;
- (id)transformedValue:(id)value;
@end

@implementation VUIDurationValueTransformer

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = MEMORY[0x277CCAE68];
    v5 = objc_alloc_init(self);
    [v4 setValueTransformer:v5 forName:@"VUIDurationValueTransformer"];
  }
}

- (VUIDurationValueTransformer)init
{
  v8.receiver = self;
  v8.super_class = VUIDurationValueTransformer;
  v2 = [(VUIDurationValueTransformer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA958]);
    hoursMinutesFormatter = v2->_hoursMinutesFormatter;
    v2->_hoursMinutesFormatter = v3;

    [(NSDateComponentsFormatter *)v2->_hoursMinutesFormatter setUnitsStyle:2];
    [(NSDateComponentsFormatter *)v2->_hoursMinutesFormatter setAllowedUnits:96];
    v5 = objc_alloc_init(MEMORY[0x277CCA958]);
    secondsFormatter = v2->_secondsFormatter;
    v2->_secondsFormatter = v5;

    [(NSDateComponentsFormatter *)v2->_secondsFormatter setUnitsStyle:2];
    [(NSDateComponentsFormatter *)v2->_secondsFormatter setAllowedUnits:128];
  }

  return v2;
}

- (id)transformedValue:(id)value
{
  [value doubleValue];
  v5 = v4;
  if (v4 >= 60.0)
  {
    [(VUIDurationValueTransformer *)self hoursMinutesFormatter];
  }

  else
  {
    [(VUIDurationValueTransformer *)self secondsFormatter];
  }
  v6 = ;
  v7 = [v6 stringFromTimeInterval:v5];
  v8 = [v7 stringByReplacingOccurrencesOfString:@" withString:{", @" "}];

  return v8;
}

@end