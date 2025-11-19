@interface SLDisambiguationCollectionViewAnimator
+ (id)init;
+ (id)springAnimation;
- (SLDisambiguationCollectionViewAnimator)initWithCoder:(id)a3;
- (UISpringTimingParameters)springTimingParameters;
- (id)commonInit;
@end

@implementation SLDisambiguationCollectionViewAnimator

+ (id)init
{
  v2 = [a1 alloc];
  v3 = [v2 commonInit];

  return v3;
}

- (id)commonInit
{
  v2 = self;
  v3 = [(UIViewPropertyAnimator *)v2 initWithDuration:v2 timingParameters:0.3];

  return v3;
}

- (SLDisambiguationCollectionViewAnimator)initWithCoder:(id)a3
{
  v4 = [(SLDisambiguationCollectionViewAnimator *)self commonInit];

  return v4;
}

- (UISpringTimingParameters)springTimingParameters
{
  v2 = [objc_opt_class() springAnimation];
  v3 = objc_alloc(MEMORY[0x277D75A60]);
  [v2 mass];
  v5 = v4;
  [v2 stiffness];
  v7 = v6;
  [v2 damping];
  v9 = [v3 initWithMass:v5 stiffness:v7 damping:v8 initialVelocity:{10.0, 10.0}];

  return v9;
}

+ (id)springAnimation
{
  v2 = objc_alloc_init(MEMORY[0x277CD9FA0]);
  [v2 setStiffness:982.0];
  [v2 setDamping:46.0];

  return v2;
}

@end