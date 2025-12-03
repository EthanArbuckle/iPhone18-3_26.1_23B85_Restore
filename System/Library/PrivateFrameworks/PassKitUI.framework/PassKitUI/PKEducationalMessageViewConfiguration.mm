@interface PKEducationalMessageViewConfiguration
+ (id)defaultConfigurationForAnimation:(unint64_t)animation;
@end

@implementation PKEducationalMessageViewConfiguration

+ (id)defaultConfigurationForAnimation:(unint64_t)animation
{
  v4 = objc_alloc_init(PKEducationalMessageViewConfiguration);
  [(PKEducationalMessageViewConfiguration *)v4 setAnimation:animation];
  v5 = animation - 1;
  if (animation - 1 <= 4)
  {
    v6 = off_1E801C2A8[v5];
    v7 = PKLocalizedPaymentString(&off_1E801C280[v5]->isa);
    [(PKEducationalMessageViewConfiguration *)v4 setTitle:v7];

    v8 = PKLocalizedPaymentString(&v6->isa);
    [(PKEducationalMessageViewConfiguration *)v4 setMessage:v8];
  }

  return v4;
}

@end