@interface SLDisambiguationCollectionViewAnimator
+ (id)init;
+ (id)springAnimation;
- (SLDisambiguationCollectionViewAnimator)initWithCoder:(id)coder;
- (UISpringTimingParameters)springTimingParameters;
- (id)commonInit;
@end

@implementation SLDisambiguationCollectionViewAnimator

+ (id)init
{
  v2 = [self alloc];
  commonInit = [v2 commonInit];

  return commonInit;
}

- (id)commonInit
{
  selfCopy = self;
  v3 = [(UIViewPropertyAnimator *)selfCopy initWithDuration:selfCopy timingParameters:0.3];

  return v3;
}

- (SLDisambiguationCollectionViewAnimator)initWithCoder:(id)coder
{
  commonInit = [(SLDisambiguationCollectionViewAnimator *)self commonInit];

  return commonInit;
}

- (UISpringTimingParameters)springTimingParameters
{
  springAnimation = [objc_opt_class() springAnimation];
  v3 = objc_alloc(MEMORY[0x277D75A60]);
  [springAnimation mass];
  v5 = v4;
  [springAnimation stiffness];
  v7 = v6;
  [springAnimation damping];
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