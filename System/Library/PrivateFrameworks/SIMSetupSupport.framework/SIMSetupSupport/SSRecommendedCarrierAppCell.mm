@interface SSRecommendedCarrierAppCell
+ (id)sharedLockupViewGroup;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (SSRecommendedCarrierAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_dummyArtwork;
- (id)_dummyLockup;
- (void)prepareForReuse;
- (void)setLockupRequest:(id)request withDelegate:(id)delegate;
@end

@implementation SSRecommendedCarrierAppCell

+ (id)sharedLockupViewGroup
{
  if (sharedLockupViewGroup_onceToken != -1)
  {
    +[SSRecommendedCarrierAppCell sharedLockupViewGroup];
  }

  v3 = sharedLockupViewGroup_group;

  return v3;
}

uint64_t __52__SSRecommendedCarrierAppCell_sharedLockupViewGroup__block_invoke()
{
  sharedLockupViewGroup_group = [objc_alloc(MEMORY[0x277CEC2A0]) initWithName:@"SimSetupSupport"];

  return MEMORY[0x2821F96F8]();
}

- (SSRecommendedCarrierAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = SSRecommendedCarrierAppCell;
  v4 = [(SSRecommendedCarrierAppCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(SSRecommendedCarrierAppCell *)v4 setBackgroundView:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SSRecommendedCarrierAppCell *)v5 setBackgroundColor:clearColor];

    v7 = objc_alloc(MEMORY[0x277CEC298]);
    contentView = [(SSRecommendedCarrierAppCell *)v5 contentView];
    [contentView bounds];
    v9 = [v7 initWithFrame:?];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    sharedLockupViewGroup = [objc_opt_class() sharedLockupViewGroup];
    [v9 setGroup:sharedLockupViewGroup];

    contentView2 = [(SSRecommendedCarrierAppCell *)v5 contentView];
    [contentView2 addSubview:v9];

    [(SSRecommendedCarrierAppCell *)v5 setLockupView:v9];
    v12 = MEMORY[0x277CCAAD0];
    contentView3 = [(SSRecommendedCarrierAppCell *)v5 contentView];
    LODWORD(v14) = 1148846080;
    v15 = [v9 _maps_constraintsEqualToEdgesOfView:contentView3 insets:10.0 priority:{16.0, 10.0, 16.0, v14}];
    allConstraints = [v15 allConstraints];
    [v12 activateConstraints:allConstraints];
  }

  return v5;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  v6 = [(SSRecommendedCarrierAppCell *)self lockupView:size.width];
  [v6 sizeThatFits:{width, 1.79769313e308}];
  v8 = v7;

  v9 = v8 + 20.0;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)prepareForReuse
{
  request = self->_request;
  self->_request = 0;

  [(ASCLockupView *)self->_lockupView setRequest:0];
  _dummyLockup = [(SSRecommendedCarrierAppCell *)self _dummyLockup];
  [(ASCLockupView *)self->_lockupView setLockup:_dummyLockup];

  [(ASCLockupView *)self->_lockupView setAutomaticallyPresentsProductDetails:0];
  v5.receiver = self;
  v5.super_class = SSRecommendedCarrierAppCell;
  [(SSRecommendedCarrierAppCell *)&v5 prepareForReuse];
}

- (void)setLockupRequest:(id)request withDelegate:(id)delegate
{
  requestCopy = request;
  if (requestCopy)
  {
    v9 = requestCopy;
    objc_storeStrong(&self->_request, request);
    delegateCopy = delegate;
    [(ASCLockupView *)self->_lockupView setRequest:self->_request];
    [(ASCLockupView *)self->_lockupView setAutomaticallyPresentsProductDetails:1];
    [(ASCLockupView *)self->_lockupView setDelegate:delegateCopy];

    requestCopy = v9;
  }
}

- (id)_dummyLockup
{
  v3 = objc_alloc(MEMORY[0x277CEC280]);
  v4 = [objc_alloc(MEMORY[0x277CEC258]) initWithInt64:0];
  v5 = *MEMORY[0x277CEC230];
  _dummyArtwork = [(SSRecommendedCarrierAppCell *)self _dummyArtwork];
  v7 = [v3 initWithID:v4 kind:v5 metrics:0 icon:_dummyArtwork heading:0 title:0 subtitle:0 ageRating:0 offer:0];

  return v7;
}

- (id)_dummyArtwork
{
  v2 = objc_alloc(MEMORY[0x277CEC268]);
  v3 = [v2 initWithURLTemplate:&stru_28753DF48 width:*MEMORY[0x277CEC1D0] height:*MEMORY[0x277CEC1C0] decoration:*MEMORY[0x277CEC1E0] preferredCrop:0.0 preferredFormat:0.0];

  return v3;
}

@end